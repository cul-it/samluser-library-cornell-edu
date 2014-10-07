README.md
platform for samluser.library.cornell.edu and samluser6.library.cornell.edu

These sites are for maintaining the 'SimpleSAML Authentication for CUL' feature.

samluser is Drupal 7, samluser6 is Drupal 6

The drupal 6 version is in the 'samluser6' branch, the other is in the master.

This preconfigures some of the fields in the simplesamlphp_auth module admin page.
This includes checking off 'Reevaluate roles every time the user logs in.' This means that all site users have to be listed under 'Automatic role population from simpleSAMLphp attributes' in order to have their proper roles assigned. We're not allowing people to authenticate and automatically get accounts on the site ('Register users' is unchecked).
List all the site users under 'Automatic role population from simpleSAMLphp attributes:'

[role id, eg. 3 for administrator]:eduPersonPrincipalName,=,[cornell email]
followed by a | and another assignment if there are more

These are stored in the Drupal variable simplesamlphp_auth_rolepopulation. Since we don't want to clobber a site's user list when this 'simplesaml_authentication_cul' feature is reverted we are NOT including simplesamlphp_auth_rolepopulation in the list of variables strongarm sets when the feature is installed. This means you have to manually configure the roles the first time you install simplesamlphp_auth_rolepopulation, and whatever users you add will be preserved.

Users added manually via the Drupal User interface will not keep their roles/priveleges.
----------

After some evaluation:

If 'Register users' is unchecked valid users have to be already in the user list. It checks based on the cornell email field so the user name of the account doesn't have to exactly match the 'Which attribute from simpleSAMLphp should be used as user's name:' (displayName) field.

The role for a user set in 'Automatic role population from simpleSAMLphp attributes' overrides the role listed with the user. If a user is NOT listed there, whatever roles they have set in admin/user/user get wiped out when they log in.

What we want:
1. no automatic creation of user accounts
2. users & roles listed in only one place (not users here and roles there)

Maybe eduPersonEntitlement plus eduPersonScopedAffiliation is set up with something we could use to determine if someone is a library employee, but until there is a need for automatic account creation these automated roles are not useful.

see https://www.incommon.org/federation/attributesummary.html

---------

I tried hard to use the patch described here: https://www.drupal.org/node/1280930
It should have allowed us to authorize the existing users with simpleSAMLphp but it didn't work. Removing the patch.

Also attempts to set the authorization module in the authmap table failed.
So for now we have to
1. Automatically create accounts for users who succesfully log in via simpleSAML

Given that there may be lots of stray users in the user table /admin/people we can avoid looking at all of them by assigning roles to the users who need them in /admin/config/people/simplesamlphp_auth in the 'Automatic role population from simpleSAMLphp attributes' section. This will be the authoritative list of the sites users, so
2. users & roles listed in only one (authoritative) place

We'll check off 'Reevaluate roles every time the user logs in.' to be sure any roles listed in the user list /admin/people will be ignored.

The Feature with this setup in it will have to leave the automatic role population unspecified so the hosting site's users will stay intact as the Feature evolves & gets reverted etc.

..
