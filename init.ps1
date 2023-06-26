Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install -y dotnet-7.0-sdk
tzutil /s "Tokyo Standard Time"
dotnet new worker -n lab9 -o ~/Desktop/lab9
code ~/Desktop/lab9
