FROM python:3


RUN python3 -m pip install --upgrade pandas

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN python3 -m pip install --upgrade pandas
RUN python -m pip install -U matplotlib

COPY . .