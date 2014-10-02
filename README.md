README.md
platform for samluser.library.cornell.edu and samluser6.library.cornell.edu

These sites are for maintaining the 'SimpleSAML Authentication for CUL' feature.

samluser is Drupal 7, samluser6 is Drupal 6

The drupal 6 version is in the 'samluser6' branch, the other is in the master.

This preconfigures some of the fields in the simplesamlphp_auth module admin page.
This includes checking off 'Reevaluate roles every time the user logs in.' This means that all site users have to be listed under 'Automatic role population from simpleSAMLphp attributes' in order to have their proper roles assigned. We're not allowing people to authenticate and automatically get accounts on the site ('Register users' is unchecked).
List all the site users under 'Automatic role population from simpleSAMLphp attributes:'

<role id, eg. 3 for administrator>:eduPersonPrincipalName,=,<cornell email>
followed by a | and another assignment if there are more

These are stored in the Drupal variable simplesamlphp_auth_rolepopulation. Since we don't want to clobber a site's user list when this 'simplesaml_authentication_cul' feature is reverted we are NOT including simplesamlphp_auth_rolepopulation in the list of variables strongarm sets when the feature is installed. This means you have to manually configure the roles the first time you install simplesamlphp_auth_rolepopulation, and whatever users you add will be preserved.

Users added manually via the Drupal User interface will not keep their roles/priveleges.
