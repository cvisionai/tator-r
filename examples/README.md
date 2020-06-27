# Examples

| Example | Description |
| ------- | ----------- |
| [Project setup](setup_project.R) | Create a project, video type, image type, box type, line type, and dot type. Each type has an example of every attribute type definition. |

# Running examples from the shell
## Make sure R executables are in your $PATH
```shell
$ which R
```
If it is not:
```shell
# Windows
$ export PATH=$PATH:/c/Program\ Files/R/R-4.0.2/bin
# MacOS/Linux
$ export PATH=$PATH:/path/to/R
```
## Build the package
```shell
$ ./build.sh
```
## Run an example
```shell
$ Rscript examples/setup_project.R --host="https://xxx.tator.dev" --token="xxxxxx"
```