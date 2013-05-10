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

if (!function_exists("system_form_install_configure_form_alter")) {
  function system_form_install_configure_form_alter(&$form, $form_state) {
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

// I added this line with our defaults.
$databases['default']['default'] = array(
'driver' => 'mysql',
'database' => 'schoko2',
'username' => 'root',
'password' => '',
'host' => 'localhost',
'port' => '',
'prefix' => '',
);
