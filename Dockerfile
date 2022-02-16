FROM nvcr.io/nvidia/pytorch:21.05-py3


COPY requirements_dk.txt .
COPY lint-requirements.txt . 
RUN pip3 install -r requirements_dk.txt
RUN pip3 install torchaudio==0.9.0
RUN pip3 install --ignore-installed ruamel.yaml==0.17.8
