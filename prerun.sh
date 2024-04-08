cd /cnvrg/PyTorch/llama2_fine_tuning_inference
pip install -q git+https://github.com/HabanaAI/DeepSpeed.git@1.14.0
pip install peft==0.8.2
pip install -q optimum-habana==1.10.4
git clone https://github.com/huggingface/optimum-habana.git
git config --global --add safe.directory /cnvrg/PyTorch/llama2_fine_tuning_inference/optimum-habana
cd optimum-habana
git checkout v1.10.4 
cd examples/language-modeling/
pip install -q -r requirements.txt
huggingface-cli login --token $(echo $HF_TOKEN)
