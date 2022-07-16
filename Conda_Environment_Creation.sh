#!/bin/sh

##### Conda Version
conda -V # conda 4.9.2

##### Conda Update
# https://docs.anaconda.com/anaconda/install/update-version/
conda update conda
conda update anaconda

##### List Existing Conda Environments in System
conda info --envs

##### Remove Existing Conda Environments in System
conda env remove -n Python_Julia_Env

##### Create Conda Environment
# https://github.com/JuliaPy/pyjulia/issues/444
conda create --name Python_Julia_Env python=3.8.8 -y 

##### Activate Conda Environment
conda activate Python_Julia_Env

##### Install Python Packages
pip install -r Requirements.txt

##### Julia Kernel Creation - So that Julia codes can be executed in Jupyter Notebook
```
(base) rocks-MacBook-Air:Julia_Codes rock$ conda activate Python_Julia_Env

Python_Julia_Env         /opt/anaconda3/envs/Python_Julia_Env

(Python_Julia_Env) rocks-MacBook-Air:Julia_Codes rock$ julia

julia> using Pkg
julia> Pkg.add("IJulia")

 | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

# Below Commands makes tie up between Julia and Jupyter

julia> using Pkg

julia> Pkg.add("IJulia")
    Updating registry at `~/.julia/registries/General.toml`
   Installed libsodium_jll ─── v1.0.20+0
   Installed ZeroMQ_jll ────── v4.3.4+0
   Installed SoftGlobalScope ─ v1.1.0
   Installed ZMQ ───────────── v1.2.1
   Installed IJulia ────────── v1.23.3
  Downloaded artifact: libsodium
  Downloaded artifact: ZeroMQ
    Updating `~/.julia/environments/v1.7/Project.toml`
  [7073ff75] + IJulia v1.23.3
    Updating `~/.julia/environments/v1.7/Manifest.toml`
  [7073ff75] + IJulia v1.23.3
  [b85f4697] + SoftGlobalScope v1.1.0
  [c2297ded] + ZMQ v1.2.1
  [8f1865be] + ZeroMQ_jll v4.3.4+0
  [a9144af2] + libsodium_jll v1.0.20+0
    Building IJulia → `~/.julia/scratchspaces/44cfe95a-1eb2-52ea-b672-e2afdf69b78f/98ab633acb0fe071b671f6c1785c46cd70bb86bd/build.log`
Precompiling project...
  167 dependencies successfully precompiled in 237 seconds (36 already precompiled)

julia> 


(Python_Julia_Env) rocks-MacBook-Air:Julia_Codes rock$ jupyter notebook

# Now we should see julia kernel after opening jupyter notebook

```

##### Conda Environment Export
(Python_Julia_Env) rocks-MacBook-Air:Julia_Codes rock$ conda env export > Python_Julia_Env.yaml

##### Deactivate Conda Environment
conda deactivate