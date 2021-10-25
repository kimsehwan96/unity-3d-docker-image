FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade && \
    apt-get install -y libgtk-3-0 libgconf-2-4 libgtk2.0-0 libgtk-3-0

# Download  Unity Setup File (This version is 2019.4.01f)
RUN wget http://beta.unity3d.com/download/0af376155913/UnitySetup
RUN mkdir -p /root/unity/ && cp UnitySetup /root/unity
RUN chmod +x UnitySetup && ./UnitySetup --components=All --unattended --install-location=.
