FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-0001-223"

LABEL MAINTAINER dj@devops.com
#RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +X /code/Sample.sh
RUN echo "LICENSE KEY IS "$LICENSE_KEY
WORKDIR /code
#ENTRYPOINT ["sh","Sample.sh"]
CMD sh Sample.sh testfile
