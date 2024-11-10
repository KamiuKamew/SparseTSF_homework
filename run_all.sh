#!/bin/bash

model_name=${1:-"SparseTSF"}

models=("linear" "mlp")
datasets=("etth1" "etth2" "electricity" "traffic" "ettm1" "ettm2" "weather" "solar")

for model in ${models[@]}; do
    for dataset in ${datasets[@]}; do
        sh scripts/SparseTSF/${model}/${dataset}.sh ${model_name}
    done
done
