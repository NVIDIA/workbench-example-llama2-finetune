echo "Initializing the Llama-2 ${LLAMA2_SIZE} model."

if [ ! -f /project/models/llama-$LLAMA2_SIZE.nemo ]; then
    echo "Cloning the model weights"
    cd /project/models && git lfs clone https://$HF_USERNAME:$HF_API_KEY@huggingface.co/meta-llama/Llama-2-$LLAMA2_SIZE-hf

    echo "Converting the model weights to NeMo format"
    python /opt/NeMo/scripts/nlp_language_modeling/convert_hf_llama_to_nemo.py --in-file=/project/models/Llama-2-$LLAMA2_SIZE-hf/ --out-file=/project/models/llama-$LLAMA2_SIZE.nemo
    echo "llama-$LLAMA2_SIZE.nemo is ready"
else
    echo "llama-$LLAMA2_SIZE.nemo already exists. Skipping."
fi

sleep 3
echo "Llama-2 ${LLAMA2_SIZE} model is initialized."