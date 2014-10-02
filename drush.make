;; drush make file for samluser-dev.stg.library.cornell.edu
;;

core = 7.x
api = 2
projects[drupal][version] = "7.31"

projects[ctools][version] = "1.4"
projects[entity][version] = "1.5"
projects[features][version] =  "2.2"
projects[features_extra] = "1.0-beta1"
projects[role_export][version] = "1.0"
projects[simplesaml_authentication_cul][download][type] = "get"
projects[simplesaml_authentication_cul][download][url] = "https://featureserver.library.cornell.edu/sites/featureserver.library.cornell.edu/files/fserver/simplesaml_authentication-7.x-1.0-beta1.tar"
projects[simplesaml_authentication_cul][location] = https://featureserver.library.cornell.edu/fserver
projects[simplesaml_authentication_cul][type] = "module"
projects[simplesamlphp_auth][version] = "2.0-alpha2"
projects[strongarm][version] = "2.0"
