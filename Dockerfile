FROM php:5-cli

WORKDIR .
#ADD . .




RUN docker-php-ext-install mbstring
RUN apt-get update && apt-get -qqy install wget wkhtmltopdf xvfb
RUN wget https://github.com/there4/markdown-resume/raw/master/bin/md2resume && chmod +x md2resume


# on alpine static compiled patched qt headless wkhtmltopdf (47.2 MB)
# compilation takes 4 hours on EC2 m1.large in 2016 thats why binary
#COPY wkhtmltopdf /bin

#ENTRYPOINT [/usr/bin/md2resume]