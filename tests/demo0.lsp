#!/usr/bin/env newlisp

;; Demo 0
;; Creates an image.

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)


(define (on-app)
  (Gtk:window-new "win" "demo" "Gtk demo 0" 600 400)
  (Gtk:image-new-from-name "image" "audio-volume-high" 6)
  (Gtk:container-add "win" "image")
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "com.github.jeyson.demo0" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (exit))

(signals "on-app"          (callback 0 'on-app))


(main)