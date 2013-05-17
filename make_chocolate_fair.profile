<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */

function make_chocolate_fair_profile_details(){
  $details['language'] = "en";
  return $details;
}

if (!function_exists("make_chocolate_fair_form_install_configure_form_alter")) {
  function make_chocolate_fair_form_install_configure_form_alter(&$form, $form_state) {
    $form['site_information']['site_name']['#default_value'] = 'Make Chocolate Fair';
    $form['site_information']['site_mail']['#default_value'] = 'rhalbmann@gmail.com';

  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'rainer';
  $form['admin_account']['account']['mail']['#default_value'] = 'rhalbmann@gmail.com';

  // Date/time settings
  $form['server_settings']['site_default_country']['#default_value'] = 'DE';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Berlin';
  // Unset the timezone detect stuff
  unset($form['server_settings']['date_default_timezone']['#attributes']);

  // Only check for updates, no need for email notifications
  $form['update_notifications']['update_status_module']['#default_value'] = array(0);
  }
}

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'make_chocolate_fair';
    }
  }
}

function make_chocolate_fair_install_tasks($install_state) {
  return array(
    'make_chocolate_fair_install_import_locales' => array(
      'display_name' => 'Install additional languages',
      'display' => TRUE,
      'type' => 'batch',
      'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
    )
  );
    // Determine whether translation import tasks will need to be performed.
  $needs_translations = count($install_state['locales']) > 1 && !empty($install_state['parameters']['locale']) && $install_state['parameters']['locale'] != 'en';

  return array(
    'make_chocolate_fair_import_translation' => array(
      'display_name' => st('Set up translations'),
      'display' => $needs_translations,
      'run' => $needs_translations ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'type' => 'batch',
    ),
  );
}

function make_chocolate_fair_install_import_locales(&$install_state) {
  include_once DRUPAL_ROOT . '/includes/locale.inc';
  include_once DRUPAL_ROOT . '/includes/iso.inc';
  $batch = array();
  $predefined = _locale_get_predefined_list();
  foreach (array('de','et','cs','be','fi','hu','it','lt','lb','lv','nl','pl','ro','sl','sk') as $install_locale) {
    if (!isset($predefined[$install_locale])) {
      // Drupal does not know about this language, so we prefill its values with
      // our best guess. The user will be able to edit afterwards.
      locale_add_language($install_locale, $install_locale, $install_locale, LANGUAGE_LTR, '', '', TRUE, FALSE);
    }
    else {
      // A known predefined language, details will be filled in properly.
      locale_add_language($install_locale, NULL, NULL, NULL, '', '', TRUE, FALSE);
    }

    // Collect files to import for this language.
    $batch = array_merge($batch, locale_batch_by_language($install_locale, NULL));

  }
  if (!empty($batch)) {
      // Remember components we cover in this batch set.
      variable_set('make_chocolate_fair_install_import_locales', $batch['#components']);
      return $batch;
  }
}

/**
 * Implement hook_install_tasks().
 */

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
function make_chocolate_fair_import_translation(&$install_state) {
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
