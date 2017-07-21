FROM alpine:3.6

COPY fill_disk.sh /fill_disk.sh

ENTRYPOINT [ "/bin/sh", "/fill_disk.sh" ]
