FROM python:alpine3.7
WORKDIR  /usr/src/app
COPY ./ /usr/src/app/work/
RUN cd work && pip install -r requirements.txt
ENV PORT 5000
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
