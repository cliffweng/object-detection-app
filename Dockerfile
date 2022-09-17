FROM python:3.9-slim
LABEL maintainer="cliffweng"

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install --upgrade pip

RUN mkdir -p /home/streamlit
WORKDIR /home/streamlit
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /home/streamlit

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run"]
CMD ["src/app.py"]