# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0
RUN apt update && apt install -y libx11-6
WORKDIR /FlaxEngine/
COPY flaxengine-editor-linux-x64 .
RUN chmod +x ./Binaries/Editor/Linux/Debug/FlaxEditor \
    ./Binaries/Editor/Linux/Development/FlaxEditor \
    ./Binaries/Editor/Linux/Release/FlaxEditor \
    ./Binaries/Tools/Flax.Build
COPY platform-linux-x64 ./Source/Platforms/Linux
