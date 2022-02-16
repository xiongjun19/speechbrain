FROM nvcr.io/nvidia/pytorch:21.05-py3


RUN pip3 uninstall -y  torchtext
RUN pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
RUN pip3 install --ignore-installed ruamel.yaml==0.17.8

COPY requirements_dk.txt .
COPY lint-requirements.txt . 
RUN pip3 install -r requirements_dk.txt
