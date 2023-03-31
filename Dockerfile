# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /FlaxEngine/
COPY flaxengine-editor-linux-x64 .
RUN chmod +x ./Binaries/Editor/Linux/Release/FlaxEditor
COPY platform-linux-x64 ./Source/Platforms/Linux
RUN ls -ltR
