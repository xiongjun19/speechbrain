# coding=utf8

from speechbrain.pretrained import EncoderDecoderASR
asr_model = EncoderDecoderASR.from_hparams(source="ddwkim/asr-conformer-transformerlm-ksponspeech", savedir="pretrained_models/asr-conformer-transformerlm-ksponspeech",  run_opts={"device":"cuda"})
asr_model.transcribe_file("ddwkim/asr-conformer-transformerlm-ksponspeech/record_0_16k.wav") 
