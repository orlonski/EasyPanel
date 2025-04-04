FROM debian:latest

# Instalar pacotes necessários
RUN apt update && apt install -y curl unzip

# Baixar e instalar EasyPanel
RUN curl -fsSL https://easypanel.io/install.sh | sh

# Expor a porta usada pelo EasyPanel
EXPOSE 3000

# Comando para iniciar o EasyPanel
CMD ["easypanel", "start"]
