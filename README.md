# NVIDIA AI Workbench: Introduction
This is an [NVIDIA AI Workbench](https://developer.nvidia.com/blog/develop-and-deploy-scalable-generative-ai-models-seamlessly-with-nvidia-ai-workbench/) example Project that demonstrates how to fine-tune a Llama v2 7B large language model on a custom dataset using NeMo Toolkit and NeMo Framework. Users in the [AI Workbench Early Access Program](https://developer.nvidia.com/ai-workbench-early-access) can get up and running with this Project in minutes.

## Project Description
Llama 2 has gained traction as a robust, powerful family of Large Language Models that can provide compelling responses on a wide range of tasks. While the base 7B, 13B, and 70B models serve as a strong baseline for multiple downstream tasks, they can lack in domain-specific knowledge of proprietary or otherwise sensitive information. Fine-tuning is often used as a means to update a model for a specific task or tasks to better respond to domain-specific prompts. These notebooks walk through downloading the Llama 2 7B model from HuggingFace, preparing a custom dataset, and fine-tuning the pretrained base model against this new dataset. 

* ```llama2-lora-ft.ipynb```: This notebook provides a sample workflow for fine-tuning the Llama2 7B parameter base model for extractive Question-Answering on the SQuAD dataset using Low-Rank Adaptation Fine-tuning (LoRA), a popular parameter-efficient fine-tuning method. 

* ```llama2-ptuning.ipynb```: This notebook provides a sample workflow for fine-tuning the Llama2 7B parameter base model for extractive Question-Answering on a custom dataset using customized prompt formattings and a p-tuning method. 

## System Requirements
* Operating System: Ubuntu 22.04
* CPU requirements: None, tested with Intel&reg; Xeon&reg; Platinum 8380 CPU @ 2.30GHz
* GPU requirements: Any NVIDIA training GPU(s), tested with 1x NVIDIA A100-80GB
* NVIDIA driver requirements: Latest driver version
* Storage requirements: 40GB

# Prerequisites
1. The NeMo Frameworks training container is used by this example project. This container is in General Availability and is open to the public. Sign up for access [here](https://developer.nvidia.com/nemo-framework/join).
2. Before proceeding with this workflow, you will need to ensure you already have the Llama2 7B model downloaded from Huggingface. If not, please follow these instructions (also provided at the start of the notebooks): 
   
   First, the 7B variant of Llama 2 needs to be downloaded from Meta. Llama 2 is an open model that is available for commercial use. To download the model, [submit a request on Meta's portal](https://ai.meta.com/resources/models-and-libraries/llama-downloads/) for access to all models in the Llama family. Please note that your HuggingFace account email address MUST match the email you provide on the Meta website, or your request will not be approved.
   
   Once approved, use your HuggingFace username and API key to download Llama2 7B (non-chat version) to your workstation where you will be fine-tuning the model. To pull the model files to your local machine, you may navigate on your local machine to the folder you want to contain your model directory and use a ```git lfs clone https://huggingface.co/<namespace>/<repo-name>``` call to [Meta's HF repository](https://huggingface.co/meta-llama/llama-2-7b-hf).

   This directory will be specified to AI Workbench later (Step 6 of the Quickstart) as a mount for this project so that you can access the model files while working inside the container. 

# Quickstart
If you have NVIDIA AI Workbench already installed, you can use this Project in AI Workbench on your choice of machine by:
1. Forking this Project to your own GitHub namespace and copying the link

   ```
   https://github.com/[your_namespace]/<project_name>
   ```
   
2. Opening a shell and activating the Context you want to clone into by

   ```
   $ nvwb list contexts
   
   $ nvwb activate <desired_context>
   ```
   
3. Cloning this Project onto your desired machine by running

   ```
   $ nvwb clone project <your_project_link>
   ```
   
4. Opening the Project by

   ```
   $ nvwb list projects
   
   $ nvwb open <project_name>
   ```
   
5. Starting JupyterLab by

   ```
   $ nvwb start jupyterlab
   ```

6. Specify the file path of the mount, eg. where the `llama-2-7b-hf` model directory lives on your host machine.

   eg. if your downloaded Llama2 model directory resides in your home path, enter ```/home/[user]```

7. Once the JupyterLab application spins up, you can verify that your downloaded ```llama-2-7b-hf``` model lives under the ```models```directory of the project.

8. Navigate to the `code` directory of the project. Then, open your fine-tuning notebook of choice and get started. Happy coding!

---
**Tip:** Use ```nvwb help``` to see a full list of NVIDIA AI Workbench commands. 

---

## Tested On
This notebook has been tested with a 1x NVIDIA A100-80gb GPU system and the following version of NVIDIA AI Workbench: ```nvwb 0.5.3 (internal; linux; amd64; go1.21.3; Tue Oct 17 14:22:21 UTC 2023)```

# License
This NVIDIA AI Workbench example project is under the [Apache 2.0 License](https://github.com/nv-edwli/llama-2-finetune/blob/main/LICENSE.txt)

This project may utilize additional third-party open source software projects. Review the license terms of these open source projects before use. Third party components used as part of this project are subject to their separate legal notices or terms that accompany the components. You are responsible for confirming compliance with third-party component license terms and requirements. 
