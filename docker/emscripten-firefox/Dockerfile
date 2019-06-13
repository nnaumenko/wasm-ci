FROM trzeci/emscripten-ubuntu:sdk-tag-1.38.32-64bit

ENV DISPLAY :10

RUN apt-get update -y && apt-get install -y --no-install-recommends firefox xvfb dbus-x11
COPY entrypoint.sh /entrypoint/entrypoint.sh
RUN ["chmod", "+x", "/entrypoint/entrypoint.sh"]

ENTRYPOINT ["/entrypoint/entrypoint.sh"]
