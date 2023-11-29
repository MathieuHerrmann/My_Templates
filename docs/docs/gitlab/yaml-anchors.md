---
sidebar_position: 5
---
# YAML Anchors

I'm using a functionnality of yaml that not well-known so there is a documentation about it that is made well: https://support.atlassian.com/bitbucket-cloud/docs/yaml-anchors/

TLDR; it's like a variable that you define and you can call it so for example: 

```yaml
my_yaml_anchor_image: &awesome_call
    my_image

jobs_name:
    image: *awesome_call
```

in this example the image of the job will be equal to : `my_image`