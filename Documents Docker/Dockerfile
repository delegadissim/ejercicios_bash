FROM ubuntu:jammy
RUN apt update && apt install vim -y
RUN groupadd -g 30025 domain_users && useradd -m -u 30017 -g domain_users alu10219513
USER alu10219513
WORKDIR /home/alu10219513/ejercicios_bash
CMD ["/bin/bash"]
