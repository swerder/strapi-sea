# Changelog

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
