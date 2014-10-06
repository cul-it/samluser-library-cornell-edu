;; drush make file for samluser6-dev.stg.library.cornell.edu
;;

core = 6.x
api = 2
projects[drupal][version] = "6.33"

projects[ctools][version] = "1.11"
projects[features][version] =  "1.2"
projects[role_export][version] = "1.0"
projects[simplesaml_authentication_cul][download][type] = "get"
projects[simplesaml_authentication_cul][download][url] = "https://featureserver.library.cornell.edu/sites/featureserver.library.cornell.edu/files/fserver/simplesaml_authentication_for_cul-6.x-1.0-beta5.tar"
projects[simplesaml_authentication_cul][location] = https://featureserver.library.cornell.edu/fserver
projects[simplesaml_authentication_cul][type] = "module"
projects[simplesamlphp_auth][version] = "2.7"
projects[strongarm][version] = "2.2"
