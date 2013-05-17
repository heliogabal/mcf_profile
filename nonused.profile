// Sprachen importieren und updaten
/**
 * Implement hook_install_tasks().
 */
function make_chocolate_fair_install_install_tasks($install_state) {
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
function make_chocolate_fair_install_install_tasks_alter(&$tasks, $install_state) {
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
