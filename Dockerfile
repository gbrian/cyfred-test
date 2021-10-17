FROM codercom/code-server:latest

RUN sudo apt update
RUN sudo apt install -y curl python3-pip sqlite3 unzip git

RUN sudo curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
RUN sudo apt install -y nodejs

