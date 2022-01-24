FROM mcr.microsoft.com/powershell:latest

SHELL ["pwsh", "Command"]

WORKDIR /

ADD ["podeserver.ps1", "/app/"]

RUN Install-Module -Name Pode -Force

ENTRYPOINT ["pwsh", "-NoProfile", "-Command", "podeserver.ps1"]
