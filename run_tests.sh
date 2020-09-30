
# Fast Resnet angleproto in vctk
echo "Fast Resnet angleproto in VCTK"
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc angleproto --save_path data/test --eval_frames 300 --test_list ../veri_vctk_not_header.csv --test_path ../  --initial_model angleproto_Fast-Resnet-43.model



# Fast Resnet angleproto in common voice pt
echo "Fast Resnet angleproto in common voice pt"
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc angleproto --save_path data/test --eval_frames 300 --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_pt-common_voice-16khz.csv --test_path ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model angleproto_Fast-Resnet-43.model 


echo "Fast Resnet angleproto in common voice es"
# Fast Resnet angleproto in common voice es
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc angleproto --save_path data/test --eval_frames 300 --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_es-common_voice-16khz.csv --test_path  ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model angleproto_Fast-Resnet-43.model 


echo "Fast Resnet angleproto in common voice chines"
# Fast Resnet angleproto in common voice chines
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc angleproto --save_path data/test --eval_frames 300 --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_chines-common_voice-16khz.csv --test_path ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model angleproto_Fast-Resnet-43.model 


# Fast Resnet  ge2e in vctk
echo "Fast Resnet GE2E in VCTK"
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc ge2e --save_path data/test --eval_frames 400 --nPerSpeaker 2 --batch_size 400 --test_list ../veri_vctk_not_header.csv --test_path ../  --initial_model GE2E_Fast-Resnet-34-M3.model

# Fast Resnet GE2E in common voice pt
echo "Fast Resnet GE2E in common voice pt"
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc ge2e --save_path data/test --eval_frames 400 --nPerSpeaker 2 --batch_size 400 --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_pt-common_voice-16khz.csv --test_path ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model GE2E_Fast-Resnet-34-M3.model


echo "Fast Resnet GE2E in common voice es"
# Fast Resnet GE2E in common voice es
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc ge2e --save_path data/test --eval_frames 400 --nPerSpeaker 2 --batch_size 400  --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_es-common_voice-16khz.csv --test_path  ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model GE2E_Fast-Resnet-34-M3.model


echo "Fast Resnet GE2E in common voice chines"
# Fast Resnet GE2E in common voice chines
python ./trainSpeakerNet.py --eval --model ResNetSE34L --trainfunc ge2e --save_path data/test --eval_frames 400 --nPerSpeaker 2 --batch_size 400 --test_list ../Common_Voice/cv-corpus-5.1-2020-06-22/veri_chines-common_voice-16khz.csv --test_path ../Common_Voice/cv-corpus-5.1-2020-06-22/  --initial_model GE2E_Fast-Resnet-34-M3.model


