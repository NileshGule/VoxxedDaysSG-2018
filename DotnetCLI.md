# Commands related to Dotnet Core CLI

## Create solution and project structure

### Create Solution named `VDSG2018`

```bash
dotnet new sln --name VDSG2018
```

### Create ASP.NET Core MVC Web project named `TechTalksWeb`

```bash
dotnet new mvc --output TechTalksWeb
```

### Add `TechTalksWeb` web project to `VDSG2018` solution

```bash
dotnet sln add ./TechTalksWeb/TechTalksWeb.csproj
```

### Create ASP.NET Core Web API project named `TechTalksAPI`

```bash
dotnet new webapi --output TechTalksAPI
```

### Add `TechTalksAPI` api project to `VDSG2018` solution

```bash
dotnet sln add ./TechTalksAPI/TechTalksAPI.csproj
```

### Create Dot.NET Core exe project named `TechTalksMQProcessor`

```bash
dotnet new console --output TechTalksMQProcessor
```

### Add `TechTalksMQProcessor` project to `VDSG2018` solution

```bash
dotnet sln add ./TechTalksMQProcessor/TechTalksMQProcessor.csproj
```

### Add `Newtonsoft.Json` package

```bash
dotnet add package Newtonsoft.Json
```

### Create class library project named `TechTalksModel`

```bash
dotnet new classlib --output TechTalksModel
```

### Add `Microsoft.EntityFrameworkCore` & `Microsoft.EntityFrameworkCore.SqlServer` packages to TechTalksModel project

```bash
dotnet add package Microsoft.EntityFrameworkCore

dotnet add package Microsoft.EntityFrameworkCore.SqlServer
```

### Add `TechTalksModel` api project to `VDSG2018` solution

```bash
dotnet sln add ./TechTalksModel/TechTalksModel.csproj
```

### Add `TechTalksModel` project reference to `TechTalksAPI` project

```bash
dotnet add reference ../TechTalksModel/TechTalksModel.csproj
```

### Add `Automapper` to the project

```bash
dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection
```

### Create Dot.NET Core exe project named `TechTalksELKProcessor`

```bash
dotnet new console --output TechTalksELKProcessor
```

### Add `TechTalksELKProcessor` api project to `VDSG2018` solution

```bash
dotnet sln add ./TechTalksELKProcessor/TechTalksELKProcessor.csproj
```

### Add `NEST` package to the project `TechTalksELKProcessor`

```bash
dotnet add package NEST
```

### Add `ElasticSearch.Net` package to the project `TechTalksELKProcessor`

```bash
dotnet add package ElasticSearch.Net
```

### Add `RabbitMQ.Client` package

```bash
dotnet add package RabbitMQ.Client
```

/usr/local/microsoft/powershell/6.0.2/pwsh; exit