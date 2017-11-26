.PHONY: clean data lint requirements product_info big_sample big_sample_vgg16_vecs big_sample_resnet50_vecs \
	test_vgg16_vecs train_vgg16_vecs test_resnet50_vecs train_resnet50_vecs category_indexes top_2000_sample top_3000_sample \
	vgg16_head_top_2000_v1 vgg16_head_top_2000_v2 vgg16_head_top_2000_v3 vgg16_head_top_2000_v4 vgg16_head_top_2000_v5 \
	vgg16_head_top_2000_v6 vgg16_head_top_2000_v7 vgg16_head_top_2000_v8 vgg16_head_top_2000_v9 vgg16_head_top_2000_v10 \
	vgg16_head_top_2000_v11 vgg16_head_top_2000_v12 vgg16_head_top_2000_v13 vgg16_head_top_2000_v14 vgg16_head_top_2000_v15 \
	vgg16_head_top_2000_v16 vgg16_head_top_2000_v17 vgg16_head_top_2000_v18 vgg16_head_top_2000_v19 vgg16_head_top_2000_v20 \
	vgg16_head_top_3000_v1 vgg16_head_top_3000_v2 vgg16_head_top_3000_v3 vgg16_head_full_v1 vgg16_head_full_v2 \
	vgg16_head_full_v3 ensemble_nn_vgg16_v1 ensemble_nn_vgg16_v3 ensemble_fixed_V1 ensemble_fixed_V2 ensemble_fixed_V3 \
	ensemble_fixed_V4 ensemble_fixed_V5 resnet50_head_top_2000_v1 resnet50_head_top_2000_v2 resnet50_head_top_2000_v3 \
	resnet50_head_top_2000_v4 resnet50_head_top_2000_v5 resnet50_head_top_2000_v6 resnet50_head_top_2000_v7 \
	resnet50_head_top_2000_v8 resnet50_head_top_2000_v9 resnet50_head_top_2000_v10 resnet50_head_top_2000_v11 ensemble_fixed_V8 \
	ensemble_nn_heng_v1 ensemble_nn_vgg16_resnet50_v1 ensemble_fixed_V9 \
	resnet50_head_top_2000_img_idx_v1 resnet50_head_top_2000_img_idx_v2 resnet50_head_top_2000_img_idx_v3 \
	resnet50_head_top_2000_img_idx_v4 resnet50_head_top_2000_img_idx_v5 resnet50_head_top_2000_img_idx_v6 \
	resnet50_head_top_3000_img_idx_v1 resnet50_head_top_3000_img_idx_v2 resnet50_head_full_img_idx_v1 \
	resnet50_head_full_img_idx_v2 resnet50_head_top_2000_avg_v1 resnet50_head_top_2000_avg_v2 \
	vgg16_head_top_2000_v1_test vgg16_head_top_2000_v2_test vgg16_head_top_2000_v3_test vgg16_head_top_2000_v4_test \
	vgg16_head_top_2000_v6_test vgg16_head_top_2000_v7_test vgg16_head_top_2000_v8_test vgg16_head_top_2000_v9_test \
	vgg16_head_top_2000_v10_test vgg16_head_top_2000_v12_test vgg16_head_top_2000_v13_test vgg16_head_top_2000_v14_test \
	vgg16_head_top_2000_v18_test vgg16_head_top_2000_v20_test vgg16_head_top_3000_v1_test vgg16_head_top_3000_v3_test \
	vgg16_head_full_v1_test vgg16_head_full_v3_test resnet50_head_top_2000_v7_test resnet50_head_top_2000_v8_test \
	resnet50_head_top_2000_v9_test resnet50_head_top_2000_v10_test resnet50_head_top_2000_v11_test resnet50_head_top_3000_v2_test \
	resnet50_head_full_v2_test heng_inception3_test heng_seinception3_test ensemble_nn_vgg16_v1_test \
	ensemble_nn_vgg16_v3_test heng_xception_test heng_resnet101_test ensemble_nn_heng_v1_test ensemble_nn_vgg16_resnet50_v1_test \
	vgg16_head_top_2000_v1_valid vgg16_head_top_2000_v2_valid vgg16_head_top_2000_v3_valid vgg16_head_top_2000_v4_valid \
	vgg16_head_top_2000_v6_valid vgg16_head_top_2000_v7_valid vgg16_head_top_2000_v8_valid vgg16_head_top_2000_v9_valid \
	vgg16_head_top_2000_v10_valid vgg16_head_top_2000_v12_valid vgg16_head_top_2000_v13_valid vgg16_head_top_2000_v14_valid \
	vgg16_head_top_2000_v18_valid vgg16_head_top_2000_v20_valid vgg16_head_top_3000_v1_valid vgg16_head_top_3000_v3_valid \
	vgg16_head_full_v1_valid vgg16_head_full_v3_valid resnet50_head_top_2000_v7_valid resnet50_head_top_2000_v8_valid \
	resnet50_head_top_2000_v9_valid resnet50_head_top_2000_v10_valid resnet50_head_top_2000_v11_valid resnet50_head_top_3000_v2_valid \
	resnet50_head_full_v2_valid heng_inception3_valid heng_seinception3_valid heng_xception_valid heng_resnet101_valid \
	vgg16_head_top_2000_v18_submission heng_inception3_submission vgg16_head_full_v1_submission ensemble_nn_vgg16_v1_submission \
	ensemble_nn_vgg16_v3_submission ensemble_fixed_V1_submission ensemble_fixed_V2_submission ensemble_fixed_V3_submission \
	ensemble_fixed_V4_submission ensemble_nn_vgg16_v3_mul_submission ensemble_nn_vgg16_v3_sum_submission \
	ensemble_fixed_V5_sum_submission ensemble_fixed_V8_sum_submission ensemble_fixed_V9_sum_submission


#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = kaggle-cdiscount-image-classification
PYTHON_INTERPRETER = python3
include .env

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Install Python Dependencies
requirements: test_environment
	pipenv install

## Delete all compiled Python files
clean:
	find . -name "*.pyc" -exec rm {} \;

## Lint using flake8
lint:
	flake8 --exclude=lib/,bin/,docs/conf.py .

## Test python environment is setup correctly
test_environment:
	$(PYTHON_INTERPRETER) test_environment.py

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################


## Run through dataset and compile csv with products information
product_info: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/test_product_info.csv

${DATA_INTERIM}/train_product_info.csv:
	pipenv run $(PYTHON_INTERPRETER) src/data/product_info.py --bson ${TRAIN_BSON} \
		--output_file ${DATA_INTERIM}/train_product_info.csv

${DATA_INTERIM}/test_product_info.csv:
	pipenv run $(PYTHON_INTERPRETER) src/data/product_info.py --bson ${TEST_BSON} \
		--without_categories --output_file ${DATA_INTERIM}/test_product_info.csv

## Create stratified sample with 200000 products
big_sample: ${DATA_INTERIM}/big_sample_product_info.csv

${DATA_INTERIM}/big_sample_product_info.csv: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) src/data/big_sample.py --prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_file ${DATA_INTERIM}/big_sample_product_info.csv

## Precompute VGG16 vectors for big sample
big_sample_vgg16_vecs: ${DATA_INTERIM}/big_sample_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.vgg16_vecs --bson ${TRAIN_BSON} \
		--prod_info_csv ${DATA_INTERIM}/big_sample_product_info.csv \
		--output_dir ${DATA_INTERIM}/big_sample_vgg16_vecs \
		--save_step 100000 \
		--only_first_image

## Precompute ResNet50 vectors for big sample
big_sample_resnet50_vecs: ${DATA_INTERIM}/big_sample_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.resnet50_vecs --bson ${TRAIN_BSON} \
		--prod_info_csv ${DATA_INTERIM}/big_sample_product_info.csv \
		--output_dir ${DATA_INTERIM}/big_sample_resnet50_vecs \
		--save_step 100000 \
		--only_first_image

## Precompute VGG16 vectors for test dataset
test_vgg16_vecs: ${DATA_INTERIM}/test_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.vgg16_vecs --bson ${TEST_BSON} \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--output_dir ${TEST_VGG16_VECS_PATH} \
		--save_step 100000

## Precompute VGG16 vectors for train dataset
train_vgg16_vecs: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.vgg16_vecs --bson ${TRAIN_BSON} \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_dir ${TRAIN_VGG16_VECS_PATH} \
		--save_step 100000 \
		--shuffle 123

## Precompute ResNet50 vectors for test dataset
test_resnet50_vecs: ${DATA_INTERIM}/test_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.resnet50_vecs --bson ${TEST_BSON} \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--output_dir ${TEST_RESNET50_VECS_PATH} \
		--save_step 100000

## Precompute ResNet50 vectors for train dataset
train_resnet50_vecs: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.resnet50_vecs --bson ${TRAIN_BSON} \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_dir ${TRAIN_RESNET50_VECS_PATH} \
		--save_step 100000 \
		--shuffle 123

## Transform ResNet50 train vectors from bcolz to memmap
train_resnet50_to_memmap: ${TRAIN_RESNET50_VECS_PATH}
	 pipenv run $(PYTHON_INTERPRETER) -m src.model.bcolz_to_memmap \
	    --bcolz_path ${TRAIN_RESNET50_VECS_PATH} \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH}

## Transform ResNet50 test vectors from bcolz to memmap
test_resnet50_to_memmap: ${TEST_RESNET50_VECS_PATH}
	 pipenv run $(PYTHON_INTERPRETER) -m src.model.bcolz_to_memmap \
	    --bcolz_path ${TEST_RESNET50_VECS_PATH} \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH}

## Transform VGG16 train vectors from bcolz to memmap
train_vgg16_to_memmap: ${TRAIN_VGG16_VECS_PATH}
	 pipenv run $(PYTHON_INTERPRETER) -m src.model.bcolz_to_memmap \
	    --bcolz_path ${TRAIN_VGG16_VECS_PATH} \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH}

## Transform VGG16 test vectors from bcolz to memmap
test_vgg16_to_memmap: ${TEST_VGG16_VECS_PATH}
	 pipenv run $(PYTHON_INTERPRETER) -m src.model.bcolz_to_memmap \
	    --bcolz_path ${TEST_VGG16_VECS_PATH} \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH}

## Create category indexes
category_indexes: ${DATA_INTERIM}/category_idx.csv

${DATA_INTERIM}/category_idx.csv: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.data.category_idx --prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_file ${DATA_INTERIM}/category_idx.csv

## Create top 2000 categories sample
top_2000_sample: ${DATA_INTERIM}/top_2000_sample_product_info.csv

${DATA_INTERIM}/top_2000_sample_product_info.csv: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.data.top_categories_sample \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_file ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--num_categories 2000

## Create top 3000 categories sample
top_3000_sample: ${DATA_INTERIM}/top_3000_sample_product_info.csv

${DATA_INTERIM}/top_3000_sample_product_info.csv: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.data.top_categories_sample \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_file ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--num_categories 3000

${DATA_INTERIM}/train_split.csv: ${DATA_INTERIM}/train_product_info.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.data.train_split \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--output_file ${DATA_INTERIM}/train_split.csv

## Train head dense layer of VGG16 on top 2000 categories V1
vgg16_head_top_2000_v1: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 0

## Predict head dense layer of VGG16 on top 2000 categories V1
vgg16_head_top_2000_v1_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v1 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V1
vgg16_head_top_2000_v1_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v1 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V1
vgg16_head_top_2000_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v1 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V1
vgg16_head_top_2000_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v1 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V2
vgg16_head_top_2000_v2: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v2 \
		--batch_size 250 \
		--lr 0.0001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 0

## Predict head dense layer of VGG16 on top 2000 categories V2
vgg16_head_top_2000_v2_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v2 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V2
vgg16_head_top_2000_v2_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V2
vgg16_head_top_2000_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V2
vgg16_head_top_2000_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v2 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V3
vgg16_head_top_2000_v3: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v3 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 1

## Predict head dense layer of VGG16 on top 2000 categories V3
vgg16_head_top_2000_v3_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v3 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V3
vgg16_head_top_2000_v3_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V3
vgg16_head_top_2000_v3_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V3
vgg16_head_top_2000_v3_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v3 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V4
vgg16_head_top_2000_v4: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v4 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 2

## Predict head dense layer of VGG16 on top 2000 categories V4
vgg16_head_top_2000_v4_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v4 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V4
vgg16_head_top_2000_v4_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v4 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V4
vgg16_head_top_2000_v4_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v4 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V4
vgg16_head_top_2000_v4_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v4 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V5
vgg16_head_top_2000_v5: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v5 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 3

## Train head dense layer of VGG16 on top 2000 categories V6
vgg16_head_top_2000_v6: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v6 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 4

## Predict head dense layer of VGG16 on top 2000 categories V6
vgg16_head_top_2000_v6_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v6 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V6
vgg16_head_top_2000_v6_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v6 \
		--batch_size 250 \
		--shuffle 123

## Train head dense layer of VGG16 on top 2000 categories V7
vgg16_head_top_2000_v7: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v7 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 5

## Predict head dense layer of VGG16 on top 2000 categories V7
vgg16_head_top_2000_v7_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v7 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V7
vgg16_head_top_2000_v7_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v7 \
		--batch_size 250 \
		--shuffle 123

## Train head dense layer of VGG16 on top 2000 categories V8
vgg16_head_top_2000_v8: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v8 \
		--batch_size 250 \
		--lr 0.01 \
		--epochs 3 \
		--shuffle 123 \
		--mode 6

## Predict head dense layer of VGG16 on top 2000 categories V8
vgg16_head_top_2000_v8_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v8 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V8
vgg16_head_top_2000_v8_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v8 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V8
vgg16_head_top_2000_v8_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v8 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V8
vgg16_head_top_2000_v8_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v8 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V9
vgg16_head_top_2000_v9: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v9 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 7

## Predict head dense layer of VGG16 on top 2000 categories V9
vgg16_head_top_2000_v9_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v9 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V9
vgg16_head_top_2000_v9_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v9 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V9
vgg16_head_top_2000_v9_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v9 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V9
vgg16_head_top_2000_v9_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v9 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V10
vgg16_head_top_2000_v10: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v10 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 8 \
		--batch_seed 518

## Predict head dense layer of VGG16 on top 2000 categories V10
vgg16_head_top_2000_v10_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v10 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V10
vgg16_head_top_2000_v10_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v10 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V10
vgg16_head_top_2000_v10_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v10 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V10
vgg16_head_top_2000_v10_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v10 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V11
vgg16_head_top_2000_v11: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v11 \
		--batch_size 64 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 2 \
		--batch_seed 438

## Train head dense layer of VGG16 on top 2000 categories V12
vgg16_head_top_2000_v12: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v12 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 9 \
		--batch_seed 817

## Predict head dense layer of VGG16 on top 2000 categories V12
vgg16_head_top_2000_v12_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v12 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V12
vgg16_head_top_2000_v12_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v12 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V12
vgg16_head_top_2000_v12_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v12 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V12
vgg16_head_top_2000_v12_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v12 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V13
vgg16_head_top_2000_v13: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v13 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 10 \
		--batch_seed 818

## Predict head dense layer of VGG16 on top 2000 categories V13
vgg16_head_top_2000_v13_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v13 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V13
vgg16_head_top_2000_v13_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v13 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V13
vgg16_head_top_2000_v13_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v13 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V13
vgg16_head_top_2000_v13_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v13 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V14
vgg16_head_top_2000_v14: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v14 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 11 \
		--batch_seed 819

## Predict head dense layer of VGG16 on top 2000 categories V14
vgg16_head_top_2000_v14_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v14 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V14
vgg16_head_top_2000_v14_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v14 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V14
vgg16_head_top_2000_v14_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v14 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V14
vgg16_head_top_2000_v14_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v14 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V15
vgg16_head_top_2000_v15: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v15 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 820

## Train head dense layer of VGG16 on top 2000 categories V16
vgg16_head_top_2000_v16: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v16 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 7 \
		--shuffle 123 \
		--mode 13 \
		--batch_seed 821

## Train head dense layer of VGG16 on top 2000 categories V17
vgg16_head_top_2000_v17: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v17 \
		--batch_size 500 \
		--lr 0.01 \
		--epochs 3 \
		--shuffle 123 \
		--mode 10 \
		--batch_seed 822

## Train head dense layer of VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_top_2000_v15/model.h5
	mkdir models/vgg16_head_top_2000_v18 ; \
	cp models/vgg16_head_top_2000_v15/model.h5 models/vgg16_head_top_2000_v18 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v18 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 23476

## Predict head dense layer of VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v18 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v18 \
		--batch_size 250 \
		--shuffle 123

## Form submission for VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18_submission: data/processed/vgg16_head_top_2000_v18_submission.csv

data/processed/vgg16_head_top_2000_v18_submission.csv: models/vgg16_head_top_2000_v18/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/vgg16_head_top_2000_v18/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/vgg16_head_top_2000_v18_submission.csv

## Predict valid head dense layer of VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v18 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V18
vgg16_head_top_2000_v18_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v18 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V19
vgg16_head_top_2000_v19: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v19 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 14 \
		--batch_seed 7490

## Train head dense layer of VGG16 on top 2000 categories V20
vgg16_head_top_2000_v20: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_top_2000_v19/model.h5
	mkdir models/vgg16_head_top_2000_v20 ; \
	cp models/vgg16_head_top_2000_v19/model.h5 models/vgg16_head_top_2000_v20 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v20 \
		--batch_size 500 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 14 \
		--batch_seed 123751

## Predict head dense layer of VGG16 on top 2000 categories V20
vgg16_head_top_2000_v20_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v20 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 2000 categories V20
vgg16_head_top_2000_v20_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v20 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 2000 categories V20
vgg16_head_top_2000_v20_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v20 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 2000 categories V20
vgg16_head_top_2000_v20_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v20 \
		--batch_size 250

## Train head dense layer of VGG16 on top 2000 categories V21
vgg16_head_top_2000_v21: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v21 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66790 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on top 2000 categories V21
vgg16_head_top_2000_v21_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v21 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on top 2000 categories V21
vgg16_head_top_2000_v21_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v21 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of VGG16 on top 2000 categories V22
vgg16_head_top_2000_v22: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_top_2000_v21/model.h5
	mkdir models/vgg16_head_top_2000_v22 ; \
	cp models/vgg16_head_top_2000_v21/model.h5 models/vgg16_head_top_2000_v22 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v22 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66791 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on top 2000 categories V22
vgg16_head_top_2000_v22_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v22 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on top 2000 categories V22
vgg16_head_top_2000_v22_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_2000_v22 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of VGG16 on top 3000 categories V1
vgg16_head_top_3000_v1: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 10 \
		--batch_seed 812

## Predict head dense layer of VGG16 on top 3000 categories V1
vgg16_head_top_3000_v1_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v1 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 3000 categories V1
vgg16_head_top_3000_v1_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v1 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 3000 categories V1
vgg16_head_top_3000_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v1 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 3000 categories V1
vgg16_head_top_3000_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v1 \
		--batch_size 250

## Train head dense layer of VGG16 on top 3000 categories V2
vgg16_head_top_3000_v2: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v2 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 8183

## Train head dense layer of VGG16 on top 3000 categories V3
vgg16_head_top_3000_v3: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_top_3000_v2/model.h5
	mkdir models/vgg16_head_top_3000_v3 ; \
	cp models/vgg16_head_top_3000_v2/model.h5 models/vgg16_head_top_3000_v3 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v3 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 8184

## Predict head dense layer of VGG16 on top 3000 categories V3
vgg16_head_top_3000_v3_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v3 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on top 3000 categories V3
vgg16_head_top_3000_v3_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on top 3000 categories V3
vgg16_head_top_3000_v3_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on top 3000 categories V3
vgg16_head_top_3000_v3_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v3 \
		--batch_size 250

## Train head dense layer of VGG16 on top 3000 categories V4
vgg16_head_top_3000_v4: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v4 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66785 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on top 3000 categories V4
vgg16_head_top_3000_v4_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v4 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on top 3000 categories V4
vgg16_head_top_3000_v4_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v4 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of VGG16 on top 3000 categories V5
vgg16_head_top_3000_v5: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_top_3000_v4/model.h5
	mkdir models/vgg16_head_top_3000_v5 ; \
	cp models/vgg16_head_top_3000_v4/model.h5 models/vgg16_head_top_3000_v5 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v5 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66786 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on top 3000 categories V5
vgg16_head_top_3000_v5_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v5 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on top 3000 categories V5
vgg16_head_top_3000_v5_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_top_3000_v5 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of VGG16 on all categories V1
vgg16_head_full_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 10 \
		--batch_seed 814

## Predict head dense layer of VGG16 on all categories V1
vgg16_head_full_v1_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v1 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on all categories V1
vgg16_head_full_v1_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v1 \
		--batch_size 250 \
		--shuffle 123

## Form submission for VGG16 on all categories V1
vgg16_head_full_v1_submission: data/processed/vgg16_head_full_v1_submission.csv

data/processed/vgg16_head_full_v1_submission.csv: models/vgg16_head_full_v1/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/vgg16_head_full_v1/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/vgg16_head_full_v1_submission.csv

## Predict valid head dense layer of VGG16 on all categories V1
vgg16_head_full_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v1 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on all categories V1
vgg16_head_full_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v1 \
		--batch_size 250

## Train head dense layer of VGG16 on all categories V2
vgg16_head_full_v2: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v2 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 6671

## Train head dense layer of VGG16 on all categories V3
vgg16_head_full_v3: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_full_v2/model.h5
	mkdir models/vgg16_head_full_v3 ; \
	cp models/vgg16_head_full_v2/model.h5 models/vgg16_head_full_v3 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --fit \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v3 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 12 \
		--batch_seed 6672

## Predict head dense layer of VGG16 on all categories V3
vgg16_head_full_v3_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict \
		--bcolz_root ${TEST_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v3 \
		--batch_size 250

## Predict valid head dense layer of VGG16 on all categories V3
vgg16_head_full_v3_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_vecs --predict_valid \
		--bcolz_root ${TRAIN_VGG16_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of VGG16 on all categories V3
vgg16_head_full_v3_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v3 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of VGG16 on all categories V3
vgg16_head_full_v3_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v3 \
		--batch_size 250

## Train head dense layer of VGG16 on all categories V4
vgg16_head_full_v4: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v4 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66782 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on all categories V4
vgg16_head_full_v4_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v4 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on all categories V4
vgg16_head_full_v4_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v4 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of VGG16 on all categories V5
vgg16_head_full_v5: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/vgg16_head_full_v4/model.h5
	mkdir models/vgg16_head_full_v5 ; \
	cp models/vgg16_head_full_v4/model.h5 models/vgg16_head_full_v5 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --fit \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v5 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 15 \
		--batch_seed 66783 \
		--use_img_idx

## Predict valid head dense layer of VGG16 on all categories V5
vgg16_head_full_v5_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v5 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of VGG16 on all categories V5
vgg16_head_full_v5_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_vgg16_memmap_vecs --predict \
		--memmap_path ${TEST_VGG16_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/vgg16_head_full_v5 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories V1
resnet50_head_top_2000_v1: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 3 \
		--shuffle 123 \
		--mode 0 \
		--batch_seed 5672

## Train head dense layer of ResNet50 on top 2000 categories V2
resnet50_head_top_2000_v2: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v2 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 5673

## Train head dense layer of ResNet50 on top 2000 categories V3
resnet50_head_top_2000_v3: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v3 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 2 \
		--batch_seed 5674

## Train head dense layer of ResNet50 on top 2000 categories V4
resnet50_head_top_2000_v4: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v4 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 3 \
		--batch_seed 5675

## Train head dense layer of ResNet50 on top 2000 categories V5
resnet50_head_top_2000_v5: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v5 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 4 \
		--batch_seed 5676

## Train head dense layer of ResNet50 on top 2000 categories V6
resnet50_head_top_2000_v6: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v6 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 5 \
		--batch_seed 5677

## Train head dense layer of ResNet50 on top 2000 categories V7
resnet50_head_top_2000_v7: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_v2/model.h5
	mkdir models/resnet50_head_top_2000_v7 ; \
	cp models/resnet50_head_top_2000_v2/model.h5 models/resnet50_head_top_2000_v7 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v7 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56777

## Predict head dense layer of ResNet50 on top 2000 categories V7
resnet50_head_top_2000_v7_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v7 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 2000 categories V7
resnet50_head_top_2000_v7_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v7 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 2000 categories V7
resnet50_head_top_2000_v7_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v7 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 2000 categories V7
resnet50_head_top_2000_v7_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v7 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 2000 categories V8
resnet50_head_top_2000_v8: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_v3/model.h5
	mkdir models/resnet50_head_top_2000_v8 ; \
	cp models/resnet50_head_top_2000_v3/model.h5 models/resnet50_head_top_2000_v8 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v8 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 2 \
		--batch_seed 3782

## Predict head dense layer of ResNet50 on top 2000 categories V8
resnet50_head_top_2000_v8_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v8 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 2000 categories V8
resnet50_head_top_2000_v8_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v8 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 2000 categories V8
resnet50_head_top_2000_v8_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v8 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 2000 categories V8
resnet50_head_top_2000_v8_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v8 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 2000 categories V9
resnet50_head_top_2000_v9: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_v4/model.h5
	mkdir models/resnet50_head_top_2000_v9 ; \
	cp models/resnet50_head_top_2000_v4/model.h5 models/resnet50_head_top_2000_v9 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v9 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 3 \
		--batch_seed 3783

## Predict head dense layer of ResNet50 on top 2000 categories V9
resnet50_head_top_2000_v9_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v9 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 2000 categories V9
resnet50_head_top_2000_v9_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v9 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 2000 categories V9
resnet50_head_top_2000_v9_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v9 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 2000 categories V9
resnet50_head_top_2000_v9_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v9 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 2000 categories V10
resnet50_head_top_2000_v10: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_v5/model.h5
	mkdir models/resnet50_head_top_2000_v10 ; \
	cp models/resnet50_head_top_2000_v5/model.h5 models/resnet50_head_top_2000_v10 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v10 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 4 \
		--batch_seed 3783

## Predict head dense layer of ResNet50 on top 2000 categories V10
resnet50_head_top_2000_v10_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v10 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 2000 categories V10
resnet50_head_top_2000_v10_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v10 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 2000 categories V10
resnet50_head_top_2000_v10_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v10 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 2000 categories V10
resnet50_head_top_2000_v10_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v10 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 2000 categories V11
resnet50_head_top_2000_v11: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_v6/model.h5
	mkdir models/resnet50_head_top_2000_v11 ; \
	cp models/resnet50_head_top_2000_v6/model.h5 models/resnet50_head_top_2000_v11 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v11 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 5 \
		--batch_seed 3783

## Predict head dense layer of ResNet50 on top 2000 categories V11
resnet50_head_top_2000_v11_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v11 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 2000 categories V11
resnet50_head_top_2000_v11_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v11 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 2000 categories V11
resnet50_head_top_2000_v11_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v11 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 2000 categories V11
resnet50_head_top_2000_v11_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_v11 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 3000 categories V1
resnet50_head_top_3000_v1: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 5679

## Train head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_top_3000_v2: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_3000_v1/model.h5
	mkdir models/resnet50_head_top_3000_v2 ; \
	cp models/resnet50_head_top_3000_v1/model.h5 models/resnet50_head_top_3000_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56778

## Predict head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_top_3000_v2_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v2 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_top_3000_v2_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_top_3000_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_top_3000_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v2 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 3000 categories V3
resnet50_head_top_3000_v3: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_3000_v2/model.h5
	mkdir models/resnet50_head_top_3000_v3 ; \
	cp models/resnet50_head_top_3000_v2/model.h5 models/resnet50_head_top_3000_v3 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_v3 \
		--batch_size 1000 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56972

## Train head dense layer of ResNet50 on all categories V1
resnet50_head_full_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 5681

## Train head dense layer of ResNet50 on all categories V2
resnet50_head_full_v2: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_full_v1/model.h5
	mkdir models/resnet50_head_full_v2 ; \
	cp models/resnet50_head_full_v1/model.h5 models/resnet50_head_full_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56779

## Predict head dense layer of ResNet50 on all categories V2
resnet50_head_full_v2_test: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict \
		--bcolz_root ${TEST_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v2 \
		--batch_size 250

## Predict valid head dense layer of ResNet50 on all categories V2
resnet50_head_full_v2_valid: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --predict_valid \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict valid head dense layer of ResNet50 on all categories V2
resnet50_head_full_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v2 \
		--batch_size 250 \
		--shuffle 123

## Predict test head dense layer of ResNet50 on top 3000 categories V2
resnet50_head_full_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_v2 \
		--batch_size 250

## Train head dense layer of ResNet50 on top 2000 categories with img features V1
resnet50_head_top_2000_img_idx_v1: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 5673 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V1
resnet50_head_top_2000_img_idx_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v1 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V1
resnet50_head_top_2000_img_idx_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v1 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories with img features V2
resnet50_head_top_2000_img_idx_v2: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_img_idx_v1/model.h5
	mkdir models/resnet50_head_top_2000_img_idx_v2 ; \
	cp models/resnet50_head_top_2000_img_idx_v1/model.h5 models/resnet50_head_top_2000_img_idx_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 56787 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V2
resnet50_head_top_2000_img_idx_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v2 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V2
resnet50_head_top_2000_img_idx_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v2 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories with img features V3
resnet50_head_top_2000_img_idx_v3: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v3 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 7 \
		--batch_seed 32491 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V3
resnet50_head_top_2000_img_idx_v3_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v3 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V3
resnet50_head_top_2000_img_idx_v3_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v3 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories with img features V4
resnet50_head_top_2000_img_idx_v4: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_img_idx_v3/model.h5
	mkdir models/resnet50_head_top_2000_img_idx_v4 ; \
	cp models/resnet50_head_top_2000_img_idx_v3/model.h5 models/resnet50_head_top_2000_img_idx_v4 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v4 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 7 \
		--batch_seed 32492 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V4
resnet50_head_top_2000_img_idx_v4_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v4 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V4
resnet50_head_top_2000_img_idx_v4_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v4 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories with img features V5
resnet50_head_top_2000_img_idx_v5: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v5 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 8 \
		--batch_seed 32493 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V5
resnet50_head_top_2000_img_idx_v5_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v5 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V5
resnet50_head_top_2000_img_idx_v5_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v5 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 2000 categories with img features V6
resnet50_head_top_2000_img_idx_v6: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_img_idx_v5/model.h5
	mkdir models/resnet50_head_top_2000_img_idx_v6 ; \
	cp models/resnet50_head_top_2000_img_idx_v5/model.h5 models/resnet50_head_top_2000_img_idx_v6 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v6 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 8 \
		--batch_seed 32494 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 2000 categories with img features V6
resnet50_head_top_2000_img_idx_v6_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v6 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 2000 categories with img features V6
resnet50_head_top_2000_img_idx_v6_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_img_idx_v6 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 3000 categories with img features V1
resnet50_head_top_3000_img_idx_v1: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 32495 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 3000 categories with img features V1
resnet50_head_top_3000_img_idx_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v1 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 3000 categories with img features V1
resnet50_head_top_3000_img_idx_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v1 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on top 3000 categories with img features V2
resnet50_head_top_3000_img_idx_v2: ${DATA_INTERIM}/top_3000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_3000_img_idx_v1/model.h5
	mkdir models/resnet50_head_top_3000_img_idx_v2 ; \
	cp models/resnet50_head_top_3000_img_idx_v1/model.h5 models/resnet50_head_top_3000_img_idx_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_3000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 32496 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on top 3000 categories with img features V2
resnet50_head_top_3000_img_idx_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v2 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on top 3000 categories with img features V2
resnet50_head_top_3000_img_idx_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_3000_img_idx_v2 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on all categories with img features V1
resnet50_head_full_img_idx_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 32497 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on all categories with img features V1
resnet50_head_full_img_idx_v1_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v1 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on all categories with img features V1
resnet50_head_full_img_idx_v1_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v1 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of ResNet50 on all categories with img features V2
resnet50_head_full_img_idx_v2: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_full_img_idx_v1/model.h5
	mkdir models/resnet50_head_full_img_idx_v2 ; \
	cp models/resnet50_head_full_img_idx_v1/model.h5 models/resnet50_head_full_img_idx_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 6 \
		--batch_seed 32498 \
		--use_img_idx

## Predict valid head dense layer of ResNet50 on all categories with img features V2
resnet50_head_full_img_idx_v2_valid_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict_valid \
		--memmap_path ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 12371293 \
		--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v2 \
		--batch_size 250 \
		--shuffle 123 \
		--use_img_idx

## Predict test head dense layer of ResNet50 on all categories with img features V2
resnet50_head_full_img_idx_v2_test_sngl: ${DATA_INTERIM}/test_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_resnet50_memmap_vecs --predict \
		--memmap_path ${TEST_RESNET50_VECS_MEMMAP_PATH} \
		--memmap_len 3095080 \
		--prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/test_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_full_img_idx_v2 \
		--batch_size 250 \
		--use_img_idx

## Train head dense layer of average ResNet50 on top 2000 categories V1
resnet50_head_top_2000_avg_v1: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v1 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 4 \
		--shuffle 123 \
		--mode 0 \
		--batch_seed 5673 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V2
resnet50_head_top_2000_avg_v2: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv models/resnet50_head_top_2000_avg_v1/model.h5
	mkdir models/resnet50_head_top_2000_avg_v2 ; \
	cp models/resnet50_head_top_2000_avg_v1/model.h5 models/resnet50_head_top_2000_avg_v2 ; \
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v2 \
		--batch_size 500 \
		--lr 0.0001 \
		--epochs 1 \
		--shuffle 123 \
		--mode 0 \
		--batch_seed 57108 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V3
resnet50_head_top_2000_avg_v3: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v3 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 0 \
		--batch_seed 56073 \
		--max_images 4 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V4
resnet50_head_top_2000_avg_v4: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v4 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56074 \
		--max_images 2 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V5
resnet50_head_top_2000_avg_v5: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v5 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 1 \
		--batch_seed 56075 \
		--max_images 4 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V6
resnet50_head_top_2000_avg_v6: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v6 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 2 \
		--batch_seed 56076 \
		--max_images 2 \
		--memmap_len 12371293

## Train head dense layer of average ResNet50 on top 2000 categories V7
resnet50_head_top_2000_avg_v7: ${DATA_INTERIM}/top_2000_sample_product_info.csv ${DATA_INTERIM}/category_idx.csv \
${DATA_INTERIM}/train_split.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.tune_avg_resnet50_vecs --fit \
		--bcolz_root ${TRAIN_RESNET50_VECS_MEMMAP_PATH} \
		--bcolz_prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
		--sample_prod_info_csv ${DATA_INTERIM}/top_2000_sample_product_info.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--train_split_csv ${DATA_INTERIM}/train_split.csv \
        --models_dir models/resnet50_head_top_2000_avg_v7 \
		--batch_size 250 \
		--lr 0.001 \
		--epochs 2 \
		--shuffle 123 \
		--mode 2 \
		--batch_seed 56077 \
		--max_images 4 \
		--memmap_len 12371293

## Predict Inception3 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_inception3_test: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69565_inc3_00075000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name inception \
		--model_dir models/LB_0_69565_inc3_00075000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 250 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv

## Predict valid split Inception3 model by Heng Cherkeng
heng_inception3_valid: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69565_inc3_00075000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name inception \
		--model_dir models/LB_0_69565_inc3_00075000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 250 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896

## Predict single Inception3 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_inception3_test_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69565_inc3_00075000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name inception \
		--model_dir models/LB_0_69565_inc3_00075000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 250 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--single_prediction

## Predict single valid split Inception3 model by Heng Cherkeng
heng_inception3_valid_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69565_inc3_00075000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name inception \
		--model_dir models/LB_0_69565_inc3_00075000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 250 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896 \
		--single_prediction

## Form submission for Inception3 model by Heng Cherkeng
heng_inception3_submission: data/processed/heng_inception3_submission.csv

data/processed/heng_inception3_submission.csv: models/LB_0_69565_inc3_00075000_model/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/LB_0_69565_inc3_00075000_model/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/heng_inception3_submission.csv

## Predict SEInception3 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_seinception3_test: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69673_se_inc3_00026000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name seinception \
		--model_dir models/LB_0_69673_se_inc3_00026000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 500 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv

## Predict valid split SEInception3 model by Heng Cherkeng
heng_seinception3_valid: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69673_se_inc3_00026000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name seinception \
		--model_dir models/LB_0_69673_se_inc3_00026000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 500 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896

## Predict single SEInception3 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_seinception3_test_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69673_se_inc3_00026000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name seinception \
		--model_dir models/LB_0_69673_se_inc3_00026000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 400 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--single_prediction

## Predict single valid split SEInception3 model by Heng Cherkeng
heng_seinception3_valid_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69673_se_inc3_00026000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name seinception \
		--model_dir models/LB_0_69673_se_inc3_00026000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 400 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896 \
		--single_prediction

## Predict Xception model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_xception_test: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69422_xception_00158000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name xception \
		--model_dir models/LB_0_69422_xception_00158000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv

## Predict valid split Xception model by Heng Cherkeng
heng_xception_valid: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69422_xception_00158000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name xception \
		--model_dir models/LB_0_69422_xception_00158000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896

## Predict single Xception model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_xception_test_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/LB_0_69422_xception_00158000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name xception \
		--model_dir models/LB_0_69422_xception_00158000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--single_prediction

## Predict single valid split Xception model by Heng Cherkeng
heng_xception_valid_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/LB_0_69422_xception_00158000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name xception \
		--model_dir models/LB_0_69422_xception_00158000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896 \
		--single_prediction

## Predict ResNet101 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_resnet101_test: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/resnet101_00243000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name resnet101 \
		--model_dir models/resnet101_00243000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv

## Predict valid split ResNet101 model by Heng Cherkeng
heng_resnet101_valid: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/resnet101_00243000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name resnet101 \
		--model_dir models/resnet101_00243000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896

## Predict single ResNet101 model by Heng Cherkeng, get weights and label_to_cat_id from
## https://drive.google.com/drive/folders/0B_DICebvRE-kRWxJeUpJVmY1UkU
heng_resnet101_test_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id \
models/resnet101_00243000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TEST_BSON} \
		--model_name resnet101 \
		--model_dir models/resnet101_00243000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--single_prediction

## Predict single valid split ResNet101 model by Heng Cherkeng
heng_resnet101_valid_sngl: ${DATA_INTERIM}/category_idx.csv ${DATA_RAW}/heng_label_to_cat_id ${DATA_RAW}/heng_train_id_v0_7019896 \
models/resnet101_00243000_model
	pipenv run $(PYTHON_INTERPRETER) -m src.model.heng_models \
		--bson ${TRAIN_BSON} \
		--model_name resnet101 \
		--model_dir models/resnet101_00243000_model \
		--label_to_category_id_file ${DATA_RAW}/heng_label_to_cat_id \
		--batch_size 128 \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--predict_valid \
		--train_ids_file ${DATA_RAW}/heng_train_id_v0_7019896 \
		--single_prediction

## Train ensemble of Heng Cherkeng models V1
ensemble_nn_heng_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/LB_0_69565_inc3_00075000_model/valid_predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/valid_predictions.csv \
				models/resnet101_00243000_model/valid_predictions.csv \
				models/LB_0_69422_xception_00158000_model/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_heng_v1 \
			--seed 414 \
			--lr 0.1

## Predict ensemble of Heng Cherkeng models V1
ensemble_nn_heng_v1_test: models/ensemble_nn_heng_v1/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
				models/resnet101_00243000_model/predictions.csv \
				models/LB_0_69422_xception_00158000_model/predictions.csv \
			--model_dir models/ensemble_nn_heng_v1

## Train ensemble of Heng Cherkeng single models V1
ensemble_nn_heng_v1_sngl: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/LB_0_69565_inc3_00075000_model/valid_single_predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/valid_single_predictions.csv \
				models/resnet101_00243000_model/valid_single_predictions.csv \
				models/LB_0_69422_xception_00158000_model/valid_single_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_heng_v1_sngl \
			--seed 414 \
			--lr 0.01 \
			--epochs 3

## Predict ensemble of Heng Cherkeng single models V1
ensemble_nn_heng_v1_sngl_test: models/ensemble_nn_heng_v1_sngl/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/LB_0_69565_inc3_00075000_model/single_predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/single_predictions.csv \
				models/resnet101_00243000_model/single_predictions.csv \
				models/LB_0_69422_xception_00158000_model/single_predictions.csv \
			--model_dir models/ensemble_nn_heng_v1_sngl

## Train ensemble of VGG16 models V1
ensemble_nn_vgg16_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/valid_predictions.csv \
				models/vgg16_head_top_2000_v2/valid_predictions.csv \
				models/vgg16_head_top_2000_v3/valid_predictions.csv \
				models/vgg16_head_top_2000_v4/valid_predictions.csv \
				models/vgg16_head_top_2000_v6/valid_predictions.csv \
				models/vgg16_head_top_2000_v7/valid_predictions.csv \
				models/vgg16_head_top_2000_v8/valid_predictions.csv \
				models/vgg16_head_top_2000_v9/valid_predictions.csv \
				models/vgg16_head_top_2000_v10/valid_predictions.csv \
				models/vgg16_head_top_2000_v12/valid_predictions.csv \
				models/vgg16_head_top_2000_v13/valid_predictions.csv \
				models/vgg16_head_top_2000_v14/valid_predictions.csv \
				models/vgg16_head_top_2000_v18/valid_predictions.csv \
				models/vgg16_head_top_3000_v1/valid_predictions.csv \
				models/vgg16_head_full_v1/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_vgg16_v1

## Predict ensemble of VGG16 models V1
ensemble_nn_vgg16_v1_test: models/ensemble_nn_vgg16_v1/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/predictions.csv \
				models/vgg16_head_top_2000_v2/predictions.csv \
				models/vgg16_head_top_2000_v3/predictions.csv \
				models/vgg16_head_top_2000_v4/predictions.csv \
				models/vgg16_head_top_2000_v6/predictions.csv \
				models/vgg16_head_top_2000_v7/predictions.csv \
				models/vgg16_head_top_2000_v8/predictions.csv \
				models/vgg16_head_top_2000_v9/predictions.csv \
				models/vgg16_head_top_2000_v10/predictions.csv \
				models/vgg16_head_top_2000_v12/predictions.csv \
				models/vgg16_head_top_2000_v13/predictions.csv \
				models/vgg16_head_top_2000_v14/predictions.csv \
				models/vgg16_head_top_2000_v18/predictions.csv \
				models/vgg16_head_top_3000_v1/predictions.csv \
				models/vgg16_head_full_v1/predictions.csv \
			--model_dir models/ensemble_nn_vgg16_v1

## Form submission for ensemble of VGG16 models V1
ensemble_nn_vgg16_v1_submission: data/processed/ensemble_nn_vgg16_v1_submission.csv

data/processed/ensemble_nn_vgg16_v1_submission.csv: models/ensemble_nn_vgg16_v1/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_nn_vgg16_v1/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_vgg16_v1_submission.csv

## Train ensemble of VGG16 models V2
ensemble_nn_vgg16_v2: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/valid_predictions.csv \
				models/vgg16_head_top_2000_v2/valid_predictions.csv \
				models/vgg16_head_top_2000_v3/valid_predictions.csv \
				models/vgg16_head_top_2000_v4/valid_predictions.csv \
				models/vgg16_head_top_2000_v6/valid_predictions.csv \
				models/vgg16_head_top_2000_v7/valid_predictions.csv \
				models/vgg16_head_top_2000_v8/valid_predictions.csv \
				models/vgg16_head_top_2000_v9/valid_predictions.csv \
				models/vgg16_head_top_2000_v10/valid_predictions.csv \
				models/vgg16_head_top_2000_v12/valid_predictions.csv \
				models/vgg16_head_top_2000_v13/valid_predictions.csv \
				models/vgg16_head_top_2000_v14/valid_predictions.csv \
				models/vgg16_head_top_2000_v18/valid_predictions.csv \
				models/vgg16_head_top_3000_v1/valid_predictions.csv \
				models/vgg16_head_full_v1/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_vgg16_v2 \
			--lr 0.1

## Train ensemble of VGG16 models V3
ensemble_nn_vgg16_v3: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/valid_predictions.csv \
				models/vgg16_head_top_2000_v2/valid_predictions.csv \
				models/vgg16_head_top_2000_v3/valid_predictions.csv \
				models/vgg16_head_top_2000_v4/valid_predictions.csv \
				models/vgg16_head_top_2000_v6/valid_predictions.csv \
				models/vgg16_head_top_2000_v7/valid_predictions.csv \
				models/vgg16_head_top_2000_v8/valid_predictions.csv \
				models/vgg16_head_top_2000_v9/valid_predictions.csv \
				models/vgg16_head_top_2000_v10/valid_predictions.csv \
				models/vgg16_head_top_2000_v12/valid_predictions.csv \
				models/vgg16_head_top_2000_v13/valid_predictions.csv \
				models/vgg16_head_top_2000_v14/valid_predictions.csv \
				models/vgg16_head_top_2000_v18/valid_predictions.csv \
				models/vgg16_head_top_2000_v20/valid_predictions.csv \
				models/vgg16_head_top_3000_v1/valid_predictions.csv \
				models/vgg16_head_top_3000_v3/valid_predictions.csv \
				models/vgg16_head_full_v1/valid_predictions.csv \
				models/vgg16_head_full_v3/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_vgg16_v3 \
			--lr 0.1

## Predict ensemble of VGG16 models V3
ensemble_nn_vgg16_v3_test: models/ensemble_nn_vgg16_v3/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/predictions.csv \
				models/vgg16_head_top_2000_v2/predictions.csv \
				models/vgg16_head_top_2000_v3/predictions.csv \
				models/vgg16_head_top_2000_v4/predictions.csv \
				models/vgg16_head_top_2000_v6/predictions.csv \
				models/vgg16_head_top_2000_v7/predictions.csv \
				models/vgg16_head_top_2000_v8/predictions.csv \
				models/vgg16_head_top_2000_v9/predictions.csv \
				models/vgg16_head_top_2000_v10/predictions.csv \
				models/vgg16_head_top_2000_v12/predictions.csv \
				models/vgg16_head_top_2000_v13/predictions.csv \
				models/vgg16_head_top_2000_v14/predictions.csv \
				models/vgg16_head_top_2000_v18/predictions.csv \
				models/vgg16_head_top_2000_v20/predictions.csv \
				models/vgg16_head_top_3000_v1/predictions.csv \
				models/vgg16_head_top_3000_v3/predictions.csv \
				models/vgg16_head_full_v1/predictions.csv \
				models/vgg16_head_full_v3/predictions.csv \
			--model_dir models/ensemble_nn_vgg16_v3

## Form submission for ensemble of VGG16 models V3
ensemble_nn_vgg16_v3_submission: data/processed/ensemble_nn_vgg16_v3_submission.csv

data/processed/ensemble_nn_vgg16_v3_submission.csv: models/ensemble_nn_vgg16_v3/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_nn_vgg16_v3/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_vgg16_v3_submission.csv

## Form mul submission for ensemble of VGG16 models V3
ensemble_nn_vgg16_v3_mul_submission: data/processed/ensemble_nn_vgg16_v3_mul_submission.csv

data/processed/ensemble_nn_vgg16_v3_mul_submission.csv: models/ensemble_nn_vgg16_v3/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_mul \
		--preds_csv models/ensemble_nn_vgg16_v3/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_vgg16_v3_mul_submission.csv

## Form sum submission for ensemble of VGG16 models V3
ensemble_nn_vgg16_v3_sum_submission: data/processed/ensemble_nn_vgg16_v3_sum_submission.csv

data/processed/ensemble_nn_vgg16_v3_sum_submission.csv: models/ensemble_nn_vgg16_v3/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_nn_vgg16_v3/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_vgg16_v3_sum_submission.csv

## Train ensemble of ResNet50 models V1
ensemble_nn_resnet50_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/resnet50_head_top_2000_v7/valid_predictions.csv \
				models/resnet50_head_top_2000_v8/valid_predictions.csv \
				models/resnet50_head_top_2000_v9/valid_predictions.csv \
				models/resnet50_head_top_2000_v10/valid_predictions.csv \
				models/resnet50_head_top_2000_v11/valid_predictions.csv \
				models/resnet50_head_top_3000_v2/valid_predictions.csv \
				models/resnet50_head_full_v2/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_resnet50_v1 \
			--lr 0.1

## Predict ensemble of ResNet50 models V1
ensemble_nn_resnet50_v1_test: models/ensemble_nn_resnet50_v1/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/resnet50_head_top_2000_v7/predictions.csv \
				models/resnet50_head_top_2000_v8/predictions.csv \
				models/resnet50_head_top_2000_v9/predictions.csv \
				models/resnet50_head_top_2000_v10/predictions.csv \
				models/resnet50_head_top_2000_v11/predictions.csv \
				models/resnet50_head_top_3000_v2/predictions.csv \
				models/resnet50_head_full_v2/predictions.csv \
			--model_dir models/ensemble_nn_resnet50_v1

## Form sum submission for ensemble of ResNet50 models V1
ensemble_nn_resnet50_v1_sum_submission: data/processed/ensemble_nn_resnet50_v1_sum_submission.csv

data/processed/ensemble_nn_resnet50_v1_sum_submission.csv: models/ensemble_nn_resnet50_v1/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_nn_resnet50_v1/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_resnet50_v1_sum_submission.csv

## Train ensemble of ResNet50 models V2
ensemble_nn_resnet50_v2: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/resnet50_head_top_2000_v7/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v8/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v9/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v10/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v11/valid_single_predictions.csv \
				models/resnet50_head_top_3000_v2/valid_single_predictions.csv \
				models/resnet50_head_full_v2/valid_single_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_resnet50_v2 \
			--lr 0.1

## Predict ensemble of ResNet50 models V2
ensemble_nn_resnet50_v2_test: models/ensemble_nn_resnet50_v2/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/resnet50_head_top_2000_v7/single_predictions.csv \
				models/resnet50_head_top_2000_v8/single_predictions.csv \
				models/resnet50_head_top_2000_v9/single_predictions.csv \
				models/resnet50_head_top_2000_v10/single_predictions.csv \
				models/resnet50_head_top_2000_v11/single_predictions.csv \
				models/resnet50_head_top_3000_v2/single_predictions.csv \
				models/resnet50_head_full_v2/single_predictions.csv \
			--model_dir models/ensemble_nn_resnet50_v2 \
			--total_records 17681820

## Form sum submission for ensemble of ResNet50 models V2
ensemble_nn_resnet50_v2_sum_submission: data/processed/ensemble_nn_resnet50_v2_sum_submission.csv

data/processed/ensemble_nn_resnet50_v2_sum_submission.csv: models/ensemble_nn_resnet50_v2/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_nn_resnet50_v2/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_nn_resnet50_v2_sum_submission.csv

## Train ensemble of VGG16 and ResNet50 models V1
ensemble_nn_vgg16_resnet50_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/valid_predictions.csv \
				models/vgg16_head_top_2000_v2/valid_predictions.csv \
				models/vgg16_head_top_2000_v3/valid_predictions.csv \
				models/vgg16_head_top_2000_v4/valid_predictions.csv \
				models/vgg16_head_top_2000_v8/valid_predictions.csv \
				models/vgg16_head_top_2000_v9/valid_predictions.csv \
				models/vgg16_head_top_2000_v10/valid_predictions.csv \
				models/vgg16_head_top_2000_v12/valid_predictions.csv \
				models/vgg16_head_top_2000_v13/valid_predictions.csv \
				models/vgg16_head_top_2000_v14/valid_predictions.csv \
				models/vgg16_head_top_2000_v18/valid_predictions.csv \
				models/vgg16_head_top_2000_v20/valid_predictions.csv \
				models/vgg16_head_top_3000_v1/valid_predictions.csv \
				models/vgg16_head_top_3000_v3/valid_predictions.csv \
				models/vgg16_head_full_v1/valid_predictions.csv \
				models/vgg16_head_full_v3/valid_predictions.csv \
				models/resnet50_head_top_2000_v7/valid_predictions.csv \
				models/resnet50_head_top_2000_v8/valid_predictions.csv \
				models/resnet50_head_top_2000_v9/valid_predictions.csv \
				models/resnet50_head_top_2000_v10/valid_predictions.csv \
				models/resnet50_head_top_2000_v11/valid_predictions.csv \
				models/resnet50_head_top_3000_v2/valid_predictions.csv \
				models/resnet50_head_full_v2/valid_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_vgg16_resnet50_v1 \
			--lr 0.1

## Predict ensemble of VGG16 and ResNet50 models V1
ensemble_nn_vgg16_resnet50_v1_test: models/ensemble_nn_vgg16_resnet50_v1/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/predictions.csv \
				models/vgg16_head_top_2000_v2/predictions.csv \
				models/vgg16_head_top_2000_v3/predictions.csv \
				models/vgg16_head_top_2000_v4/predictions.csv \
				models/vgg16_head_top_2000_v8/predictions.csv \
				models/vgg16_head_top_2000_v9/predictions.csv \
				models/vgg16_head_top_2000_v10/predictions.csv \
				models/vgg16_head_top_2000_v12/predictions.csv \
				models/vgg16_head_top_2000_v13/predictions.csv \
				models/vgg16_head_top_2000_v14/predictions.csv \
				models/vgg16_head_top_2000_v18/predictions.csv \
				models/vgg16_head_top_2000_v20/predictions.csv \
				models/vgg16_head_top_3000_v1/predictions.csv \
				models/vgg16_head_top_3000_v3/predictions.csv \
				models/vgg16_head_full_v1/predictions.csv \
				models/vgg16_head_full_v3/predictions.csv \
				models/resnet50_head_top_2000_v7/predictions.csv \
				models/resnet50_head_top_2000_v8/predictions.csv \
				models/resnet50_head_top_2000_v9/predictions.csv \
				models/resnet50_head_top_2000_v10/predictions.csv \
				models/resnet50_head_top_2000_v11/predictions.csv \
				models/resnet50_head_top_3000_v2/predictions.csv \
				models/resnet50_head_full_v2/predictions.csv \
			--model_dir models/ensemble_nn_vgg16_resnet50_v1

## Train ensemble of VGG16 and ResNet50 single models V1
ensemble_nn_vgg16_resnet50_sngl_v1: ${DATA_INTERIM}/train_product_info.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.train_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v2/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v3/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v4/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v8/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v9/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v10/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v12/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v13/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v14/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v18/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v20/valid_single_predictions.csv \
				models/vgg16_head_top_3000_v1/valid_single_predictions.csv \
				models/vgg16_head_top_3000_v3/valid_single_predictions.csv \
				models/vgg16_head_full_v1/valid_single_predictions.csv \
				models/vgg16_head_full_v3/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v21/valid_single_predictions.csv \
				models/vgg16_head_top_2000_v22/valid_single_predictions.csv \
				models/vgg16_head_top_3000_v4/valid_single_predictions.csv \
				models/vgg16_head_top_3000_v5/valid_single_predictions.csv \
				models/vgg16_head_full_v4/valid_single_predictions.csv \
				models/vgg16_head_full_v5/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v7/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v8/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v9/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v10/valid_single_predictions.csv \
				models/resnet50_head_top_2000_v11/valid_single_predictions.csv \
				models/resnet50_head_top_3000_v2/valid_single_predictions.csv \
				models/resnet50_head_full_v2/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v1/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v2/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v3/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v4/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v5/valid_single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v6/valid_single_predictions.csv \
				models/resnet50_head_top_3000_img_idx_v1/valid_single_predictions.csv \
				models/resnet50_head_top_3000_img_idx_v2/valid_single_predictions.csv \
				models/resnet50_head_full_img_idx_v1/valid_single_predictions.csv \
				models/resnet50_head_full_img_idx_v2/valid_single_predictions.csv \
			--prod_info_csv ${DATA_INTERIM}/train_product_info.csv \
			--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
			--model_dir models/ensemble_nn_vgg16_resnet50_sngl_v1 \
			--lr 0.01 \
			--epochs 4

## Predict ensemble of VGG16 and ResNet50 single models V1
ensemble_nn_vgg16_resnet50_sngl_v1_test: models/ensemble_nn_vgg16_resnet50_sngl_v1/model.h5
	pipenv run $(PYTHON_INTERPRETER) -m src.model.predict_ensemble_nn \
			--preds_csvs \
				models/vgg16_head_top_2000_v1/single_predictions.csv \
				models/vgg16_head_top_2000_v2/single_predictions.csv \
				models/vgg16_head_top_2000_v3/single_predictions.csv \
				models/vgg16_head_top_2000_v4/single_predictions.csv \
				models/vgg16_head_top_2000_v8/single_predictions.csv \
				models/vgg16_head_top_2000_v9/single_predictions.csv \
				models/vgg16_head_top_2000_v10/single_predictions.csv \
				models/vgg16_head_top_2000_v12/single_predictions.csv \
				models/vgg16_head_top_2000_v13/single_predictions.csv \
				models/vgg16_head_top_2000_v14/single_predictions.csv \
				models/vgg16_head_top_2000_v18/single_predictions.csv \
				models/vgg16_head_top_2000_v20/single_predictions.csv \
				models/vgg16_head_top_3000_v1/single_predictions.csv \
				models/vgg16_head_top_3000_v3/single_predictions.csv \
				models/vgg16_head_full_v1/single_predictions.csv \
				models/vgg16_head_full_v3/single_predictions.csv \
				models/vgg16_head_top_2000_v21/single_predictions.csv \
				models/vgg16_head_top_2000_v22/single_predictions.csv \
				models/vgg16_head_top_3000_v4/single_predictions.csv \
				models/vgg16_head_top_3000_v5/single_predictions.csv \
				models/vgg16_head_full_v4/single_predictions.csv \
				models/vgg16_head_full_v5/single_predictions.csv \
				models/resnet50_head_top_2000_v7/single_predictions.csv \
				models/resnet50_head_top_2000_v8/single_predictions.csv \
				models/resnet50_head_top_2000_v9/single_predictions.csv \
				models/resnet50_head_top_2000_v10/single_predictions.csv \
				models/resnet50_head_top_2000_v11/single_predictions.csv \
				models/resnet50_head_top_3000_v2/single_predictions.csv \
				models/resnet50_head_full_v2/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v1/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v2/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v3/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v4/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v5/single_predictions.csv \
				models/resnet50_head_top_2000_img_idx_v6/single_predictions.csv \
				models/resnet50_head_top_3000_img_idx_v1/single_predictions.csv \
				models/resnet50_head_top_3000_img_idx_v2/single_predictions.csv \
				models/resnet50_head_full_img_idx_v1/single_predictions.csv \
				models/resnet50_head_full_img_idx_v2/single_predictions.csv \
			--model_dir models/ensemble_nn_vgg16_resnet50_sngl_v1

## Ensemble with fixed weights V1
ensemble_fixed_V1: models/ensemble_nn_vgg16_v1/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v1/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
			--weights 0.37 0.63 \
			--model_dir models/ensemble_fixed_V1

## Form submission for ensemble with fixed weights V1
ensemble_fixed_V1_submission: data/processed/ensemble_fixed_V1_submission.csv

data/processed/ensemble_fixed_V1_submission.csv: models/ensemble_fixed_V1/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_fixed_V1/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V1_submission.csv

## Ensemble with fixed weights V2
ensemble_fixed_V2: models/ensemble_nn_vgg16_v1/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v1/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
			--weights 0.2 0.8 \
			--model_dir models/ensemble_fixed_V2

## Form submission for ensemble with fixed weights V2
ensemble_fixed_V2_submission: data/processed/ensemble_fixed_V2_submission.csv

data/processed/ensemble_fixed_V2_submission.csv: models/ensemble_fixed_V2/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_fixed_V2/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V2_submission.csv

## Ensemble with fixed weights V3
ensemble_fixed_V3: models/ensemble_nn_vgg16_v1/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v1/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
			--weights 0.43 0.57 \
			--model_dir models/ensemble_fixed_V3

## Form submission for ensemble with fixed weights V3
ensemble_fixed_V3_submission: data/processed/ensemble_fixed_V3_submission.csv

data/processed/ensemble_fixed_V3_submission.csv: models/ensemble_fixed_V3/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_fixed_V3/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V3_submission.csv

## Ensemble with fixed weights V4
ensemble_fixed_V4: models/ensemble_nn_vgg16_v1/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v1/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
			--weights 0.47 0.53 \
			--model_dir models/ensemble_fixed_V4

## Form submission for ensemble with fixed weights V4
ensemble_fixed_V4_submission: data/processed/ensemble_fixed_V4_submission.csv

data/processed/ensemble_fixed_V4_submission.csv: models/ensemble_fixed_V4/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission \
		--preds_csv models/ensemble_fixed_V4/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V4_submission.csv

## Ensemble with fixed weights V5
ensemble_fixed_V5: models/ensemble_nn_vgg16_v3/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv \
	models/LB_0_69673_se_inc3_00026000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v3/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
			--weights 0.45 0.275 0.275 \
			--model_dir models/ensemble_fixed_V5

## Form sum submission for ensemble with fixed weights V5
ensemble_fixed_V5_sum_submission: data/processed/ensemble_fixed_V5_sum_submission.csv

data/processed/ensemble_fixed_V5_sum_submission.csv: models/ensemble_fixed_V5/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_fixed_V5/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V5_sum_submission.csv

## Ensemble with fixed weights V6
ensemble_fixed_V6: models/ensemble_nn_vgg16_v3/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv \
	models/LB_0_69673_se_inc3_00026000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v3/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
			--weights 0.33 0.33 0.33 \
			--model_dir models/ensemble_fixed_V6

## Form sum submission for ensemble with fixed weights V6
ensemble_fixed_V6_sum_submission: data/processed/ensemble_fixed_V6_sum_submission.csv

data/processed/ensemble_fixed_V6_sum_submission.csv: models/ensemble_fixed_V6/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_fixed_V6/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V6_sum_submission.csv

## Ensemble with fixed weights V7
ensemble_fixed_V7: models/ensemble_nn_vgg16_v3/predictions.csv models/LB_0_69565_inc3_00075000_model/predictions.csv \
	models/LB_0_69673_se_inc3_00026000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_vgg16_v3/predictions.csv \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
			--weights 0.40 0.3 0.3 \
			--model_dir models/ensemble_fixed_V7

## Form sum submission for ensemble with fixed weights V7
ensemble_fixed_V7_sum_submission: data/processed/ensemble_fixed_V7_sum_submission.csv

data/processed/ensemble_fixed_V7_sum_submission.csv: models/ensemble_fixed_V7/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_fixed_V7/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V7_sum_submission.csv

## Ensemble with fixed weights V8
ensemble_fixed_V8: models/LB_0_69565_inc3_00075000_model/predictions.csv \
	models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
	models/resnet101_00243000_model/predictions.csv \
	models/LB_0_69422_xception_00158000_model/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/LB_0_69565_inc3_00075000_model/predictions.csv \
				models/LB_0_69673_se_inc3_00026000_model/predictions.csv \
				models/resnet101_00243000_model/predictions.csv \
				models/LB_0_69422_xception_00158000_model/predictions.csv \
			--weights 0.24 0.24 0.27 0.24 \
			--model_dir models/ensemble_fixed_V8

## Form sum submission for ensemble with fixed weights V8
ensemble_fixed_V8_sum_submission: data/processed/ensemble_fixed_V8_sum_submission.csv

data/processed/ensemble_fixed_V8_sum_submission.csv: models/ensemble_fixed_V8/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_fixed_V8/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V8_sum_submission.csv

## Ensemble with fixed weights V9
ensemble_fixed_V9: models/ensemble_nn_heng_v1/predictions.csv \
	models/ensemble_nn_vgg16_resnet50_v1/predictions.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.ensemble_fixed_weights \
			--preds_csvs \
				models/ensemble_nn_heng_v1/predictions.csv \
				models/ensemble_nn_vgg16_resnet50_v1/predictions.csv \
			--weights 0.5 0.5 \
			--model_dir models/ensemble_fixed_V9

## Form sum submission for ensemble with fixed weights V9
ensemble_fixed_V9_sum_submission: data/processed/ensemble_fixed_V9_sum_submission.csv

data/processed/ensemble_fixed_V9_sum_submission.csv: models/ensemble_fixed_V9/predictions.csv ${DATA_INTERIM}/category_idx.csv
	pipenv run $(PYTHON_INTERPRETER) -m src.model.form_submission_sum \
		--preds_csv models/ensemble_fixed_V9/predictions.csv \
		--category_idx_csv ${DATA_INTERIM}/category_idx.csv \
		--output_file data/processed/ensemble_fixed_V9_sum_submission.csv

#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := show-help

# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: show-help
show-help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=19 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')
