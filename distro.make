; make_chocolate_fair make file for local development
core = "7.x"
api = "2"

;projects[drupal][version] = "7.x"
;Use Omega8 core instead of Drupal core:
projects[drupal][type] = "core"
projects[drupal][download][type] = "get"
projects[drupal][download][url] = "http://files.aegir.cc/dev/drupal-7.22.1.tar.gz"

; include the d.o. profile base
;includes[] = "drupal-org.make"

; include mcf profile from github
projects[make_chocolate_fair][type] = "profile"
projects[make_chocolate_fair][download][type] = "git"
projects[make_chocolate_fair][download][url] = "git@github.com:heliogabal/mcf_profile.git"
projects[make_chocolate_fair][download][branch] = "master"

; +++++ Libraries +++++

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

