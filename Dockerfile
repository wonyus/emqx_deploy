FROM emqx:5.1.1

ENV EMQX_NODE_NAME=emqx@node1.emqx.io
ENV EMQX_CLUSTER__DISCOVERY_STRATEGY=static

EXPOSE 1883 8083 8084 8883 18083


# CMD ["emqx", "foreground"]
CMD ["emqx", "-p", "18083", "foreground"]

# CMD ["/opt/emqx/bin/emqx", , "-p", "18083", "foreground"]
# CMD ["emqx","start", "-p","1883" "-p","8083" "-p","8084", "-p","8883" "-p","18083"]
