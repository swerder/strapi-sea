# Changelog

## 5.27.0

- update node module patch files for Strapi 5.27.0

## 5.26.0

- update node module patch files for Strapi 5.26.0

## 5.25.0

- update node module patch files for Strapi 5.25.0

## 5.24.2

- update node module patch files for Strapi 5.24.2

## 5.24.1

- update node module patch files for Strapi 5.24.1

## 5.23.6

- update node module patch files for Strapi 5.23.6

## 5.23.3

- update node module patch files for Strapi 5.23.3

## 5.23.0

- update node module patch files for Strapi 5.23.0
- override version of tsx, esbuild, inquirer and koa to fix vulnerabilities

## 5.22.0

- update node module patch files for Strapi 5.22.0

## 5.21.0

- update node module patch files for Strapi 5.21.0

## 5.20.0

- update node module patch files for Strapi 5.20.0

## 5.19.0

- update node module patch files for Strapi 5.19.0

## 5.18.1

- update node module patch files for Strapi 5.18.1
- better categorize and document Webpack externals(=excludes)
- add generic mock for unused dependencies that are still "loaded" (cannot mark as externals)

## 5.17.0

- update node module patch files for Strapi 5.17.0

## 5.16.1

- update node module patch files for Strapi 5.16.1

## 5.15.1

- update node module patch files for Strapi 5.15.1

## 5.14.0

- update node module patch files for Strapi 5.14.0

## 5.13.1

- update node module patch files for Strapi 5.13.1

## 5.12.7

- update node module patch files for Strapi 5.12.7
- exclude typescript dependency by mocking '@strapi/typescript-utils'
- add postject as dev dependency to allow call without internet connection
- add webpack logic for bundle 'bufferutil' and 'utf-8-validate', as 'ws' is now realy loaded in sea context for @strapi/data-transfer
- add optional patch apply logic for optional packages

## 5.11.1

- update node module patch files for Strapi 5.11.1
- remove override vite version
- implement webpack logic for migrations
- fix / exclude some webpack dynamic import problems
- comment out strapi update check in webpack context

## 5.11.0

- update node module patch files for Strapi 5.11.0
- remove override koa version

## 5.10.4

- add script to partly apply patches and prepare compare directory
- update node module patch files for Strapi 5.10.4
- override koa + vite version for fix vulnerabilities

## 5.9.0

- add script to regenerate patches
- update node module patch files for Strapi 5.9.0
- make favicon.png work also

## 5.8.1

- initial implementation of the SEA logic
- webpack config to handle dynamic loading of Strapi
- node module patch files for Strapi 5.8.1
- scripts for easy build and generate SEA executable for linux / mac / windows
- github action for generate executables on release tags
- setup seed config/data mechanic
