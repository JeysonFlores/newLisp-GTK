#!/usr/bin/env newlisp

;; Demo 5
;; Counter click demo, typical of these kind of demos.

(when (not Gtk)
  (load "src/gtk3.lsp"))

(set 'counter 0)

(new Tree 'state)
(new Tree 'signals)

(define (increase-counter)
  (set 'counter (+ counter 1))
  (Gtk:button-set-label "hellobutton" (string "counter val is " counter )))

(define (on-app)
  (Gtk:window-new "win" "demo" "Gtk demo 5" 600 400)
  (Gtk:button-new-with-label "hellobutton" (string "counter val is " counter ))
  (Gtk:signal-connect "hellobutton" "clicked" "increase-counter" 0 0)
  (Gtk:container-add "win" "hellobutton")
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "com.github.jeyson.demo5" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (println state)
  (exit))

(signals "on-app"                (callback 0 'on-app))
(signals "increase-counter"      (callback 1 'increase-counter))

(main)