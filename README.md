# AUV Simulation in Unity using ML-Agents
Trained using Deep Reinforcement Learning

## Dependencies
1. Unity 2018.4.14f
2. Python 3.6+
3. ML-Agents 0.15.1
3. mlagents - python package

## Install

Refer full guide [here](https://github.com/Unity-Technologies/ml-agents/blob/0.15.1/docs/Installation.md) 

Basically:

1. Clone the ML-Agents Toolkit Repository
2. Install the ```com.unity.ml-agents``` Unity package from the Repository (ensure you enable preview packages & donwload only form version 0.15.1)
3. Install the ```mlagents``` Python package

## Run and Train

1. For running trained model, just click play. The main scene is ```Scenes/Arena```
    * The AUV Gameobject has an agents script which has the neural network stored
    * Neural Network trained models are in ```/Assets/TrainedModels/models```
2. For training, open terminal in ```/Assets/TrainedModels/models```
    * Run 
    >```mlagents-learn auv_config.yaml --run-id=runID --train```
    * ```auv_config.yaml``` has the reinforcement learning training parameters
    * The model will be saved in the ``models`` directory

## To-do
1. Train the boxed version

## Learn
Note: only refer to the correct version of ML-agents documentation.
* [Excellent starting guide](https://github.com/Unity-Technologies/ml-agents/blob/0.15.1/docs/Basic-Guide.md)
* [Example Environments](https://github.com/Unity-Technologies/ml-agents/blob/0.15.1/docs/Getting-Started-with-Balance-Ball.md)
* [Creating a new Environment and Agent](https://github.com/Unity-Technologies/ml-agents/blob/0.15.1/docs/Learning-Environment-Create-New.md)
