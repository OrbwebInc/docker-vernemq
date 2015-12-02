FROM            debian:jessie
MAINTAINER      Allan Lei <allan.lei@orbweb.com>

COPY            entrypoint.sh /entrypoint.sh
RUN             chmod +x /entrypoint.sh

RUN             apt-get update && \
                # curl https://packagecloud.io/gpg.key | apt-key add - && \
                apt-get install -y curl && \
                curl https://packagecloud.io/install/repositories/erlio/vernemq/script.deb.sh | bash && \
                apt-get install -y vernemq

# ENTRYPOINT      ["/entrypoint.sh"]
# CMD             ["vernemq", "attach"]
