;; drush make file for samluser-dev.stg.library.cornell.edu
;;

core = 7.x
api = 2
projects[drupal][version] = "7.31"

projects[authnamer][directory_name] = "authnamer"
projects[authnamer][download][branch] = "master"
projects[authnamer][download][type] = "git"
projects[authnamer][download][url] = "git://github.com/jgreidy/authnamer.git"
projects[authnamer][subdir] = "custom"
projects[authnamer][type] = "module"
projects[ctools][version] = "1.4"
projects[entity][version] = "1.5"
projects[features][version] =  "2.2"
projects[features_extra] = "1.0-beta1"
projects[role_export][version] = "1.0"
projects[simplesaml_authentication_cul][download][type] = "get"
projects[simplesaml_authentication_cul][download][url] = "https://featureserver.library.cornell.edu/sites/featureserver.library.cornell.edu/files/fserver/simplesaml_authentication_for_cul-7.x-1.0-beta5.tar"
projects[simplesaml_authentication_cul][location] = "https://featureserver.library.cornell.edu/fserver"
projects[simplesaml_authentication_cul][type] = "module"
projects[simplesamlphp_auth][version] = "2.0-alpha2"
projects[simplesamlphp_auth][patch][] = "http://www.drupal.org/files/issues/simplesamlphp_auth-create-authmap-entries-1280930-29.patch"
projects[strongarm][version] = "2.0"
