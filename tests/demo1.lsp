#!/usr/bin/env newlisp

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)


(define (on-app)
  (Gtk:window-new "win" "demo" "Gtk demo" 600 400)
  (Gtk:show-all "win"))

(define (demo)
  (Gtk:application-new "demo" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (state)
  (exit))

(signals "on-app"          (callback 0 'on-app))


(demo)