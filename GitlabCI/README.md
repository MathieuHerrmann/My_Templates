## base
Base file are there for regrouping job of a same scope that could be used also to setup the image of the jobs that are calls. It also used to define the common behaviour of jobs that are in the same jobs 

## Jobs

A folder that contain file with a single job to be call by base files

## Pipelines

The pipeline call many base to build the final one it's there where you can define the pre-script of each job. If a job has a common behaviours beetween every environnement you can define the pre-scipt at the base level but it's overright at the if you redifine at Pipeline level


## YAML ANCHORS

I'm using a functionnality of yaml that not well-known so there is a documentation about it that is made well: https://support.atlassian.com/bitbucket-cloud/docs/yaml-anchors/

TLDR; it's like a variable that you define and you can call it so for example: 

```yaml
my_yaml_anchor_image: &awesome_call
    my_image

jobs_name:
    image: *awesome_call
```

in this example the image of the job will be equal to : `my_image`