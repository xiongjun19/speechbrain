docker image build -t test_sb:0.1 . -f Dockerfile
docker run --gpus all -p 8896:8896 --name cont_sb --ipc=host 
	-it -v /home/ubuntu/code/speechbrain/:/workspace/sb test_sb:0.1

docker start cont_sb
docker exec -it cont_sb /bin/bash

# 进入/worksapce/sb
pip install --editable .
