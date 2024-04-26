FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-devel

WORKDIR /

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]