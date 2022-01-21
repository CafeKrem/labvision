FROM francoisgervais/opencv-python
COPY image.jpeg /app/image/image1.jpeg 
COPY color_analysis.py /app/script/color_analysis.py
RUN apt update -y
RUN apt  install -y python3
RUN apt install -y python3-pip
RUN pip3 install numpy
CMD python3 /app/script/color_analysis.py --image /app/image/image1.jpeg