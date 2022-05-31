FROM ubuntu:20.04 as base


ENV DEBIAN_FRONTEND=noninteractive


Run apt-get update &&apt-get intall-y --no-install-recommends build-essential  \
    && apt-get intall -y --no-install-recommends python3 python3-pip python3.8 -venv python3.8-dev   
Run apt-get install -y --fix-missing ffmpeglibsm6 libxext6


Run python -m pip install --upgrade pip && python3 -m pip install build

COPY dist/EAST_TEXT_DETECTOR-1.0.0-py3-none-any.whl ./
RUN python3 -m pip install EAST_TEXT_DETECTOR-1.0.0-py3-none-any.whl


RUN python3 -m pip install streamlit

WORKDIR /app
COPY streamlit/app.py /app

EXPOSE 8501


ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]
