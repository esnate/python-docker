FROM python:3.10-slim-buster 
#Create app directory 
WORKDIR /app
# Install app dependencies
COPY ./requirements.txt /app/requirements.txt 
RUN pip install -r requirements.txt
#Bundle app source
COPY . .
EXPOSE 5000
CMD ["flask", "run", "--host","0.0.0.0","--port","5000"]