FROM scratch

COPY ./alloc /alloc

ENTRYPOINT [ "/alloc" ]
