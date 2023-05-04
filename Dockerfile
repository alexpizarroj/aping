FROM python:3.7

WORKDIR /app
ADD . .
RUN pip install -e .

EXPOSE 80

CMD [ "/usr/local/bin/aping" ]
