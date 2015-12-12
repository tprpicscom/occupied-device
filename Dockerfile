FROM resin/rpi-raspbian:wheezy-2015-02-08

# Install Python.
RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y python wget build-essential python-dev python-pip

RUN pip install RPi.Gpio requests python-firebase twilio 

#tpr added
RUN pip install 'requests[security]'

ADD . /app

CMD ["python", "/app/init.py"]