FROM nvcr.io/nvidia/pytorch:21.05-py3


COPY requirements.txt .
COPY lint-requirements.txt . 
RUN pip3 install -r requirements.txt
