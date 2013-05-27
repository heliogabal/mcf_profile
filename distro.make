; make_chocolate_fair make file for local development
core = "7.x"
api = "2"

;projects[drupal][version] = "7.x"
;Use Omega8 core instead of Drupal core:
;projects[drupal][type] = "core"
;projects[drupal][download][type] = "get"
;projects[drupal][download][url] = "http://files.aegir.cc/dev/drupal-7.22.1.tar.gz"

; include the d.o. profile base
;includes[] = "drupal-org.make"

; include mcf profile from github
;projects[make_chocolate_fair][type] = "profile"
;projects[make_chocolate_fair][download][type] = "git"
;projects[make_chocolate_fair][download][url] = "git@github.com:heliogabal/mcf_profile.git"
;projects[make_chocolate_fair][download][branch] = "master"

; +++++ Modules +++++

projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = "contrib"

projects[fpa][version] = "2.2"
projects[fpa][subdir] = "contrib"

projects[bean][version] = "1.1"
projects[bean][subdir] = "contrib"

projects[filefield_nginx_progress][version] = "2.3"
projects[filefield_nginx_progress][subdir] = "contrib"

;projects[location][version] = "3.0-rc1"
;projects[location][subdir] = "contrib"

projects[addressfield][version] = "1.0-beta4"
projects[addressfield][subdir] = "contrib"

projects[ctools][version] = "1.3"
projects[ctools][subdir] = "contrib"

projects[context][version] = "3.0-beta6"
projects[context][subdir] = "contrib"

projects[date][version] = "2.6"
projects[date][subdir] = "contrib"

projects[profiler_builder][version] = "1.0-rc4"
projects[profiler_builder][subdir] = "contrib"

projects[ds][version] = "2.2"
projects[ds][subdir] = "contrib"

projects[domain][version] = "3.9"
projects[domain][subdir] = "contrib"

projects[domain_locale][version] = "1.0-beta1"
projects[domain_locale][subdir] = "contrib"

projects[features][version] = "2.0-beta2"
projects[features][subdir] = "contrib"

projects[features_extra][version] = "1.0-beta1"
projects[features_extra][subdir] = "contrib"

projects[uuid][version] = "1.0-alpha4"
projects[uuid][subdir] = "contrib"

projects[uuid_features][version] = "1.0-alpha3"
projects[uuid_features][subdir] = "contrib"

;projects[inkota_base][type] = module
;projects[inkota_base][location] = http://features.otro-mundo.org/fserver
;projects[inkota_base][version] = "1.0-alpha1"
;projects[inkota_base][subdir] = "features"

projects[inkota_petition][type] = module
projects[inkota_petition][location] = http://features.otro-mundo.org/fserver
projects[inkota_petition][version] = "1.0-alpha2"
projects[inkota_petition][subdir] = "features"

projects[mcf_content][type] = module
projects[mcf_content][location] = http://features.otro-mundo.org/fserver
projects[mcf_content][version] = "1.0-alpha1"
projects[mcf_content][subdir] = "features"

projects[name][version] = "1.9"
projects[name][subdir] = "contrib"
;projects[name][patch][] = "http://drupal.org/files/name-feature_export_error-1987018-15.patch"
;projects[name][patch][] = "http://drupal.org/files/name-1987018-19-features-followup.patch"

projects[simplenews][version] = "1.0"
projects[simplenews][subdir] = "contrib"

projects[media][version] = "1.3"
projects[media][subdir] = "contrib"

projects[media_youtube][version] = "2.0-rc3"
projects[media_youtube][subdir] = "contrib"

projects[entity_translation][version] = "1.0-beta2"
projects[entity_translation][subdir] = "contrib"

projects[i18n][version] = "1.8"
projects[i18n][subdir] = "contrib"

projects[breakpoints][version] = "1.0"
projects[breakpoints][subdir] = "contrib"

projects[entity][version] = "1.1"
projects[entity][subdir] = "contrib"

projects[field-conditional-state][version] = "1.0"
projects[field-conditional-state][subdir] = "contrib"

projects[google_fonts][version] = "2.3"
projects[google_fonts][subdir] = "contrib"

projects[libraries][version] = "2.1"
projects[libraries][subdir] = "contrib"

projects[link][version] = "1.1"
projects[link][subdir] = "contrib"
projects[link][patch][] = "http://drupal.org/files/Fixed_title_value_in_link_field_update_instance_undefined-1914286-3.patch"
projects[link][patch][] = "http://drupal.org/files/link-fix-undefined-index-widget-1918850-9.patch"

projects[module_filter][version] = "1.7"
projects[module_filter][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[pgbar][version] = "1.0"
projects[pgbar][subdir] = "contrib"

projects[redirect][version] = "1.0-rc1"
projects[redirect][subdir] = "contrib"

projects[robotstxt][version] = "1.1"
projects[robotstxt][subdir] = "contrib"

projects[socialshareprivacy][version] = "1.10"
projects[socialshareprivacy][subdir] = "contrib"

projects[token][version] = "1.5"
projects[token][subdir] = "contrib"

projects[transliteration][version] = "3.1"
projects[transliteration][subdir] = "contrib"

projects[web_widgets][version] = "1.0-alpha2"
projects[web_widgets][subdir] = "contrib"

projects[entitycache][version] = "1.x-dev"
projects[entitycache][subdir] = "contrib"

projects[picture][version] = "1.1"
projects[picture][subdir] = "contrib"

projects[rules][version] = "2.3"
projects[rules][subdir] = "contrib"

projects[metatag][version] = "1.0-beta7"
projects[metatag][subdir] = "contrib"

projects[tagclouds][version] = "1.9"
projects[tagclouds][subdir] = "contrib"

projects[delta][version] = "3.0-beta11"
projects[delta][subdir] = "contrib"

projects[omega_tools][version] = "3.0-rc4"
projects[omega_tools][subdir] = "contrib"

projects[omega_ui][version] = "2.x-dev"
projects[omega_ui][subdir] = "contrib"

;projects[tmgmt][version] = "1.0-alpha3"
;projects[tmgmt][subdir] = "contrib"

projects[addanother][version] = "2.1"
projects[addanother][subdir] = "contrib"

projects[node_export][version] = "3.0"
projects[node_export][subdir] = "contrib"

projects[bundle_copy][version] = "1.1"
projects[bundle_copy][subdir] = "contrib"

projects[wysiwyg][version] = "2.2"
projects[wysiwyg][subdir] = "contrib"

projects[variable][version] = "2.2"
projects[variable][subdir] = "contrib"

projects[views][version] = "3.7"
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.1"
projects[views_bulk_operations][subdir] = "contrib"

projects[webform][version] = "3.18"
projects[webform][subdir] = "contrib"

projects[webform_confirm_email][version] = "1.x-dev"
projects[webform_confirm_email][subdir] = "contrib"

projects[webform_rules][version] = "1.6"
projects[webform_rules][subdir] = "contrib"

projects[webform_simplenews][version] = "1.x-dev"
projects[webform_simplenews][subdir] = "contrib"

projects[workbench][version] = "1.2"
projects[workbench][subdir] = "contrib"

projects[workbench_media][version] = "1.1"
projects[workbench_media][subdir] = "contrib"

; +++++ Themes +++++

; andromeda
;projects[andromeda][type] = "theme"
;projects[andromeda][version] = "2.x-dev"
;projects[andromeda][subdir] = "contrib"

; foodjustice_blog
;projects[foodjustice_blog][type] = "theme"
;projects[foodjustice_blog][version] = "1.6"
;projects[foodjustice_blog][subdir] = "contrib"

; omega
projects[omega][type] = "theme"
projects[omega][version] = "4.0-beta3"
projects[omega][subdir] = "contrib"

projects[mcf_theme][type] = "theme"
projects[mcf_theme][location] = http://features.otro-mundo.org/fserver

; poultry
;projects[poultry][type] = "theme"
;projects[poultry][version] = "1.0"
;projects[poultry][subdir] = "contrib"

; responsive_blog
;projects[responsive_blog][type] = "theme"
;projects[responsive_blog][version] = "1.6"
;projects[responsive_blog][subdir] = "contrib"

; rubik
projects[rubik][type] = "theme"
projects[rubik][version] = "4.0-beta8"
projects[rubik][subdir] = "contrib"

; shiny
;projects[shiny][type] = "theme"
;projects[shiny][version] = "1.1"
;projects[shiny][subdir] = "contrib"

; tao
;projects[tao][type] = "theme"
;projects[tao][version] = "3.0-beta4"
;projects[tao][subdir] = "contrib"

; tine
;projects[tine][type] = "theme"
;projects[tine][version] = "2.x-dev"
;projects[tine][subdir] = "contrib"

; +++++ Libraries +++++

; ColorBox
;libraries[colorbox][directory_name] = "colorbox"
;libraries[colorbox][type] = "library"
;libraries[colorbox][destination] = "libraries"
;libraries[colorbox][download][type] = "get"
;libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/colorbox.zip"

; CKEditor
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"
libraries[ckeditor][destination] = "libraries"
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.tar.gz"

; socialshareprivacy
libraries[socialshareprivacy][directory_name] = "socialshareprivacy"
libraries[socialshareprivacy][type] = "library"
libraries[socialshareprivacy][destination] = "libraries"
libraries[socialshareprivacy][download][type] = "get"
libraries[socialshareprivacy][download][url] = "http://www.heise.de/extras/socialshareprivacy/jquery.socialshareprivacy.tar.gz"

; nivo-slider
;libraries[nivo-slider][directory_name] = "nivo-slider"
;libraries[nivo-slider][type] = "library"
;libraries[nivo-slider][destination] = "libraries"
;libraries[nivo-slider][download][type] = "get"
;libraries[nivo-slider][download][url] = "" ; TODO add download URI
