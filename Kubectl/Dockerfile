FROM rockylinux:8

RUN  	dnf install -y wget git && \
	dnf clean all && \
	rm -rf /var/cache/yum && \
	wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-x64.tar.xz && \
	tar xvfx node-v10.16.3-linux-x64.tar.xz && \
	mv node-v10.16.3-linux-x64/bin/* /bin/ && \
	mv node-v10.16.3-linux-x64/lib/* /lib/ && \
	rm -rf node-v10.16.3-linux-x64 && \
	npm install -g replace-env

RUN 	curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.22.1/bin/linux/amd64/kubectl && \
	chmod +x ./kubectl && \ 
	mv ./kubectl /bin/kubectl

RUN	wget https://github.com/kubecolor/kubecolor/releases/download/v0.3.0/kubecolor_0.3.0_linux_amd64.tar.gz && \
	tar xvfx kubecolor_0.3.0_linux_amd64.tar.gz && \
	mv kubecolor /bin/kubecolor && \
	chmod +x /bin/kubecolor && \
	rm -rf kubecolor_0.3.0_linux_amd64.tar.gz && \
	echo 'alias kubectl="kubecolor"' >> /etc/bashrc
