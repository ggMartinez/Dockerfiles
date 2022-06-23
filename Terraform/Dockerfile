FROM centos:7

ENV TERRAFORM_URL="https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip"

RUN yum install -y openssh-clients wget gettext unzip git &&  yum clean all && rm -rf /var/cache/yum
RUN wget $TERRAFORM_URL -O terraform.zip && unzip terraform.zip && mv terraform /bin && chmod +x /bin/terraform && rm -f terraform.zip 
