FROM python:3

RUN python setup.py install

CMD orlo
