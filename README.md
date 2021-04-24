# newLisp-GTK

A set of  custom GTK bindings for newLisp.

# Installation

Just copy the files in src/ into your lib/ folder or wherever you want.

# Demo
This API might change soon but here's a hello world example
```Lisp 
 #!/usr/bin/env newlisp

(when (not Gtk)
  (load "src/gtk3.lsp"))


(new Tree 'state)
(new Tree 'signals)

(define (print-hello-world)
  (println "hello world!"))

(define (on-app)
  (Gtk:window-new "win" "demo" "newLisp GTK Demo" 600 400)
  (Gtk:button-new-with-label "hellobutton" "Click me!")
  (Gtk:signal-connect "hellobutton" "clicked" "print-hello-world" 0 0)
  (Gtk:container-add "win" "hellobutton")
  (Gtk:show-all "win"))

(define (main)
  (Gtk:application-new "demo" "org.gtk.demo" "on-app")
  (Gtk:run "demo")
  (Gtk:unref "demo")
  (exit))

(signals "on-app"            (callback 0 'on-app))
(signals "print-hello-world" (callback 1 'print-hello-world))

(main)
 ```