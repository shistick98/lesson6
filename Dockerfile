FROM python

WORKDIR /src

COPY ./requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt

COPY ./ /src/

ENV FLASK_APP program.py
CMD flask run -h 0.0.0.0 
