FROM panubo/sshd:latest
COPY run.sh /
RUN chmod +x /run.sh
ENV SSH_ENABLE_ROOT=true
EXPOSE 22

ENTRYPOINT ["/run.sh"]
