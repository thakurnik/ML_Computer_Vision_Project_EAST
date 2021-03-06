FROM ubuntu:20.04 as base


ENV DEBIAN_FRONTEND=noninteractive


Run apt-get update
RUN apt-get install -y --no-install-recommends build-essential  \
     python3.9 python3-pip python3.9-venv python3.9-dev   
Run apt-get install -y --fix-missing ffmpeg libsm6 libxext6

RUN rm -rf /var/cache/apt/archives \
    && rm -rf /var/lib/apt/lists


Run python3 -m pip install --upgrade pip && python3 -m pip install build

COPY dist/EAST_TEXT_DETECTOR-1.0.0-py3-none-any.whl .
RUN python3 -m pip install EAST_TEXT_DETECTOR-1.0.0-py3-none-any.whl


RUN python3 -m pip install streamlit

WORKDIR /app
COPY streamlit/app.py /app

EXPOSE 8501


ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]
