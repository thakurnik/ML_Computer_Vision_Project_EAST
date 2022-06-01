

import numpy as np
import streamlit as st
from PIL import Image

from EAST import east_text_detection

st.title("Welcome to my demo web app")
st.write(
    "This model Detects text in a still image."
)

file_upload = st.file_uploader("Upload image here", type=["jpg", "jpeg", "png"])

if file_upload is not None:
    img = Image.open(file_upload)
    col1, col2 = st.columns(2)
    with col1:
        st.image(img, "Original image")
