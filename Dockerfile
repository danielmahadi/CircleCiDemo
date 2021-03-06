FROM microsoft/dotnet:1.1.2-runtime

# Set environment variables 
ENV ASPNETCORE_URLS="http://*:5000" 
ENV ASPNETCORE_ENVIRONMENT="Production" 

# Create app directory
RUN mkdir /app

# Set working directory 
WORKDIR /app

# Copy from source 
COPY ./CircleCiDemo/publish .

# Open port 
EXPOSE 5000/tcp 

ENTRYPOINT ["dotnet", "CircleCiDemo.dll"]