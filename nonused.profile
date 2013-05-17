

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
