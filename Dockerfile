FROM microsoft/aspnetcore-build:2.0.0-nanoserver AS Build

COPY . .

RUN dotnet publish --configuration Release --framework netcoreapp2.0 --output /output



ENV ASPNETCORE_URLS http://+:80
EXPOSE 80

WORKDIR /output

ENTRYPOINT ["dotnet", "auth.protolabs.com.dll"]