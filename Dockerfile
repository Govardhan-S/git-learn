# set a base image
FROM python:3.11-slim

# set a workdir
WORKDIR /app

# copy flask file
COPY . .

RUN pip install -r requirements.txt

RUN echo pip list

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

EXPOSE 5000

