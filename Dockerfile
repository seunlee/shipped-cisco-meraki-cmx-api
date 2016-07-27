FROM ruby:latest
EXPOSE 4567
WORKDIR /app
COPY . /app

RUN chmod a+x .shipped/build .shipped/run .shipped/test

RUN [".shipped/build"]
CMD .shipped/run
