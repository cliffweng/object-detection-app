# object-detection-app
Simple object detection app with streamlit. Upload an image and perform object detection. Adjust the confidence threshold to see how this affects predictions.

<p align="center">
<img src="https://github.com/cliffweng/object-detection-app/blob/master/images/usage.jpg" width="700">
</p>

## Clone this repo
Clone this repo to your local machine, and rename all the cliffweng with your name
## Run with Docker
From the root dir:
```
docker build -t cliffweng/streamlit_camera .
docker run -p 8501:8501 -v %cd%:/home/streamlit cliffweng/streamlit_camera
docker run -p 8501:8501 cliffweng/streamlit_camera
```
Then visit [localhost:8501](http://localhost:8501/)

## Development
Using [devcontainer](https://code.visualstudio.com/docs/remote/containers), see basic python [example repo](https://github.com/microsoft/vscode-remote-try-python) and [more advanced repo](https://github.com/microsoft/python-sample-tweeterapp). Use [this streamlit docker template](https://github.com/MrTomerLevi/streamlit-docker). Note you cannot docker run at the same time as the devcontainer as the ports clash.

## References
I took a lot of inspiration from [this article](https://www.pyimagesearch.com/2017/09/11/object-detection-with-deep-learning-and-opencv/) by Adrian Rosebrock.