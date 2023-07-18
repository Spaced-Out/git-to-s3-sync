FROM python:3.10-alpine
RUN pip install --quiet --no-cache-dir awscli
ADD run-sync.sh /run-sync.sh
RUN chmod +x /run-sync.sh

ENTRYPOINT ["/run-sync.sh"]
