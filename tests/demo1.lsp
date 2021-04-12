#!/usr/bin/env newlisp+

;; Demo 1
;; Creates an application, an applicationWindow and shows it.

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)


(define (on-app)
  (Gtk:window-new "win" "demo" "Gtk demo 1" 600 400)
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "com.github.jeyson.demo1" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (state)
  (exit))

(signals "on-app"          (callback 0 'on-app))


(main)