# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /FlaxEngine/
COPY flaxengine-editor-linux-x64 .
RUN chmod +x ./Binaries/Editor/Linux/Debug/FlaxEditor; \
    chmod +x ./Binaries/Editor/Linux/Development/FlaxEditor; \
    chmod +x ./Binaries/Editor/Linux/Release/FlaxEditor; \
    chmod +x ./Binaries/Tools/Flax.Build
COPY platform-linux-x64 ./Source/Platforms/Linux
