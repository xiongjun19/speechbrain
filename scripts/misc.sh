# 将TIMIT里面的文件全部转换为小写，这里假设TIMI数据地址为 recipes/TIMIT/data/TIMIT
cd recipes/TIMIT/data
python ../ASR/transducer/change_name.py -i TIMIT -e RIRS_NOISES

# 训练TIMIT
cd recipes/TIMIT/ASR/transducer
python train.py hparams/train.yaml
