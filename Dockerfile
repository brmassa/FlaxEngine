# syntax=docker/dockerfile:1

# FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env
# WORKDIR /app
# COPY . .
# RUN ls -ltR
# RUN dotnet --version
# RUN dotnet publish -c Release -o ./publish
# RUN ls -ltR

FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /FlaxEngine/
# COPY --from=build-env /app/publish .
# RUN ls -ltR
COPY flaxengine-editor-linux-x64 .
COPY platform-linux-x64 ./Editor/Source/Platforms/Linux
RUN ls -ltR
# ENTRYPOINT ["dotnet", "dotnet7-docker-test.dll"]
