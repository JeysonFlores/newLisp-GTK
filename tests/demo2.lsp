#!/usr/bin/env newlisp

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)


(define (on-app)
  (Gtk:builder-new "builder")
  (Gtk:builder-add-from-file "builder" "/home/jeyson/Descargas/PureX2.glade")
  (Gtk:window-new "win" "demo" "Gtk demo" 600 400)
  (Gtk:builder-get-object "builder" "window_main" "win")
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (state)
  (exit))

(signals "on-app"          (callback 0 'on-app))


(main)