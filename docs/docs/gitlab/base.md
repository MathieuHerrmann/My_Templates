---
sidebar_position: 3
---
# Base
Base file are there for regrouping job of a same scope that could be used also to setup the image of the jobs that are calls. It also used to define the common behaviour of jobs that are in the same jobs.

For the documentation of the Base file I will take the example of the `terraform_base.gitlab-ci.yml` file that could be find in the following path of the repository `GitlabCI/base/terraform_base.gitlab-ci.yml`

## Filename 

The file must be called following this naming :

`<scope>_base.gitlab-ci.yml` 

Where: 
- `scope` describe the role of the jobs that are called in the base.

The base files must be in the base folder that are called by environments.

## Include
First of all in the base file you need to include all of you jobs you want to deals with.

# Global base definition
you can define here a global definition for your base.


:::danger Beware

This configuration may be overwrite by the environment jobs

:::

## Jobs
### References
In the base files you can find out a YAML anchor defnition that is call `pre_script_global_common` it could be used to define a configuration for all environment or may be overwrite for a specific one if you want.

If you want to append this configuration in your environement you should make a [reference](https://docs.gitlab.com/ee/ci/yaml/yaml_optimization.html#reference-tags) directly in your environment

and looks like that: 
```yaml title="<env>.gitlab-ci.yml"
example:terraform:apply:
  <<: *example_setup
  extends: .terraform:apply
  needs: ["example:terraform:plan", "example:node:build"]
  before_script:
    - !reference [.terraform:apply, before_script]
    - *pre_script_env_common
```
So, you should put it in the first line of your `before_script` to append to configuration of your project that is define in the base file

```yaml title="<scope>_base.gitlab-ci.yml"
.terraform:apply:
  image: *terraform_image
  extends: .apply
  before_script:
    - *pre_script_global_common
```