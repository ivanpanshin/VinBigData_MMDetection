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

