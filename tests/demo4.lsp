#!/usr/bin/env newlisp

;; Demo 4
;; Change a widget property thru a signal

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)

(define (print-hello-world)
  (print "hello world!\n"))

(define (change-label)
  (Gtk:button-set-label "hellobutton" "It changed!"))

(define (on-app)
  (Gtk:window-new "win" "demo" "Gtk demo 3" 600 400)
  (Gtk:button-new-with-label "hellobutton" "Hello world!")
  (Gtk:signal-connect "hellobutton" "clicked" "change-label" 0 0)
  (Gtk:container-add "win" "hellobutton")
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "com.github.jeyson.demo3" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (state)
  (exit))

(signals "on-app"            (callback 0 'on-app))
(signals "change-label" (callback 1 'change-label))

(main)