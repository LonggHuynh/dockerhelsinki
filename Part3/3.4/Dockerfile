FROM docker:23-git



COPY ./builder.sh .

RUN chmod +x builder.sh

ENTRYPOINT ["/bin/sh", "builder.sh"]