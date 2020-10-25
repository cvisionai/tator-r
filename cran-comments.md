## Resubmission
Hello, we were asked to address the following issues:

- Please always write package names, software names and API (application
  programming interface) names in single quotes in title and description.
  e.g: --> 'CVision'

- Please add a web reference for the API in the form <https:.....> to the
  description of the DESCRIPTION file with no space after 'https:' and
  angle brackets for auto-linking.

- Please add small executable examples in your Rd-files to illustrate the
  use of the exported function but also enable automatic testing.

We believe we have addressed these. Thank you.

## Test environments
* Local MacOS 10.15.5, R version 4.0.2
* Local Windows 10, R version 4.0.2
* win-builder (release)
* Ubuntu Linux 16.04 LTS, R-release (via r-hub)
* Fedora Linux, R-devel (via r-hub)

## R CMD check results
### Local MacOS: 
```
── R CMD check results ─────────────────────────── tator 0.0.3 ────
Duration: 6m 1.5s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```
### win-builder
1 NOTE:
```
* checking CRAN incoming feasibility ... NOTE
  Maintainer: 'CVision AI <info@cvisionai.com>'
```
From what we understand, this note can be ignored.
https://stackoverflow.com/questions/23829978/checking-cran-incoming-feasibility-note-maintainer

### R-hub
All builds had 1 Note, the same as the win-builder note.

## Tests
Because this package is mostly generated code to interact with
a specific OpenAPI REST service, the test suite requires account
credentials for a Tator server. We have skipped the tests for CRAN,
but have validated them on both platforms using:

`devtools::check(env_vars = c(NOT_CRAN = "false", TATOR_HOST = host, TATOR_TOKEN = token))`