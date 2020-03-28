ARG DOTNET_CORE_VERSION=3.1

FROM mcr.microsoft.com/dotnet/core/sdk:${DOTNET_CORE_VERSION}

LABEL dotnet_core_version=${DOTNET_CORE_VERSION}

COPY NuGet.Config /root/.nuget/NuGet/
COPY apt.conf /etc/apt/apt.conf
COPY .curlrc /root/.curlrc

CMD ["bash"]