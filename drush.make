;; drush make file for samluser-dev.stg.library.cornell.edu
;;

core = 7.x
api = 2
projects[drupal][version] = "7.31"

projects[ctools][version] = "1.4"
projects[entity][version] = "1.5"
projects[features][version] =  "2.2"
projects[features_extra][version] = "1.0-beta1"
projects[features_tools][directory_name] = "features_tools"
projects[features_tools][download][type] = "get"
projects[features_tools][download][url] = "http://featureserver-dev.stg.library.cornell.edu/sites/featureserver-dev.stg.library.cornell.edu/files/fserver/features_tools-7.x-1.0-alpha6_0.tar"
projects[features_tools][location] = http://featureserver-dev.stg.library.cornell.edu/fserver
projects[features_tools][subdir] = "custom"
projects[features_tools][type] = "module"
projects[role_export][version] = "1.0"
projects[simplesaml_authentication_cul][download][type] = "get"
projects[simplesaml_authentication_cul][download][url] = "https://featureserver.library.cornell.edu/sites/featureserver.library.cornell.edu/files/fserver/simplesaml_authentication_for_cul-6.x-1.0-beta2.tar"
projects[simplesaml_authentication_cul][location] = https://featureserver.library.cornell.edu/fserver
projects[simplesaml_authentication_cul][type] = "module"
projects[simplesamlphp_auth][version] = "2.0-alpha2"
projects[strongarm][version] = "2.0"
projects[uuid][version] = "1.0-alpha6"
projects[uuid_features][version] = "1.0-alpha4"
projects[uuid_path][directory_name] = "uuid_path"
projects[uuid_path][download][branch] = "master"
projects[uuid_path][download][type] = "git"
projects[uuid_path][download][url] = "git://git.drupal.org/sandbox/jmorahan/1346170.git"
projects[uuid_path][type] = "module"
