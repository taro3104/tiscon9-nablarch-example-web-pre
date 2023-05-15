FROM gitpod/workspace-full

USER root

# Maven 3.8.0のインストール
RUN wget -q "https://apache.osuosl.org/maven/maven-3/3.8.0/binaries/apache-maven-3.8.0-bin.tar.gz" \
    && tar -xf apache-maven-3.8.0-bin.tar.gz -C /opt/ \
    && ln -s /opt/apache-maven-3.8.0/bin/mvn /usr/local/bin/mvn

USER gitpod

# Gitpod起動時にMavenのバージョンをチェック
RUN mvn --version
