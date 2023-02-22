#!/bin/bash

python ./smplifyx/main.py --config /smplify-x/cfg_files/fit_smplx.yaml \
       --data_folder /smplify-x/data \
       --output_folder /smplify-x/data/output \
       --visualize=True \
       --gender=female \
       --model_folder /smplify-x/model \
       --vposer_ckpt /smplify-x/vposer/V02_05 \
       --part_segm_fn /smplify-x/smplx_parts_segm.pkl \
       --interpenetration False


