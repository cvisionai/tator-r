## Test environments
* Local MacOS 10.15.5, R version 4.0.2
* Local Windows 10, R version 4.0.2
* win-builder (release)
* Ubuntu Linux 16.04 LTS, R-release (via r-hub)
* Fedora Linux, R-devel (via r-hub)

## R CMD check results
### Local MacOS: 
```
── R CMD check results ───────────────────── tator 0.0.1 ────
Duration: 2m 35.6s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```
### win-builder
1 NOTE:
```
Possibly mis-spelled words in DESCRIPTION:
  CVision (8:50)
  Tator (2:21, 8:39)
```
These are spelled correctly. CVision is our company name and Tator is the name of the service.


## Tests
Because this package is mostly generated code to interact with
a specific OpenAPI REST service, the test suite requires account
credentials for a Tator server. We have skipped the tests for CRAN,
but have validated them on both platforms using:

`devtools::check(env_vars = c(NOT_CRAN = "false", TATOR_HOST = host, TATOR_TOKEN = token))`