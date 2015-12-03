# Foodcritic-Rules-Optoro

Extends foodcritic with additional rules for Optoro Cookbooks

# Rules

## OP001 - All Cookbooks must have an MIT license in metadata
All Optoro cookbooks need to have the MIT license specified in the metadta.rb file

## OP002 - Missing MIT license
A MIT LICENSE file must be present in all Optoro cookbooks

## OP003 - maintainer_email must be set to devops@optoro.com in metadata
Set maintainer_email in metadata.rb to devops@optoro.com

## OP004 - Use kitchen-ec2 version 0.10.0 or higher
Kitchen-ec2 version 0.10.0 is the minimum version required

## OP005 - Use berkshelf version 4.00 or higher
Berkshelf version 4.0 is the minimum version required

## OP006 - Thor must be in Gemfile
thor gem must be included in the Gemfile

## OP007 - Must have Thorfile
You must include a Thorfile in your cookbook

## OP008 - No Strainerfile allowed
Strainerfiles are no longer used in cookbooks, should be removed

## OP009 - Include a chefspec test for every recipe
Every recipe must have a spec file associated with it

## OP010 - Thorfile food critic test must include -G
Your Thorfile must include the -G option when foodcritic is run, this is required to get these rules evaluated during the test
e.g. - ```execute_command('bundle exec foodcritic -f any -B ./ -G')```
