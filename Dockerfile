FROM cloudron/base:4.2.0@sha256:46da2fffb36353ef714f97ae8e962bd2c212ca091108d768ba473078319a47f4

RUN mkdir -p /app/code /app/pkg
WORKDIR /app/code

# https://github.com/paperless-ngx/paperless-ngx/blob/main/docs/setup.rst#bare-metal-route
RUN apt-get update && \
    apt-get install -y fonts-liberation optipng gnupg libpoppler-cpp-dev libmagic-dev unpaper ghostscript icc-profiles-free qpdf liblept5 pngquant tesseract-ocr tesseract-ocr-all python3-setuptools python3-wheel libxml2 zlib1g libzbar0 poppler-utils mime-support libpq-dev && \
    apt-get clean && \
    rm -r /var/cache/apt /var/lib/apt/lists

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

ARG VERSION=1.17.4

RUN curl -L https://github.com/paperless-ngx/paperless-ngx/releases/download/v${VERSION}/paperless-ngx-v${VERSION}.tar.xz | tar -xJ -C /app/code/ --strip-components 1 -f -

RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt --no-cache-dir --ignore-installed pyyaml
RUN python3 ./src/manage.py collectstatic --clear --no-input && \
    python3 ./src/manage.py compilemessages
# https://github.com/paperless-ngx/paperless-ngx/blob/f9ce4d8f6a9086d21f7f9c5411a28dd8b0b7135e/Dockerfile#L233
# https://github.com/paperless-ngx/paperless-ngx/blob/454264a87f59a354546f487eba258cb01a364b55/src/paperless/settings.py#L181
RUN python3 -W ignore::RuntimeWarning -m nltk.downloader -d "/usr/share/nltk_data" snowball_data \
    && python3 -W ignore::RuntimeWarning -m nltk.downloader -d "/usr/share/nltk_data" stopwords \
    && python3 -W ignore::RuntimeWarning -m nltk.downloader -d "/usr/share/nltk_data" punkt

RUN rm -rf /app/code/data && ln -sf /app/data/data /app/code/data && \
    rm -rf /app/code/media && ln -sf /app/data/media /app/code/media && \
    rm -rf /app/code/consume && ln -sf /app/data/consume /app/code/consume && \
    ln -sf /app/data/paperless.conf /app/code/paperless.conf

ADD policy.xml /etc/ImageMagick-6

RUN sed -e 's,^logfile=.*$,logfile=/run/supervisord.log,' -i /etc/supervisor/supervisord.conf
ADD supervisor/* /etc/supervisor/conf.d/

ADD paperless.conf.setup start.sh /app/pkg/

CMD [ "/app/pkg/start.sh" ]
