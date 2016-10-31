; make_chocolate_fair make file for d.o. usage
core = "7.x"
api = "2"

; +++++ Modules +++++

projects[advagg][version] = "2.17"
projects[advagg][subdir] = "contrib"

projects[httprl][version] = "1.14"
patch[httprl][subdir] = "contrib"

projects[addtoany][version] = "4.12"
projects[addtoany][subdir] = "contrib"

projects[admin_menu][version] = "3.0-rc5"
projects[admin_menu][subdir] = "contrib"

projects[quickbar][version] = "2.0-beta2"
projects[quickbar][subdir] = contrib

projects[admin_theme][version] = "1.0"
projects[admin_theme][subdir] = "contrib"

projects[admin_views][version] = "1.6"
projects[admin_views][subdir] = "contrib"

projects[admin_language][version] = "1.0-beta3"
projects[admin_language][subdir] = "contrib"

projects[fitvids][version] = "1.17"
projects[fitvids][subdir] = contrib

projects[fpa][version] = "2.6"
projects[fpa][subdir] = "contrib"

;projects[feeds][version] = "2.0-alpha8"
;projects[feeds][subdir] = "contrib"

projects[jcaption][version] = "1.4"
projects[jcaption][subdir] = "contrib"

;projects[job_scheduler][version] = 2.0-alpha3
;projects[job_scheduler][subdir] = "contrib"

projects[login_destination][version] = 1.4
projects[login_destination][subdir] = contrib

projects[login_security][version] = "1.9"
projects[login_security][subdir] = "contrib"

;projects[bean][version] = "1.2"
;projects[bean][subdir] = "contrib"

projects[filefield_nginx_progress][version] = "2.3"
projects[filefield_nginx_progress][subdir] = "contrib"

projects[colorbox][version] = "2.12"
projects[colorbox][subdir] = "contrib"

projects[colorbox_node][version] = "3.5"
projects[colorbox_node][subdir] = "contrib"

projects[ctools][version] = "1.10"
projects[ctools][subdir] = "contrib"

projects[context][version] = "3.7"
projects[context][subdir] = "contrib"

projects[date][version] = "2.9"
projects[date][subdir] = "contrib"

projects[profiler_builder][version] = "1.0-rc4"
projects[profiler_builder][subdir] = "contrib"

projects[ds][version] = "2.14"
projects[ds][subdir] = "contrib"

projects[domain][version] = "3.12"
projects[domain][subdir] = "contrib"

;projects[domain_path][version] = "1.0-beta4"
;projects[domain_path][subdir] = "contrib"

;projects[domain_locale][version] = "1.0-beta3"
;projects[domain_locale][subdir] = "contrib"

projects[domain_variable][version] = "1.1"
projects[domain_variable][subdir] = "contrib"

projects[domain_blocks][version] = "3.0"
projects[domain_blocks][subdir] = "contrib"

;projects[domain_menu_block][version] = "1.0-beta2"
;projects[domain_menu_block][subdir] = "contrib"

projects[domain_views][version] = "1.5"
projects[domain_views][subdir] = "contrib"
projects[domain_views][patch] = "https://www.drupal.org/files/domain_views-fix-views_form_wizard-plugin-path-1824914-1.patch"

projects[viewfield][version] = "2.0"
projects[viewfield][subdir] = contrib

projects[views_accordion][version] = "1.1"
projects[views_accordion][subdir] = contrib

projects[features][version] = "2.10"
projects[features][subdir] = "contrib"
;projects[features][patch][] = http://drupal.org/files/1931512-menu_link-extra-attributes.patch
;projects[features][patch][] = http://drupal.org/files/1931512-menu_link-query-tag.patch

projects[diff][version] = 3.2
projects[diff][subdir] = contrib

projects[features_translations][version] = 1.0-beta1
projects[features_translations][subdir] = contrib

projects[features_extra][version] = "1.0"
projects[features_extra][subdir] = "contrib"

projects[uuid][version] = "1.0-beta2"
projects[uuid][subdir] = "contrib"

projects[uuid_features][version] = "1.0-alpha3"
projects[uuid_features][subdir] = "contrib"

projects[select_or_other][version] = "2.22"
projects[select_or_other][subdir] = "contrib"

projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "dev"

projects[menu_import][version] = "1.5"
projects[menu_import][subdir] = dev

projects[node_revision_delete][version] = "2.6"
projects[node_revision_delete][subdir] = "contrib"

projects[imce][version] = "1.10"
projects[imce][subdir] = "contrib"

projects[imce_plupload][version] = "2.0"
projects[imce_plupload][subdir] = "contrib"

projects[imce_mkdir][version] = "1.0"
projects[imce_mkdir][subdir] ="contrib"

projects[imce_wysiwyg][version] = "1.0"
projects[imce_wysiwyg][subdir] = "contrib"

projects[jquery_update][version] = "2.7"
projects[jquery_update][subdir] = "contrib"

projects[jquery_ui_filter][version] = "1.0"
projects[jquery_ui_filter][subdir] = "contrib"

;projects[inkota_base][type] = module
;projects[inkota_base][location] = http://features.otro-mundo.org/fserver
;projects[inkota_base][version] = "1.0-alpha1"
;projects[inkota_base][subdir] = "contrib"

;projects[inkota_petition][type] = module
;projects[inkota_petition][location] = http://features.otro-mundo.org/fserver
;projects[inkota_petition][version] = "1.0-alpha2"
;projects[inkota_petition][subdir] = "contrib"

;projects[mcf_content][type] = module
;projects[mcf_content][location] = "http://features.otro-mundo.org/fserver"
;projects[mcf_content][version] = "1.0-alpha4"
;projects[mcf_content][subdir] = "features"
;projects[mcf_content][md5] = "5e80d223bc3475386663ef813d56ebde"

;projects[mcf_everything][type] = module
;projects[mcf_everything][location] = http://features.otro-mundo.org/fserver
;projects[mcf_everything][version] = "1.0-alpha1"
;projects[mcf_everything][subdir] = "features"

;projects[mcf_domain_i18n][type] = module
;projects[mcf_domain_i18n][location] = "http://features.otro-mundo.org/fserver"
;projects[mcf_domain_i18n][version] = "1.0-alpha1"
;projects[mcf_domain_i18n][subdir] = "features"

;projects[mcf_hacks][type] = module
;projects[mcf_hacks][location] = "http://features.otro-mundo.org/fserver"
;projects[mcf_hacks][version] = "1.0-alpha1"
;projects[mcf_hacks][subdir] = "custom"

;projects[name][version] = "1.9"
;projects[name][subdir] = "contrib"
;projects[name][patch][] = "http://drupal.org/files/name-feature_export_error-1987018-15.patch"
;projects[name][patch][] = "http://drupal.org/files/name-1987018-19-features-followup.patch"

projects[addressfield][version] = "1.2"
projects[addressfield][subdir] = "contrib"

projects[simplenews][version] = "1.1"
projects[simplenews][subdir] = "contrib"

projects[system_status][version] = "2.7"
projects[system_status][subdir] = "contrib"

projects[media][version] = "2.0-beta2"
projects[media][subdir] = "contrib"
; http://drupal.org/node/1411340
;projects[media][patch][] = http://drupal.org/files/media-resize_images_in_wysiwyg-1411340-58.patch

projects[media_youtube][version] = "3.0"
projects[media_youtube][subdir] = "contrib"

projects[file_entity][version] = "2.0-beta3"
projects[file_entity][subdir] = "contrib"

projects[entity_translation][version] = "1.0-beta5"
projects[entity_translation][subdir] = "contrib"

projects[entity_menu_links][version] = 1.0-alpha1
projects[entity_menu_links][subdir] = contrib

projects[i18n][version] = "1.13"
projects[i18n][subdir] = "contrib"
; https://drupal.org/node/1933690
;projects[i18n][patch][] = "http://drupal.org/files/1933690-menu_links-and-taxonomy-keys.patch"

projects[i18nviews][version] = "3.0-alpha1"
projects[i18nviews][subdir] = "contrib"

projects[imageapi_optimize][version] = 1.2
projects[imageapi_optimize][subdir] = "contrib"

projects[imagemagick][version] = "1.0"
projects[imagemagick][subdir] = "contrib"

projects[imagecache_actions][version] = "1.7"
projects[imagecache_actions][subdir] = "contrib"

projects[l10n_update][version] = "1.1"
projects[l10n_update][subdir] = "contrib"
;projects[l10n_update][patch][] = "http://drupal.org/files/1567372-11-l10n_update-integrity-constraint-on-install.patch"

projects[languageicons][version] = 1.1
projects[languageicons][subdir] = contrib

projects[lang_dropdown][version] = 1.5
projects[lang_dropdown][subdir] = contrib

projects[manualcrop][version] = "1.5"
projects[manualcrop][subdir] = "contrib"

;projects[tmgmt][version] = "1.0-beta2"
;projects[tmgmt][subdir] = "contrib"

;projects[translation_overview][version] = 2.0-beta1
;projects[translation_overview][subdir] = contrib

;projects[translation_table][version] = 1.0-beta1
;projects[translation_table][subdir] = contrib

projects[breakpoints][version] = "1.4"
projects[breakpoints][subdir] = "contrib"

projects[cacheexclude][version] = "2.3"
projects[cacheexclude][subdir] = "contrib"

projects[entity][version] = "1.7"
projects[entity][subdir] = "contrib"

;projects[field-conditional-state][version] = "1.0"
;projects[field-conditional-state][subdir] = "contrib"

projects[field_group][version] = "1.5"
projects[field_group][subdir] = "contrib"

projects[flexslider][version] = "2.0-rc1"
projects[flexslider][subdir] = "contrib"

projects[globalredirect][version] = "1.5"
projects[globalredirect][subdir] = "contrib"

projects[google_fonts][version] = "2.3"
projects[google_fonts][subdir] = "contrib"

projects[libraries][version] = "2.3"
projects[libraries][subdir] = "contrib"

projects[link][version] = "1.4"
projects[link][subdir] = "contrib"
;projects[link][patch][] = "http://drupal.org/files/Fixed_title_value_in_link_field_update_instance_undefined-1914286-3.patch"
;projects[link][patch][] = "http://drupal.org/files/link-fix-undefined-index-widget-1918850-9.patch"

projects[title][version] = 1.0-alpha8
projects[title][patch][] = "https://www.drupal.org/files/issues/2267251-27.patch"
projects[title][subdir] = "contrib"

projects[module_filter][version] = "2.0"
projects[module_filter][subdir] = "contrib"

projects[optimizedb][version] = "1.6"
projects[optimizedb][subdir] = "contrib"

projects[override_node_options][version] = "1.13"
projects[override_node_options][subdir] = "contrib"

projects[pathauto][version] = "1.3"
projects[pathauto][subdir] = "contrib"

projects[mpac][version] = "1.2"
projects[mpac][subdir] = "contrib"

projects[pgbar][version] = "1.5"
projects[pgbar][subdir] = "contrib"

projects[plupload][version] = "1.7"
projects[plupload][subdir] = "contrib"

projects[redirect][version] = "1.0-rc3"
projects[redirect][subdir] = "contrib"

projects[robotstxt][version] = "1.3"
projects[robotstxt][subdir] = "contrib"

;projects[follow][version] = "2.x-dev"
projects[follow][version] = "2.0-alpha1"
projects[follow][subdir] = "contrib"
;https://drupal.org/node/1419474
;projects[follow][patch][] = "http://drupal.org/files/follow-d7-views-1419474-6_0.patch"

projects[token][version] = "1.6"
projects[token][subdir] = "contrib"

projects[transliteration][version] = "3.2"
projects[transliteration][subdir] = "contrib"

projects[web_widgets][version] = "1.0-alpha2"
projects[web_widgets][subdir] = "contrib"
projects[web_widgets][patch][] = "https://www.drupal.org/files/quickfix-1622870-0.patch"

; o_contrib_seven
;projects[entitycache][version] = "1.5"
;projects[entitycache][subdir] = "contrib"

projects[session_cache][version] = "1.4"
projects[session_cache][subdir] ="contrib"

projects[blockcache_alter][version] = "1.0"
projects[blockcache_alter][subdir] = "contrib"
projects[blockcache_alter][patch][] = "https://www.drupal.org/files/patch_to_bug_1272098.patch"

projects[views_content_cache][version] = "3.0-alpha3"
projects[views_content_cache][subdir] = "contrib"

projects[views_fluid_grid][version] = "3.0"
projects[views_fluid_grid][subdir] = "contrib"

projects[video_filter][version] = "3.4"
projects[video_filter][subdir] = "contrib"

projects[picture][version] = "2.13"
projects[picture][subdir] = "contrib"

projects[rules][version] = "2.9"
projects[rules][subdir] = "contrib"

projects[metatag][version] = "1.17"
projects[metatag][subdir] = "contrib"

;projects[tagclouds][version] = "1.9"
;projects[tagclouds][subdir] = "contrib"

;projects[delta][version] = "3.0-beta11"
;projects[delta][subdir] = "contrib"

;projects[omega_tools][version] = "3.0-rc4"
;projects[omega_tools][subdir] = "contrib"

;projects[omega_ui][version] = "2.x-dev"
;projects[omega_ui][subdir] = "contrib"

projects[addanother][version] = "2.2"
projects[addanother][subdir] = "contrib"

;projects[node_export][version] = "3.0"
;projects[node_export][subdir] = "contrib"

;projects[bundle_copy][version] = "1.1"
;projects[bundle_copy][subdir] = "contrib"

projects[wysiwyg][version] = "2.x-dev"
projects[wysiwyg][subdir] = "contrib"

projects[float_filter][version] = "1.2"
projects[float_filter][subdir] = "contrib"

projects[linkit][version] = "2.7"
projects[linkit][subdir] = "contrib"

projects[linkit_target][version] = "1.0"
projects[linkit_target][subdir] = "contrib"

;projects[insert][version] = "1.3"
;projects[insert][subdir] = "contrib"

projects[image_resize_filter][version] = "1.16"
projects[image_resize_filter][subdir] = "contrib"

projects[readmorecontrol][version] = "1.2"
projects[readmorecontrol][subdir] = "contrib"

projects[socialshareprivacy][version] = "1.11"
projects[socialshareprivacy][subdir] = "contrib"

projects[service_links][version] = "2.3"
projects[service_links][subdir] = "contrib"

projects[variable][version] = "2.5"
projects[variable][subdir] = "contrib"

projects[views][version] = "3.14"
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.3"
projects[views_bulk_operations][subdir] = "contrib"

projects[webform][version] = "4.13"
projects[webform][subdir] = "contrib"

projects[webform_ajax][version] = "1.1"
projects[webform_ajax][subdir] = "contrib"

projects[webform_confirm_email][version] = "2.4"
projects[webform_confirm_email][subdir] = "contrib"
;projects[webform_confirm_email][patch][] = "https://www.drupal.org/files/webform_confirm_email_update_from_dev_to_1_2.patch"

;projects[webform_rules][version] = "1.6"
;projects[webform_rules][subdir] = "contrib"

projects[webform_simplenews][version] = "1.x-dev"
projects[webform_simplenews][subdir] = "contrib"

projects[webform_localization][version] = 4.6
projects[webform_localization][subdir] = contrib
; Submit Button localize fix https://drupal.org/node/1997172
;projects[webform_localization][patch][] = http://drupal.org/files/webform_localization-stop-settings-change-for-non-default-language-1997172-2.patch

projects[compact_forms][version] = "1.0"
projects[compact_forms][subdir] = "contrib"
projects[compact_forms][patch][] = "http://drupal.org/files/compact_forms_email_textfield-1459346-18.patch"

;projects[workbench][version] = "1.2"
;projects[workbench][subdir] = "contrib"

;projects[workbench_media][version] = "2.1"
;projects[workbench_media][subdir] = "contrib"

projects[cdn][version] = "2.8"
projects[cdn][subdir] = "contrib"

projects[boost][version] = "1.1"
projects[boost][subdir] = "contrib"

projects[draggableviews][version] = "2.1"
projects[draggableviews][subdir] = "contrib"

projects[charts][version] = "2.0-rc1"
projects[charts][subdir] = "contrib"

projects[mailsystem][version] = "2.34"
projects[mailsystem][subdir] = "contrib"

projects[mimemail][version] = "1.0-beta4"
projects[mimemail][subdir] = "contrib"

projects[chosen][version] = "2.0"
projects[chosen][subdir] = "contrib"

projects[smtp][version] = "1.4"
projects[smtp][subdir] = "contrib"

projects[antibot][version] = "1.0"
projects[antibot][subdir] = "contrib"

projects[wysiwyg_codesnippet][version] = "1.1"
projects[wysiwyg_codesnippet][subdir] = "contrib"


; +++++ Development +++++++

;projects[devel] = 1.5
;projects[devel][subdir] = "dev"

;projects[search_krumo] = 1.5
;projects[search_krumo][subdir] = "dev"

;projects[styleguide] = 1.1
;projects[styleguide][subdir] = "dev"

;projects[masquerade][version] = "1.0-rc7"
;projects[masquerade][subdir] = "dev"

; +++++ Features +++++
projects[mcf_tweaks][type] = module
projects[mcf_tweaks][download][type] = "git"
projects[mcf_tweaks][download][url] = "https://github.com/heliogabal/mcf_tweaks.git"
projects[mcf_tweaks][subdir] = "features"
projects[mcf_tweaks][options][working-copy] = TRUE


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
projects[omega][version] = "4.4"
projects[omega][subdir] = "contrib"

;projects[mcf_theme][type] = "theme"
;projects[mcf_theme][version] = "2.0"
;projects[mcf_theme][location] = "http://features.otro-mundo.org/fserver"

projects[mcf_theme][type] = "theme"
projects[mcf_theme][download][type] = "git"
projects[mcf_theme][download][url] = "https://github.com/heliogabal/mcf_theme.git"
projects[mcf_theme][download][branch] = live
projects[mcf_theme][options][working-copy] = TRUE
projects[mcf_theme][subdir] = ""

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

translations[] = de
translations[] = et
translations[] = cs
translations[] = lt
translations[] = lv
;translations[] = lu
translations[] = nl
translations[] = fi
translations[] = hu
translations[] = it
translations[] = pl
translations[] = ro
translations[] = sk
translations[] = sl
translations[] = fr

; +++++ Libraries +++++

; ColorBox
libraries[colorbox][type] = "library"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.x.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

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

; flexslider
libraries[flexslider][download][type] = "get"
libraries[flexslider][download][url] = "http://github.com/woothemes/FlexSlider/zipball/master"
libraries[flexslider][directory_name] = "flexslider"
libraries[flexslider][type] = "library"

; fitvids
libraries[fitvids][download][type] = "get"
libraries[fitvids][download][url] = "https://raw.githubusercontent.com/davatron5000/FitVids.js/master/jquery.fitvids.js"
libraries[fitvids][directory_name] = "fitvids"
libraries[fitvids][type] = "library"

; jQuery imagesLoaded.
libraries[imagesloaded][download][type] = file
libraries[imagesloaded][download][url] = https://github.com/desandro/imagesloaded/archive/v2.1.2.tar.gz
libraries[imagesloaded][download][subtree] = imagesloaded-2.1.2
libraries[imagesloaded][directory_name] = "imagesloaded"
libraries[imagesloaded][destination] = "libraries"

; imgAreaSelect for manualcrop
libraries[jquery.imgareaselect][download][type] = file
libraries[jquery.imgareaselect][download][url] = https://github.com/odyniec/imgareaselect/archive/v0.9.11-rc.1.zip
libraries[jquery.imgareaselect][download][subtree] = imgareaselect-0.9.11-rc.1
libraries[jquery.imgareaselect][directory_name] = "jquery.imgareaselect"
libraries[jquery.imgareaselect][destination] = "libraries"
