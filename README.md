# Iterative_fitting_hand



## **Installation**



### Using Docker file

For easy installation, we provide all set-up docker files. File Size (36.6GB)
We recommend using Docker file.
[Docker File Link](https://soongsilac-my.sharepoint.com/:u:/g/personal/taewookim_soongsil_ac_kr/EVtxDvb7qkVCgo37p8XkzL0BiELPz2AwmZC-2A0G8uTdFw?e=lKPQm1)  



### Install in Local


```
pip install -r requirements.txt

pip install -r optional-requirements.txt
```



#### Dependencies 

Follow the installation instructions for each of the following before using the fitting code.

1. [PyTorch](https://pytorch.org/)
2. [SMPL-X](https://github.com/vchoutas/smplx)
3. [VPoser](https://github.com/nghorbani/HumanBodyPrior)
4. [Homogenus](https://github.com/nghorbani/homogenus)



Generating hand mesh is based on smplx, download the model go to [this project website](https://smpl-x.is.tue.mpg.de/) and register to get access to the downloads section. and put the files to /model/smplx



#### Optional Dependencies

1. [PyTorch Mesh self-intersection](https://github.com/vchoutas/torch-mesh-isect) for interpenetration penalty

2. [Trimesh](https://trimsh.org/) for loading triangular meshes

3. [Pyrender](https://pyrender.readthedocs.io/) for visualization 

   


## Fitting



#### Required Files 

Openpose keypoint json file , whole body images



Move required files to the /data/images , /data/keypoints

/data directory contain two subfolders, images, where the images are located, and keypoints, where the OpenPose output should be stored.



#### Run Fitting shell script


``` 
./run.sh

```



#### Checking the output file



This script will generate hand mesh iteratively and the ouput of the images will be stored in /data/output

The format of the output file contains an image with a mesh overlapping. and  .obj file 




## Change Configuration file



### Change Max iteration



You can change the max iteration value by changing the yaml file in /cfg_files/fit_smplx.yaml.


``` 
#Max number of optimization iterations
maxiters: 100
```

Change the value of the maxiters in the yaml file



https://github.com/kuai-lab/iterative_fitting_hand/blob/c7617c0748f9cb59669d6dd3d52c4bce7cfc00e7/cfg_files/fit_smplx.yaml#L44
