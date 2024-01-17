# for compiling llama-cpp-python
env CMAKE_ARGS="-DLLAMA_METAL=on"
env FORCE_CMAKE=1
pip install -r ~/work/requirements.txt
export PYTHONPATH=PYTHONPATH:/home/jovyan/work