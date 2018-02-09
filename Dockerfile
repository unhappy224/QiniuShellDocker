FROM ubuntu
MAINTAINER syt

ENV QshellVersion 2.1.5
ENV AccessKey=1
ENV SecretKey=1

RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists
RUN curl -o /bin/qshell https://dn-devtools.qbox.me/2.1.5/qshell-linux-x64
RUN chmod +x /bin/qshell
RUN qshell account $AccessKey $SecretKey