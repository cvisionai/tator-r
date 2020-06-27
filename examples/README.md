# Examples

| Example | Description |
| ------- | ----------- |
| [Project setup](setup_project.R) | Create a project, video type, image type, box type, line type, and dot type. Each type has an example of every attribute type definition. |

# Running examples from the shell
## Make sure R executables are in your $PATH
```shell
# Windows (PowerShell)
> (get-command R.exe).Path
# MacOS, Linux or Windows w/ Git Bash, MINGW
$ which R
```
If it is not:
```shell
# Windows (PowerShell)
> $env:Path = $env:Path + ";" + "C:\Program Files\R\R-<YOUR VERSION>\bin"
# MacOS/Linux or Windows w/ Git Bash, MINGW
$ export PATH=$PATH:/path/to/R/version/bin
```
## Build the package
```shell
# Windows (PowerShell)
> build.bat
# MacOS/Linux or Windows w/ Git Bash, MINGW
$ ./build.sh
```
## Run an example
```shell
$ Rscript examples/setup_project.R --host="https://xxx.tator.dev" --token="xxxxxx"
```