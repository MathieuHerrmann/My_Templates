---
sidebar_position: 2
---
# Jobs

A folder that contain file with a single job to be call by base files

## Filename 

The file must be called following this naming :

`<name>.gitlab-ci.yml` 

Where: 
- `name`is the name of the job inside the file.

The jobs files must be in the job folder corresponding to the good scope that are called by base files.

`jobs/<scope>/<name>.gitlab-ci.yml`