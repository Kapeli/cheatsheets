cheatsheet do
  title 'CircleCI Standard Variables'               # Will be displayed by Dash in the docset list
  docset_file_name 'CircleCI'    # Used for the filename of the docset
  keyword 'circleci'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Contains standard enviromental variables and pipeline variables that CircleCI injects into your job'

  # A cheat sheet must consist of categories
 category do
   id 'Enviromental Variables'  # Must be unique and is used as title of the category
 
   entry do
     name 'CI'
     notes %|(Boolean) true (represents whether the current environment is a CI environment)|
   end
   
   entry do
     name 'CIRCLECI'
     notes %|(Boolean) true (represents whether the current environment is a CircleCI environment)|
   end

   entry do
     name '`CIRCLE_BRANCH`'
     notes %|(String) The name of the Git branch currently being built.|
   end

   entry do
     name '`CIRCLE_BUILD_NUM`'
     notes %|(Integer) The number of the current job. Job numbers are unique for each job.|
   end

   entry do
     name '`CIRCLE_BUILD_URL`'
     notes %|(String) The URL for the current job on CircleCI.|
   end

   entry do
     name '`CIRCLE_JOB`'
     notes %|(String) The name of the current job.|
   end
   
	entry do
     name '`CIRCLE_NODE_INDEX`'
     notes %|(Integer) For jobs that run with parallelism enabled, this is the index of the current parallel run. The value ranges from 0 to (CIRCLE_NODE_TOTAL - 1).|
   end

   entry do
     name '`CIRCLE_NODE_TOTAL`'
     notes %|(Integer) For jobs that run with parallelism enabled, this is the number of parallel runs. This is equivalent to the value of parallelism in your config file..|
   end

   entry do
     name '`CIRCLE_PR_NUMBER`'
     notes %|(Integer) The number of the associated GitHub or Bitbucket pull request. Only available on forked PRs.|
   end
		
   entry do
     name '`CIRCLE_PR_REPONAME`'
     notes %|(String) TThe name of the GitHub or Bitbucket repository where the pull request was created. Only available on forked PRs.|
   end
		
   entry do
     name '`CIRCLE_PR_USERNAME`'
     notes %|(String) The GitHub or Bitbucket username of the user who created the pull request. Only available on forked PRs.|
   end

   entry do
     name '`CIRCLE_PREVIOUS_BUILD_NUM`'
     notes %|(String) The number of previous builds on the current branch.|
   end
		
   entry do
     name '`CIRCLE_PROJECT_REPONAME`'
     notes %|(String) The name of the repository of the current project.|
   end
		
   entry do
     name '`CIRCLE_PROJECT_USERNAME`'
     notes %|(String) The GitHub or Bitbucket username of the current project.|
   end		
   
   entry do
     name '`CIRCLE_PULL_REQUEST`'
     notes %|(String) The URL of the associated pull request. If there are multiple associated pull requests, one URL is randomly chosen.|
   end   

   entry do
     name '`CIRCLE_PULL_REQUESTS`'
     notes %|(List) Comma-separated list of URLs of the current build’s associated pull requests.|
   end   
   
	entry do
     name '`CIRCLE_REPOSITORY_URL`'
     notes %|(String) The URL of your GitHub or Bitbucket repository.|
   end 
   
   entry do
     name '`CIRCLE_SHA1`'
     notes %|(String) The SHA1 hash of the last commit of the current build.|
   end     
   
   entry do
     name '`CIRCLE_TAG`'
     notes %|(String) The name of the git tag, if the current build is tagged. |
   end     
   
   entry do
     name '`CIRCLE_USERNAME`'
     notes %|(String) The GitHub or Bitbucket username of the user who triggered the pipeline (only if the user has a CircleCI account).|
   end     

   entry do
     name '`CIRCLE_WORKFLOW_ID`'
     notes %|(String) A unique identifier for the workflow instance of the current job. This identifier is the same for every job in a given workflow instance.|
   end     

   entry do
     name '`CIRCLE_WORKFLOW_WORKSPACE_ID`'
     notes %|(String) An identifier for the workspace of the current job. This identifier is the same for every job in a given workflow.|
   end     
   
   entry do
     name '`CIRCLE_WORKING_DIRECTORY`'
     notes %|(String) The value of the working_directory key of the current job.|
   end
   
  end

  category do
   id 'Pipeline Variables'
   
   entry do
     name 'pipeline.id'
     notes %|(String) A globally unique id representing for the pipeline.|
   end
    
   entry do
     name 'pipeline.number'
     notes %|(Integer) A project unique integer id for the pipeline.|
   end
   
   entry do
     name 'pipeline.project.git_url'
     notes %|(String) The URL where the current project is hosted. For example, https://github.com/circleci/circleci-docs.|
   end   
   
    entry do
     name 'pipeline.project.type'
     notes %|(String) The lower-case name of the VCS provider, E.g. “github”, “bitbucket”.|
   end  
   
    entry do
     name 'pipeline.git.tag'
     notes %|(String) The name of the git tag that was pushed to trigger the pipeline. If the pipeline was not triggered by a tag, then this is the empty string.|
   end    
   
   entry do
     name 'pipeline.git.branch'
     notes %|(Integer) The name of the git branch that was pushed to trigger the pipeline.|
   end   
   
    entry do
     name 'pipeline.git.revision'
     notes %|(Integer) The long (40-character) git SHA that is being built.|
   end  
   
   entry do
     name 'pipeline.git.base_revision'
     notes %|(String) The long (40-character) git SHA of the build prior to the one being built. Note: While in most cases pipeline.git.base_revision will be the SHA of the pipeline that ran before your currently running pipeline, there are some caveats. When the build is the first build for a branch, the variable will not be present. In addition, if the build was triggered via the API, the variable will not be present.|
   end   
   
    entry do
     name 'pipeline.in_setup'
     notes %|(Boolean) True if the pipeline is in the setup phase, i.e. running a setup workflow.|
   end
   
   entry do
     name 'pipeline.trigger_source'
     notes %|(String) The source that triggers the pipeline, current values are webhook, api, scheduled_pipeline.|
   end      
   
    entry do
     name 'pipeline.schedule.name'
     notes %|(String) The name of the schedule if it is a scheduled pipeline. Value will be empty string if the pipeline is triggerd by other sources.|
   end    
   
   entry do
     name 'pipeline.schedule.id'
     notes %|(String) The unique id of the schedule if it is a scheduled pipeline. Value will be empty string if the pipeline is triggerd by other sources.|
   end    
  end  
end	
