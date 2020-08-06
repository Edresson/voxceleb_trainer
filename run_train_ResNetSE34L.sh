# python ./trainSpeakerNet.py --model ResNetSE34L --encoder SAP --trainfunc angleproto --save_path data/exp1-with-model --nPerSpeaker 5 --batch_size 200 --train_list ../../dataset/Speech2Phone-dataset-40-speakers/metada.csv  --test_list ../../dataset/Speech2Phone-dataset-40-speakers/metada.csv --train_path ../../dataset/Speech2Phone-dataset-40-speakers/preprocessed --test_path ../../dataset/Speech2Phone-dataset-40-speakers/preprocessed


python ./trainSpeakerNet.py --model ResNetSE34L --encoder SAP --trainfunc angleproto --save_path data/16khz-ResNetSE34L --nPerSpeaker 2 --batch_size 20 --train_list ../../dataset/Speech2Phone-dataset-40-speakers/metada-16k.csv --test_list ../veri_voxceleb.txt  --train_path ../../dataset/Speech2Phone-dataset-40-speakers/ --test_path ../wav/

