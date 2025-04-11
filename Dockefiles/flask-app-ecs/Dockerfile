#stage 1 docker build using Heavy base image for installing poackages ,libraries ,modules etc
FROM python:3.7 AS builder
# setting up workdirectory for apllication code files
WORKDIR /app
# copy all requirements.txt file into /app
COPY requirements.txt .
# installing requirements in a custom path /app/deps->---------
RUN pip install --no-cache-dir --target=/app/deps -r requirements.txt



#--------------------

# stage-2 in this we copy all installed packages into working directory and simply run the application 

# will use only slim image to run the application  and copy installed requirements from previous stage build

FROM python:3.7-slim

WORKDIR /app

# will need to copy installed requirements from BUILDER TO THIS STAVE

# ------------------------------

# default path for library storing will need to check through  bash in containber where it is storing libraries

# ------------------------------

# COPY --from=builder /usr/local/lib/python3.7/site-packages/ /usr/local/lib/python3.7/site-packages/

# ------------------------------

# defining custom path for libraries installing and pass that path into this stage
COPY --from=builder /app/deps /app/deps

COPY . .

ENV PYTHONPATH="/app/deps"

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD ["run.py"]


