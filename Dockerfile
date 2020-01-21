FROM ubuntu:18.04
RUN mkdir /app
COPY chimera-launcher.bash /app
RUN apt update && apt install -y wget unzip python3.7 python3-pip && python3.7 -m pip install --upgrade pip
RUN wget -O /tmp/master.zip https://notabug.org/Aesir/chimera/archive/master.zip
RUN unzip /tmp/master.zip -d /tmp
RUN mv /tmp/chimera/* /app
RUN pip3.7 install -r /app/requirements.txt
WORKDIR /app
CMD ["bash", "chimera-launcher.bash"]
