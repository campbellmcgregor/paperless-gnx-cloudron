#!/usr/bin/env node

/* jshint esversion: 8 */
/* global describe */
/* global before */
/* global after */
/* global it */

'use strict';

require('chromedriver');

const execSync = require('child_process').execSync,
    expect = require('expect.js'),
    fs = require('fs'),
    path = require('path'),
    { Builder, By, Key, until } = require('selenium-webdriver'),
    { Options } = require('selenium-webdriver/chrome');

describe('Application life cycle test', function () {
    this.timeout(0);

    const LOCATION = 'test';
    const TEST_TIMEOUT = 10000;
    const EXEC_ARGS = { cwd: path.resolve(__dirname, '..'), stdio: 'inherit' };

    const username = 'admin';
    const password = 'changeme123';

    var browser, app;

    before(function () {
        const options = new Options().windowSize({ width: 1280, height: 1024 });
        if (process.env.HEADLESS) options.addArguments('headless');

        browser = new Builder().forBrowser('chrome').setChromeOptions(options).build();
    });

    after(function () {
        browser.quit();
    });

    function getAppInfo() {
        var inspect = JSON.parse(execSync('cloudron inspect'));
        app = inspect.apps.filter(function (a) { return a.location === LOCATION || a.location === LOCATION + '2'; })[0];
        expect(app).to.be.an('object');
    }

    async function waitForElement(elem) {
        await browser.wait(until.elementLocated(elem), TEST_TIMEOUT);
        await browser.wait(until.elementIsVisible(browser.findElement(elem)), TEST_TIMEOUT);
    }

    async function login() {
        await browser.get(`https://${app.fqdn}/accounts/login/?next=/`);

        await waitForElement(By.xpath('//input[@name="username"]'));
        await browser.findElement(By.xpath('//input[@name="username"]')).sendKeys(username);
        await browser.findElement(By.xpath('//input[@name="password"]')).sendKeys(password);
        await browser.findElement(By.xpath('//button[@type="submit"]')).click();
        await waitForElement(By.xpath(`//span[contains(text(),"${username}")]`));
    }

    async function uploadDocument() {
        execSync(`cloudron push --app ${app.id} ./pdf-sample.pdf /app/data/consume/pdf-sample.pdf`);

        // Need to wait for consumer to consume sample PDF
        console.log('Sleeping for 60 seconds to allow consuming of document'); // cron runs every minute
        await browser.sleep(60000);
    }

    async function documentExists() {
        await browser.get(`https://${app.fqdn}/documents`);
        await waitForElement(By.xpath('//p[contains(text(), "pdf-sample")]'));
    }

    xit('can build app', function () { execSync('cloudron build', EXEC_ARGS); });
    it('can install app', function () { execSync(`cloudron install --location ${LOCATION}`, EXEC_ARGS); });

    it('can get app information', getAppInfo);

    it('can login', login);
    it('can upload document', uploadDocument);
    it('document exists', documentExists);

    it('restart app', function() { execSync('cloudron restart --app ' + app.id); });

    it('document exists', documentExists);

    it('backup app', function () { execSync('cloudron backup create --app ' + app.id, EXEC_ARGS); });
    it('restore app', function () { execSync('cloudron restore --app ' + app.id, EXEC_ARGS); });

    it('document exists', documentExists);

    it('move to different location', async function () {
        execSync(`cloudron configure --location ${LOCATION}2 --app ${app.id}`, EXEC_ARGS);
    });
    it('can get app information', getAppInfo);
    it('can login', login);
    it('document exists', documentExists);

    it('uninstall app', function () { execSync('cloudron uninstall --app ' + app.id, EXEC_ARGS); });

    // test update
    it('can install app', function () { execSync(`cloudron install --appstore-id com.paperlessng.cloudronapp --location ${LOCATION}`, EXEC_ARGS); });

    it('can get app information', getAppInfo);

    it('can login', login);
    it('can upload document', uploadDocument);
    it('document exists', documentExists);

    it('can update', function () { execSync(`cloudron update --app ${app.id}`, EXEC_ARGS); });

    it('can login', login);
    it('document exists', documentExists);

    it('uninstall app', async function () {
        await browser.get('about:blank');
        execSync(`cloudron uninstall --app ${app.id}`, EXEC_ARGS);
    });

});
