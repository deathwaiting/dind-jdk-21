FROM docker:dind

#install temurin JDK-21
RUN wget -q https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.4%2B7/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.4_7.tar.gz && \
    mkdir -p /opt/jdk-21 && \
    tar -xzf OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.4_7.tar.gz -C /opt/jdk-21 --strip-components=1 && \
    rm OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.4_7.tar.gz

# Set environment variables
ENV JAVA_HOME=/opt/jdk-21
ENV PATH=$PATH:$JAVA_HOME/bin