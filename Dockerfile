# syntax=docker/dockerfile:1

# FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env
# WORKDIR /app
# COPY . .
# RUN ls -ltR
# RUN dotnet --version
# RUN dotnet publish -c Release -o ./publish
# RUN ls -ltR

FROM mcr.microsoft.com/dotnet/runtime:7.0 as runtime
WORKDIR /app/
# COPY --from=build-env /app/publish .
RUN ls -ltR
COPY flaxengine-editor-linux-x64 .
COPY platform-linux-x64 .
RUN ls -ltR
ENTRYPOINT ["dotnet", "dotnet7-docker-test.dll"]
