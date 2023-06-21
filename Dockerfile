# Imagem base com o JDK e Maven
FROM maven:3.8.4-openjdk-11

# Instalação do Git
# RUN apt-get update && apt-get install -y git

# Clone do projeto do GitHub
# RUN git clone https://github.com/GabrienConte/serverSO.git /app/so-example

# Diretório de trabalho
RUN mkdir -p /app/server-so-11
WORKDIR /app/server-so-11
ADD . /app/server-so-11

# Compilação e empacotamento do projeto
RUN mvn clean package

# Comando a ser executado quando o contêiner for iniciado
CMD ["java", "-jar", "/app/so-example/target/server-so-11.jar"]

