[0.5.0]
* Initial version

[0.5.1]
* Update description and tagline

[0.6.0]
* Use ASGI gunicorn server to support websockets

[0.7.0]
* Install all OCR languages in the app image

[0.8.0]
* **Important**: This package now uses the [Paperless-ngx](https://github.com/paperless-ngx/paperless-ngx) project
* Update Paperless-ngx to 1.6.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/ngx-1.6.0)

[0.9.0]
* Update Paperless-ngx to 1.7.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/ngx-1.7.0)
* global drag'n'drop @shamoon (#283)
* Fix: download buttons should disable while waiting @shamoon (#630)
* Update checker @shamoon (#591)
* Show prompt on password-protected pdfs @shamoon (#564)
* Filtering query params aka browser navigation for filtering @shamoon (#540)
* Clickable tags in dashboard widgets @shamoon (#515)
* Add bottom pagination @shamoon (#372)
* Feature barcode splitter @gador (#532)
* App loading screen @shamoon (#298)
* Use progress bar for delayed buttons @shamoon (#415)
* Add minimum length for documents text filter @shamoon (#401)
* Added nav buttons in the document detail view @GruberViktor (#273)
* Improve date keyboard input @shamoon (#253)

[1.0.0]
* Update Paperless-ngx to 1.7.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.7.1)
* mobile friendlier manage pages @shamoon (#873)
* Use semver for release process @stumpylog (#851)
* Feature barcode tiff support @gador (#766)

[1.1.0]
* Update Paperless-ngx to 1.8.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.8.0)
* Feature use env vars in pre post scripts @ziprandom (#1154)
* frontend task queue @shamoon (#1020)
* Fearless scikit-learn updates @stumpylog (#1082)
* Adds support for Docker secrets @stumpylog (#1034)
* make frontend timezone un-aware @shamoon (#957)
* Change document thumbnails to WebP @stumpylog (#1127)
* Fork django-q to update dependencies @stumpylog (#1014)
* Fix: Rework query params logic @shamoon (#1000)
* Enhancement: show note on language change and offer reload @shamoon (#1030)
* Include error information when Redis connection fails @stumpylog (#1016)
* frontend settings saved to database @shamoon (#919)
* Add "Created" as additional (optional) parameter for post_documents @eingemaischt (#965)
* Convert Changelog to markdown, auto-commit future changelogs @qcasey (#935)
* allow all ASN filtering functions @shamoon (#920)
* gunicorn: Allow IPv6 sockets @vlcty (#924)
* initial app loading indicators @shamoon (#899)

[1.2.0]
* Update Paperless-ngx to 1.9.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.9.0)

[1.2.1]
* Update Paperless-ngx to 1.9.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.9.1)
* Bugfix: Fixes missing OCR mode skip noarchive @stumpylog (#1645)
* Fix reset button padding on small screens @shamoon (#1646)

[1.2.2]
* Update Paperless-ngx to 1.9.2
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.9.2)
* Bugfix: Allow `PAPERLESS_OCR_CLEAN=none`

[1.3.0]
* Update Paperless-ngx to 1.10.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.10.0)
* Feature: Capture stdout & stderr of the pre/post consume scripts @stumpylog (#1967)
* Feature: Allow running custom container initialization scripts @stumpylog (#1838)
* Feature: Add more file name formatting options @stumpylog (#1906)
* Feature: 1.9.2 UI tweaks @shamoon (#1886)
* Feature: Optional celery monitoring with Flower @stumpylog (#1810)
* Feature: Save pending tasks for frontend @stumpylog (#1816)
* Feature: Improved processing for automatic matching @stumpylog (#1609)
* Feature: Transition to celery for background tasks @stumpylog (#1648)
* Feature: UI Welcome Tour @shamoon (#1644)
* Feature: slim sidebar @shamoon (#1641)
* change default matching algo to auto and move to constant @NiFNi (#1754)
* Feature: Enable end to end Tika testing in CI @stumpylog (#1757)
* Feature: frontend update checking settings @shamoon (#1692)
* Feature: Upgrade to qpdf 11, pikepdf 6 & ocrmypdf 14 @stumpylog (#1642)

[1.3.1]
* Update Paperless-ngx to 1.10.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.10.1)
* Feature: Allows documents in WebP format @stumpylog (#1984)
* Fix: frontend tasks display in 1.10.0 @shamoon (#2073)
* Bugfix: Custom startup commands weren't run as root @stumpylog (#2069)
* Bugfix: Add libatomic for armv7 compatibility @stumpylog (#2066)
* Bugfix: Don't silence an exception when trying to handle file naming @stumpylog (#2062)
* Bugfix: Some tesseract languages aren't detected as installed. @stumpylog (#2057)

[1.3.2]
* Update Paperless-ngx to 1.10.2
* Update Cloudron base image to 4.0.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.10.2)
* Bugfix: Language code checks around two part languages @stumpylog (#2112)
* Bugfix: Redis socket compatibility didn't handle URLs with ports @stumpylog (#2109)
* Bugfix: Incompatible URL schemes for socket based Redis @stumpylog (#2092)
* Fix doc links in contributing @tooomm (#2102)

[1.4.0]
* Update Paperless-ngx to 1.11.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.11.0)
* Feature: frontend paperless mail @shamoon (#2000)
* Feature: Ability to consume mails and eml files @p-h-a-i-l (#848)
* Chore: Downgrade hiredis to 2.0.0 @stumpylog (#2262)
* Add ability to provide the configuration file path using an env variable @hashworks (#2241)
* Feature: Adds option to allow a user to export directly to a zipfile @stumpylog (#2004)
* Feature: Adds PaperlessTask admin page interface @stumpylog (#2184)
* Feature: speed up frontend by truncating content @shamoon (#2028)
* Feature: Allow bulk download API to follow file name formatting @stumpylog (#2003)
* Feature: Bake NLTK into Docker image @stumpylog (#2129)
* Feature: frontend paperless mail @shamoon (#2000)
* Feature: Ability to consume mails and eml files @p-h-a-i-l (#848)
* Bugfix: Handle RTL languages better @stumpylog (#1665)
* Fixed typo in docs @mendelk (#2256)
* Fix: support tags__id__none in advanced search, fix tags filter badge count for excluded @shamoon (#2205)
* Bugfix: Don't run system checks on migrate @stumpylog (#2183)
* Bugfix: Decoding task signals could fail on datetime type @stumpylog (#2058)

[1.5.0]
* Install nltk data

[1.5.1]
* Update Paperless-ngx to 1.11.3
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.11.3)
* Bugfix: Return created task ID when posting document to API @stumpylog (#2279)
* Bugfix: Fix no content when processing some RTL files @stumpylog (#2295)
* Bugfix: Handle email dates maybe being naive @stumpylog (#2293)
* Fix: live filterable dropdowns broken in 1.11.x @shamoon (#2292)
* Bugfix: Reading environment from files didn't work for management commands @stumpylog (#2261)
* Bugfix: Return created task ID when posting document to API @stumpylog (#2279)

[1.5.2]
* Update Paperless-ngx to 1.12.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.12.1)
* Fix: comments not showing in search until after manual reindex in v1.12 @shamoon (#2513)
* Fix: date range search broken in 1.12 @shamoon (#2509)

[1.5.3]
* Update Paperless-ngx to 1.12.2
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.12.2)
* Bugfix: Allow pre-consume scripts to modify incoming file @stumpylog (#2547)
* Bugfix: Return to page based barcode scanning @stumpylog (#2544)
* Fix: Try to prevent title debounce overwriting @shamoon (#2543)
* Fix comment search highlight + multi-word search @shamoon (#2542)
* Bugfix: Request PDF/A format from Gotenberg @stumpylog (#2530)
* Fix: Trigger reindex for pre-existing comments @shamoon (#2519)

[1.5.4]
* Fix NLTK data pth

[1.6.0]
* Update Paperless-ngx to 1.13.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.13.0)
* Feature: allow disable warn on close saved view with changes @shamoon (#2681)
* Feature: Add option to enable response compression @stumpylog (#2621)
* Feature: split documents on ASN barcode @muued (#2554)
* Fix: Ignore path filtering didn't handle sub directories @stumpylog (#2674)
* Bugfix: Generation of secret key hangs during install script @stumpylog (#2657)
* Fix: Remove files produced by barcode splitting when completed @stumpylog (#2648)
* Fix: add missing storage path placeholders @shamoon (#2651)
* Fix long dropdown contents break document detail column view @shamoon (#2638)
* Fix: tags dropdown should stay closed when removing @shamoon (#2625)
* Bugfix: Configure scheduled tasks to expire after some time @stumpylog (#2614)
* Bugfix: Limit management list pagination maxSize to 5 @Kaaybi (#2618)
* Fix: Don't crash on bad ASNs during indexing @stumpylog (#2586)
* Fix: Prevent mktime OverflowError except in even more rare caes @stumpylog (#2574)
* Bugfix: Whoosh relative date queries weren't handling timezones @stumpylog (#2566)
* Fix importing files with non-ascii names @Kexogg (#2555)

[1.7.0]
* Update Paperless-ngx to 1.14.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.0)
* Feature: multi-user permissions @shamoon (#2147)
* Feature: Stronger typing for file consumption @stumpylog (#2744)
* Feature: double-click docs @shamoon (#2966)
* feature: Add support for zxing as barcode scanning lib @margau (#2907)
* Feature: Enable images to be released on Quay.io @stumpylog (#2972)
* Feature: test mail account @shamoon (#2949)
* Feature: Capture celery and kombu logs to a file @stumpylog (#2954)
* Fix: Resolve Redis connection issues with ACLs @stumpylog (#2939)
* Feature: Allow mail account to use access tokens @stumpylog (#2930)
* Fix: Consumer polling could overwhelm database @stumpylog (#2922)
* Feature: Improved statistics widget @shamoon (#2910)
* Enhancement: rename comments to notes and improve notes UI @shamoon (#2904)
* Allow psql client certificate authentication @Ongy (#2899)
* Enhancement: support filtering multiple correspondents, doctypes & storage paths @shamoon (#2893)

[1.7.1]
* Update Paperless-ngx to 1.14.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.1)
* Fix: reduce frequency of permissions queries to speed up v1.14.0 @shamoon (#3201)
* Fix: permissions-aware statistics @shamoon (#3199)
* Fix: Use document owner for matching if set @shamoon (#3198)
* Fix: respect permissions on document view actions @shamoon (#3174)
* Increment API version for 1.14.1+ @shamoon (#3191)
* Fix: dropdown Private items with empty set @shamoon (#3189)
* Documentation: add gnu-sed note for macOS @shamoon (#3190)

[1.7.2]
* Update Paperless-ngx to 1.14.2
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.2)
* Feature: Finnish translation @shamoon (#3215)
* Fix: Load saved views from app frame, not dashboard @shamoon (#3211)
* Fix: advanced search or date searching + doc type/correspondent/storage path broken @shamoon (#3209)
* Fix MixedContentTypeError in `add_inbox_tags` handler @e1mo (#3212)

[1.7.3]
* Update Paperless-ngx to 1.14.3
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.3)
* Enhancement: better keyboard nav for filter/edit dropdowns @shamoon (#3227)
* Bump filelock from 3.10.2 to 3.12.0 to fix permissions bug @rbrownwsws (#3282)
* Fix: Handle cases where media files aren't all in the same filesystem @stumpylog (#3261)
* Fix: Prevent erroneous warning when starting container @stumpylog (#3262)
* Retain doc changes on tab switch after refresh doc @shamoon (#3243)
* Fix: Don't send Gmail related setting if the server doesn't support it @stumpylog (#3240)
* Fix: close all docs on logout @shamoon (#3232)
* Fix: Respect superuser for advanced queries, test coverage for object perms @shamoon (#3222)
* Fix: ALLOWED_HOSTS logic being overwritten when * is set @ikaruswill (#3218)

[1.7.4]
* Update Paperless-ngx to 1.14.4
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.4)
* Fix: Inversion in tagged mail searching @stumpylog (#3305)
* Fix dynamic count labels hidden in light mode @shamoon (#3303)

[1.7.5]
* Update Paperless-ngx to 1.14.5
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.14.5)
* Fix: respect permissions for autocomplete suggestions @shamoon (#3359)
* Feature: owner filtering @shamoon (#3309)
* Enhancement: dynamic counts include all pages, hide for "Any" @shamoon (#3329)
* Chore: Upgrades Python dependencies to their latest allowed versions @stumpylog (#3365)
* Enhancement: save tour completion, hide welcome widget @shamoon (#3321)
* Fix: Adds better handling for files with invalid utf8 content @stumpylog (#3387)
* Fix: respect permissions for autocomplete suggestions @shamoon (#3359)
* Fix: Transition to new library for finding IPs for failed logins @stumpylog (#3382)
* [Security] Render frontend text as plain text @shamoon (#3366)
* Fix: default frontend to current owner, allow setting no owner on create @shamoon (#3347)
* Fix: dont perform mail actions when rule filename filter not met @shamoon (#3336)
* Fix: permission-aware bulk editing in 1.14.1+ @shamoon (#3345)

[1.8.0]
* Update Paperless-ngx to 1.15.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.15.0)
* Feature: quick filters from document detail @shamoon (#3476)
* Feature: Add explanations to relative dates @shamoon (#3471)
* Enhancement: paginate frontend tasks @shamoon (#3445)
* Feature: Better encapsulation of barcode logic @stumpylog (#3425)
* Enhancement: Improve frontend error handling @shamoon (#3413)

[1.9.0]
* Update Paperless-ngx to 1.16.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.0)
* Feature: Update to a simpler Tika library @stumpylog (#3517)
* Feature: Allow to filter documents by original filename and checksum @jayme-github (#3485)
* Fix: return user first / last name from backend @shamoon (#3579)
* Fix use of `PAPERLESS_DB_TIMEOUT` for all db types @shamoon (#3576)
* Fix: handle mail rules with no filters on some imap servers @shamoon (#3554)

[1.9.1]
* Update Paperless-ngx to 1.16.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.1)
* Chore: Enable the image cleanup action @stumpylog (#3606)

[1.9.2]
* Update Paperless-ngx to 1.16.2
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.2)
* Fix: Increase httpx operation timeouts to 30s @stumpylog (#3627)
* Fix: Better error handling and checking when parsing documents via Tika @stumpylog (#3617)

[1.9.3]
* Update Paperless-ngx to 1.16.3
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.3)
* Fix: Set user and home environment through supervisord @stumpylog (#3638)
* Fix: Ignore errors when trying to copy the original file's stats @stumpylog (#3652)
* Copy default thumbnail if thumbnail generation fails @plu (#3632)
* Fix: Set user and home environment through supervisord @stumpylog (#3638)
* Fix: Fix quick install with external database not being fully ready @stumpylog (#3637)

[1.9.4]
* Update Paperless-ngx to 1.16.4
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.4)
* Fix: prevent button wrapping when sidebar narrows in MS Edge @shamoon (#3682)
* Fix: Handling for filenames with non-ascii and no content attribute @stumpylog (#3695)
* Fix: Generation of thumbnails for existing stored emails @stumpylog (#3696)
* Fix: Use row gap for filter editor @kleinweby (#3662)

[1.9.5]
* Update Paperless-ngx to 1.16.5
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.16.5)
* Feature: support barcode upscaling for better detection of small barcodes @bmachek (#3655)
* Fix: owner removed when `set_permissions` passed on object create @shamoon (#3702)

[1.10.0]
* Update Paperless-ngx to 1.17.0
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.17.0)
* Add support for additional UK date formats @brainrecursion (#3887)
* Add 'doc_pk' to PAPERLESS_FILENAME_FORMAT handling @mechanarchy (#3861)
* Feature: hover buttons for saved view widgets @shamoon (#3875)
* Feature: collate two single-sided multipage scans @brakhane (#3784)
* Feature: include global and object-level permissions in export / import @shamoon (#3672)
* Enhancement / Fix: Migrate encrypted png thumbnails to webp @shamoon (#3719)
* Feature: Add Slovak translation @shamoon (#3722)
* Fix: cancel possibly slow queries on doc details @shamoon (#3925)
* Fix: note creation / deletion should respect doc permissions @shamoon (#3903)
* Fix: notes show persistent scrollbars @shamoon (#3904)
* Fix: Provide SSL context to IMAP client @stumpylog (#3886)
* Fix/enhancement: permissions for mail rules & accounts @shamoon (#3869)
* Fix: Classifier special case when no items are set to automatic matching @stumpylog (#3858)
* Fix: issues with copy2 or copystat and SELinux permissions @stumpylog (#3847)
* Fix: Parsing office document timestamps @stumpylog (#3836)
* Fix: Add warning to install script need for permissions @shamoon (#3835)
* Fix interaction between API and barcode archive serial number @stumpylog (#3834)
* Enhancement / Fix: Migrate encrypted png thumbnails to webp @shamoon (#3719)
* Fix: add UI tour step padding @hakimio (#3791)
* Fix: translate file tasks types in footer @shamoon (#3749)
* Fix: limit ng-select size for addition of filter button @shamoon (#3731)

[1.10.1]
* Update Paperless-ngx to 1.17.1
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.17.1)
* Fix / Enhancement: restrict status messages by owner if set & improve 404 page @shamoon (#3959)
* Feature: Add Ukrainian translation @shamoon (#3941)

[1.10.2]
* Update Paperless-ngx to 1.17.2
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.17.2)
* Enhancement: Allow to set a prefix for keys and channels in redis @amo13 (#3993)
* Fix: Increase the HTTP timeouts for Tika/Gotenberg to maximum task time @stumpylog (#4061)
* Fix: Allow adding an SSL certificate for IMAP SSL context @stumpylog (#4048)
* Fix: tag creation sometimes retained search text @shamoon (#4038)
* Fix: enforce permissions on `bulk_edit` operations @shamoon (#4007)

[1.10.3]
* Update Paperless-ngx to 1.17.3
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.17.3)
* Fix: When PDF/A rendering fails, add a consideration for the user to add args to override @stumpylog (#4083)

[1.10.4]
* Update Paperless-ngx to 1.17.4
* [Full changelog](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v1.17.4)
* Fix: ghostscript rendering error doesnt trigger frontend failure message @shamoon (#4092)

[1.11.0]
* Update base image to 4.2.0

