FROM centos
MAINTAINER James Tan <james.tan@mongodb.com>
 
COPY mongodb.repo /etc/yum.repos.d/
RUN yum install -y mongodb-org-tools
 
WORKDIR /tmp
ENTRYPOINT [ "mongoperf" ]
