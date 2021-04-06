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
