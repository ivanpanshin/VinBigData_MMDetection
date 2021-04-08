## Inference

In order to get final predictions of cascade models for VinBigData Chest X-ray Abnormalities Detection competition on Kaggle, run the following:

1. Install requirements
    ```
    python3 -m venv venv
    source venv/bin/activate
    ./setup.sh
    ```
    
2. Download model weights + test annotations for inference
    ```
    ./download_weights.sh
    ./download_test_data.sh
    ```
    
3. Run inference
    ```
    ./inference_cascade.sh
    ```

    In the end, you'll end up with 2 submissions under `final_subs` directory. If you don't wish to run the inference yourself, you can simply download these submissions [here](https://www.kaggle.com/ivanpan/vinbigdata-subs). 


## Training

In order to run the training from the beginning, run the following: 

1. Download checkpoints + train annotations for training
    ```
    ./download_checkpoints.sh
    ./download_train_data.sh
    ```
    
2. Run 1 stage of training
    ```
    ./train_1stage.sh
    ```

3. Select the best weights for 5 folds, based on AP@0.4 (AP@0.5 should work as well), and place them into `weights/cascade_r50_augs_with_empty/fold$i.pth` directory. 

4. Run 2 stage of training
    ```
    ./train_2stage.sh
    ```

5. Select the best weights for 5 folds, based on AP@0.4 (AP@0.5 should work as well), and place them into `weights/cascade_r50_augs_rare_with_empty/fold$i.pth` directory. 

    In the end, you'll end up with weights that you can use for `./inference_cascade.sh`.
