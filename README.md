# AUV Simulation in Unity using ML-Agents
Trained using Deep Reinforcement Learning

## Dependencies
1. Unity 2019.3.15f
2. Python 3.6+
3. ML-Agents release_2
3. mlagents - python package v0.16.1

## Install

Refer full guide [here](https://github.com/Unity-Technologies/ml-agents/blob/release_2/docs/Installation.md) 

Basically:

1. Clone the ML-Agents Toolkit Repository
2. Install the ```com.unity.ml-agents``` Unity package from the package manager (ensure you enable preview packages & download 1.0.2)
3. Install the ```mlagents``` Python package v0.16.1 exactly

## Run and Train

1. For running trained model, just click play. The main scene is ```Scenes/Arena```
    * The AUV Gameobject has an agents script which has the neural network stored
    * Neural Network trained models are in ```/Assets/TrainedModels/models```
2. For training, open terminal in ```/Assets/TrainedModels/models```
    * Run 
    >```mlagents-learn auv_config.yaml --run-id=runID```
    * ```auv_config.yaml``` has the reinforcement learning training parameters
    * The model will be saved in the ``models`` directory
3. For visualizing the data on tensorboard: [release_2_docs](https://github.com/Unity-Technologies/ml-agents/blob/release_2_docs/docs/Using-Tensorboard.md)
    * Run
    >```tensorboard --logdir=summaries```
    * Navigate to [http://localhost:6006/](http://localhost:6006/) for the results

## To-do
1. Train the boxed version

## Learn
Note: only refer to the correct version of ML-agents documentation.
* [Excellent starting guide](https://github.com/Unity-Technologies/ml-agents/blob/release_2/docs/Basic-Guide.md)
* [Example Environments](https://github.com/Unity-Technologies/ml-agents/blob/release_2/docs/Getting-Started-with-Balance-Ball.md)
* [Creating a new Environment and Agent](https://github.com/Unity-Technologies/ml-agents/blob/release_2/docs/Learning-Environment-Create-New.md)
