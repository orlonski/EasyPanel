FROM debian:latest

# Instalar pacotes necessários
RUN apt update && apt install -y curl unzip

# Criar diretório para o EasyPanel
WORKDIR /easypanel

# Baixar e instalar EasyPanel manualmente
RUN curl -L https://github.com/easypanel-io/easypanel/releases/latest/download/easypanel-linux-amd64 -o easypanel \
    && chmod +x easypanel

# Expor a porta do EasyPanel
EXPOSE 3000

# Iniciar o EasyPanel
CMD ["./easypanel", "start"]
