A Heroku Buildpack to add Barricade Agent relay to any Dyno.

This buildpack automatically installs Barricade Agent to every Dyno you launch. 

### Prerequisites

Add Heroku Barricade add-on. To add the Barricade add-on, see Heroku's documentation, including available plan levels and Toolbelt procedures.

### Usage

This buildpack is typically used in conjunction with other language-specific buildpacks - see Heroku Language Buildpacks for more.

Here are some setup commands to add this buildpack to your project, as well as setting the required environment variables:

    heroku buildpacks:set heroku/java
    heroku buildpacks:add https://github.com/barricadeio/heroku-buildpack-barricade.git

Check configured buildpacks:

    heroku buildpacks

Now, configure an environmental variable required by Barricade buildpack with:

    heroku config:add BARRIACDE_AUTOMATION_KEY=<your automation key>

TODO: The step above may be unnecessary if the options described in this document works, https://devcenter.heroku.com/articles/add-on-provider-api

Push your application to Heroku

    git push heroku master
