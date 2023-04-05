# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0-jammy
RUN apt update && apt install -y libx11-dev libxcursor-dev libxinerama-dev zlib1g-dev clang lldb lld libcurl4-gnutls-dev
WORKDIR /FlaxEngine/
COPY flaxengine-editor-linux-x64 .
RUN chmod +x ./Binaries/Editor/Linux/Debug/FlaxEditor \
    ./Binaries/Editor/Linux/Development/FlaxEditor \
    ./Binaries/Editor/Linux/Release/FlaxEditor \
    ./Binaries/Tools/Flax.Build
COPY Linux ./Source/Platforms/Linux
