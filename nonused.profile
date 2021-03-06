// Sprachen importieren und updaten
/**
 * Implement hook_install_tasks().
 */
function make_chocolate_fair_install_tasks($install_state) {
  // Determine whether translation import tasks will need to be performed.
  $needs_translations = count($install_state['locales']) > 1 && !empty($install_state['parameters']['locale']) && $install_state['parameters']['locale'] != 'en';

  return array(
    'l10n_install_import_translation' => array(
      'display_name' => st('Set up translations'),
      'display' => $needs_translations,
      'run' => $needs_translations ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'type' => 'batch',
    ),
  );
}

/**
 * Implement hook_install_tasks_alter().
 *
 * Perform actions to set up the site for this profile.
 */
function make_chocolate_fair_install_tasks_alter(&$tasks, $install_state) {
  // Remove core steps for translation imports.
  unset($tasks['install_import_locales']);
  unset($tasks['install_import_locales_remaining']);
}

/**
 * Installation step callback.
 *
 * @param $install_state
 *   An array of information about the current installation state.
 */
function make_chocolate_fair_install_import_translation(&$install_state) {
  // Enable installation language as default site language.
  include_once DRUPAL_ROOT . '/includes/locale.inc';
  $install_locale = $install_state['parameters']['locale'];
  locale_add_language($install_locale, NULL, NULL, NULL, '', NULL, 1, TRUE);

  // Build batch with l10n_update module.
  $history = l10n_update_get_history();
  module_load_include('check.inc', 'l10n_update');
  $available = l10n_update_available_releases();
  $updates = l10n_update_build_updates($history, $available);

  module_load_include('batch.inc', 'l10n_update');
  $updates = _l10n_update_prepare_updates($updates, NULL, array());
  $batch = l10n_update_batch_multiple($updates, LOCALE_IMPORT_KEEP);
  return $batch;
}

 // Für Domain Access Modul
function make_chocolate_fair_profile_final() {
    // Add the following to the end of settings.php
    $file = fopen("sites/default/settings.php", "a");
    if ($file) {
      fputs($file, "\$cookie_domain = '.transitions2.org';\n");
      fputs($file, "require_once './sites/all/modules/domain/domain_conf/settings_domain_conf.inc';\n");
      fputs($file, "require_once './sites/all/modules/domain/domain_prefix/settings_domain_prefix.inc';\n");
      fclose($file);
    } else {
      drupal_set_message("Can't add domain-related lines to sites/default/settings.php");
    }
}


; ----------
; Variables
; ----------
variables[admin_menu_devel_modules_enabled][admin_devel] = 'admin_devel'
variables[admin_menu_devel_modules_enabled][context_ui] = 'context_ui'
variables[admin_menu_devel_modules_enabled][field_ui] = 'field_ui'
variables[admin_menu_devel_modules_enabled][rules_admin] = 'rules_admin'
variables[admin_menu_devel_modules_enabled][views_ui] = 'views_ui'
variables[admin_menu_devel_modules_enabled][devel] = 'devel'
variables[admin_menu_display] = 'plid'
variables[admin_theme] = 'seven'
variables[context_block_rebuild_needed] = true
variables[date_api_version] = '7.2'
variables[date_default_timezone] = 'Europe/Berlin'
variables[delta_blocks_branding_logo_linked] = true
variables[delta_blocks_branding_logo_render] = true
variables[delta_blocks_branding_site_name_linked] = true
variables[delta_blocks_breadcrumb_current] = true
variables[delta_blocks_breadcrumb_title_hidden] = true
variables[delta_blocks_logo_linked] = true
variables[delta_blocks_site_name_linked] = true
variables[devel_api_url] = 'api.drupal.org'
variables[devel_error_handlers][1] = '1'
variables[devel_execution] = '5'
variables[devel_krumo_skin] = 'default'
variables[devel_query_display] = 1
variables[devel_query_sort] = '0'
variables[dev_mem] = 1
variables[dev_timer] = 1
variables[drupal_http_request_fails] = true
variables[ds_extras_field_template] = 1
variables[entitycache_enabled] = true
variables[entity_translation_entity_types][node] = 'node'
variables[field_bundle_settings_file__audio][extra_fields][display][file][media_small] = array (
  'weight' => 0,
  'visible' => false,
)
variables[field_bundle_settings_file__default][extra_fields][display][file][media_small] = array (
  'weight' => 0,
  'visible' => false,
)
variables[field_bundle_settings_file__image][extra_fields][display][file][media_small] = array (
  'weight' => 0,
  'visible' => false,
)
variables[field_bundle_settings_file__video][extra_fields][display][file][media_small] = array (
  'weight' => 0,
  'visible' => false,
)
variables[field_bundle_settings_node__event][extra_fields][form][metatags][weight] = '6'
variables[field_bundle_settings_node__event][extra_fields][form][title][weight] = '0'
variables[field_bundle_settings_node__event][extra_fields][form][path][weight] = '3'
variables[field_bundle_settings_node__event][extra_fields][form][redirect][weight] = '4'
variables[filter_fallback_format] = 'plain_text'
variables[ft-default] = 'theme_ds_field_reset'
variables[javascript_parsed][0] = 'misc/drupal.js'
variables[javascript_parsed][1] = 'misc/jquery.js'
variables[javascript_parsed][2] = 'misc/jquery.once.js'
variables[javascript_parsed][3] = 'misc/ui/jquery.ui.core.min.js'
variables[javascript_parsed][4] = 'misc/ui/jquery.ui.widget.min.js'
variables[javascript_parsed][5] = 'misc/ui/jquery.ui.mouse.min.js'
variables[javascript_parsed][6] = 'misc/ui/jquery.ui.draggable.min.js'
variables[javascript_parsed][7] = 'misc/ui/jquery.ui.droppable.min.js'
variables[javascript_parsed][8] = 'misc/ui/jquery.ui.sortable.min.js'
variables[javascript_parsed][9] = 'profiles/make_chocolate_fair/modules/contrib/context/plugins/context_reaction_block.js'
variables[javascript_parsed][10] = 'profiles/make_chocolate_fair/modules/contrib/module_filter/js/module_filter_tab.js'
variables[javascript_parsed][11] = 'misc/tableheader.js'
variables[javascript_parsed][12] = 'profiles/make_chocolate_fair/modules/contrib/admin_menu/admin_menu.js'
variables[javascript_parsed][13] = 'profiles/make_chocolate_fair/modules/contrib/admin_menu/admin_menu_toolbar/admin_menu_toolbar.js'
variables[javascript_parsed][14] = 'profiles/make_chocolate_fair/modules/contrib/profiler_builder/js/profiler_builder.js'
variables[javascript_parsed][15] = 'misc/states.js'
variables[javascript_parsed][16] = 'misc/form.js'
variables[language_negotiation_language_content][locale-interface][callbacks][language] = 'locale_language_from_interface'
variables[language_negotiation_language_content][locale-interface][file] = 'includes/locale.inc'
variables[language_negotiation_language_url][locale-url][callbacks][language] = 'locale_language_from_url'
variables[language_negotiation_language_url][locale-url][callbacks][switcher] = 'locale_language_switcher_url'
variables[language_negotiation_language_url][locale-url][callbacks][url_rewrite] = 'locale_language_url_rewrite_url'
variables[language_negotiation_language_url][locale-url][file] = 'includes/locale.inc'
variables[language_negotiation_language_url][locale-url-fallback][callbacks][language] = 'locale_language_url_fallback'
variables[language_negotiation_language_url][locale-url-fallback][file] = 'includes/locale.inc'
variables[language_types][language] = true
variables[language_types][language_content] = true
variables[language_types][language_url] = false
variables[metatag_schema_installed] = true
variables[node_admin_theme] = '1'
variables[node_options_page][0] = 'status'
variables[pathauto_blog_pattern] = 'blogs/[user:name]'
variables[pathauto_forum_pattern] = '[term:vocabulary]/[term:name]'
variables[pathauto_node_pattern] = 'content/[node:title]'
variables[pathauto_punctuation_hyphen] = 1
variables[pathauto_taxonomy_term_pattern] = '[term:vocabulary]/[term:name]'
variables[pathauto_user_pattern] = 'users/[user:name]'
variables[path_alias_whitelist][node] = true
variables[path_alias_whitelist][user] = true
variables[robotstxt] = '#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# Used:    http://example.com/robots.txt
# Ignored: http://example.com/site/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/wc/robots.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html

User-agent: *
Crawl-delay: 10
# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/
'
variables[rules_empty_sets][simplenews_rules_event_subscribe] = 0
variables[rules_empty_sets][simplenews_rules_event_unsubscribe] = 1
variables[rules_empty_sets][webform_rules_submit_as_draft] = 2
variables[rules_empty_sets][webform_rules_submit] = 3
variables[rules_empty_sets][webform_rules_insert] = 4
variables[rules_empty_sets][webform_rules_update] = 5
variables[rules_empty_sets][webform_rules_delete] = 6
variables[rules_empty_sets][entity_translation_insert] = 7
variables[rules_empty_sets][entity_translation_update] = 8
variables[rules_empty_sets][entity_translation_delete] = 9
variables[rules_empty_sets][node_insert] = 10
variables[rules_empty_sets][node_update] = 11
variables[rules_empty_sets][node_presave] = 12
variables[rules_empty_sets][node_view] = 13
variables[rules_empty_sets][node_delete] = 14
variables[rules_empty_sets][init] = 15
variables[rules_empty_sets][cron] = 16
variables[rules_empty_sets][watchdog] = 17
variables[rules_empty_sets][user_insert] = 18
variables[rules_empty_sets][user_update] = 19
variables[rules_empty_sets][user_presave] = 20
variables[rules_empty_sets][user_view] = 21
variables[rules_empty_sets][user_delete] = 22
variables[rules_empty_sets][user_login] = 23
variables[rules_empty_sets][user_logout] = 24
variables[rules_empty_sets][comment_insert] = 25
variables[rules_empty_sets][comment_update] = 26
variables[rules_empty_sets][comment_presave] = 27
variables[rules_empty_sets][comment_view] = 28
variables[rules_empty_sets][comment_delete] = 29
variables[rules_empty_sets][taxonomy_term_insert] = 30
variables[rules_empty_sets][taxonomy_term_update] = 31
variables[rules_empty_sets][taxonomy_term_presave] = 32
variables[rules_empty_sets][taxonomy_term_delete] = 33
variables[rules_empty_sets][taxonomy_vocabulary_insert] = 34
variables[rules_empty_sets][taxonomy_vocabulary_update] = 35
variables[rules_empty_sets][taxonomy_vocabulary_presave] = 36
variables[rules_empty_sets][taxonomy_vocabulary_delete] = 37
variables[simplenews_content_type_simplenews] = true
variables[simplenews_vid] = '1'
variables[socialshareprivacy_field_name] = 'field_socialshareprivacy'
variables[socialshareprivacy_field_type] = 'ssp_placeholder'
variables[socialshareprivacy_formatter] = 'ssp_node_formatter'
variables[socialshareprivacy_widget] = 'ssp_widget'
variables[theme_default] = 'mcf_theme'
variables[translation_language_type] = 'language_content'
variables[variable_module_list][i18n_string][0] = 'i18n_string_translate_langcode_en'
variables[variable_module_list][i18n_string][1] = 'i18n_string_allowed_formats'
variables[variable_module_list][i18n_string][2] = 'i18n_string_source_language'
variables[variable_module_list][i18n_string][3] = 'i18n_string_debug'
variables[variable_module_list][i18n_select][0] = 'i18n_select_nodes'
variables[variable_module_list][i18n_select][1] = 'i18n_select_taxonomy'
variables[variable_module_list][i18n_select][2] = 'i18n_select_page_mode'
variables[variable_module_list][i18n_select][3] = 'i18n_select_page_list'
variables[variable_module_list][i18n_select][4] = 'i18n_select_page_block'
variables[variable_module_list][i18n_select][5] = 'i18n_select_skip_tags'
variables[variable_module_list][variable_realm][0] = 'variable_realm_list_global'
variables[variable_module_list][variable_realm][1] = 'variable_realm_weight_global'
variables[variable_realm_list_language][0] = 'site_name'
variables[variable_realm_list_language][1] = 'site_slogan'
