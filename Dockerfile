#FROM python
#COPY . /usr/app/
#EXPOSE 5000
#WORKDIR /usr/app/
#RUN pip install -r requirements.txt
#CMD python form_enduser.py


FROM python
WORKDIR /HR0217
COPY requirements.txt /HR0217
EXPOSE 5000
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt
COPY . /HR0217
ENTRYPOINT ["python3"]
CMD ["end_user.py"]
