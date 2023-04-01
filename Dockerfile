# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /FlaxEngine/
COPY flaxengine-editor-linux-x64 .
RUN chmod +x ./Editor/Binaries/Editor/Linux/Debug/FlaxEditor \
    ./Editor/Binaries/Editor/Linux/Development/FlaxEditor \
    ./Editor/Binaries/Editor/Linux/Release/FlaxEditor \
    ./Editor/Binaries/Tools/Flax.Build
COPY platform-linux-x64 ./Source/Platforms/Linux
