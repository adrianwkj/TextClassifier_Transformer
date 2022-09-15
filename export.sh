#!/bin/bash
#description: BERT fine-tuning

export BERT_BASE_DIR=/home/peter/Downloads/chinese_bert_wwm_L-12_H-768_A-12
export DATA_DIR=./dat
export TRAINED_CLASSIFIER=./output
export MODEL_NAME=text_classification_bert_wwm

python3 run_classifier_serving.py --task_name=setiment --do_train=False --do_eval=False --do_predict=True --data_dir=$DATA_DIR --vocab_file=$BERT_BASE_DIR/vocab.txt --bert_config_file=$BERT_BASE_DIR/bert_config.json --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt --max_seq_length=128 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=1.0 --output_dir=$TRAINED_CLASSIFIER/$MODEL_NAME --do_export=True --export_dir=exported