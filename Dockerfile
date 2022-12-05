FROM forderud/qtwasm

RUN apt install colordiff

COPY qmlformatcheck.sh /qmlformatcheck.sh

ENTRYPOINT ["/qmlformatcheck.sh"]
