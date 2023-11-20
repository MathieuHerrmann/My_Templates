# Multi-env

## Usage

If you need to use this pipeline you need first of all copy all jobs that you need. For a terraform usage you can take all jobs in terraform and also the corresponding base. Then you can copy take what is in this folder.

You can define as many env as you want you have the example one but you can rename it `dev` or `staging` for a production environment you will maybe need more configuration or more jobs

The file `.gitlab-ci.yml` should be at the root of you repository and only include each environment that you create.

If you want to push the limit you can make an evironment that is temporary and could be replicate with playing with variables, i.e rather than the state take the name of the environment it can take the name of the branch. In that case the pipeline will generate a new envrionment according to the condition of trigger.
use case : "I want to have a ephemeral environment for each of my feature branch"