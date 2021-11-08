FROM python:3.9
RUN  mkdir WORK_REPO
RUN  mkdir WORK_REPO/data
RUN  cd  WORK_REPO
WORKDIR  /WORK_REPO
ADD test.py .
CMD ["python3", "test.py"]