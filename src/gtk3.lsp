(when (not ffi)
  (load "src/ffi-gtk3.lsp"))

(context 'Gtk)

;; Application

(define (Gtk:application-new app id cb)
  (MAIN:state app (ffi:application-new id 0))
  (ffi:signal-connect-data (MAIN:state app) "activate" (MAIN:signals cb) 0 0 0))

(define (Gtk:run app)
  (ffi:application-run (MAIN:state app) 0 0))

;; Button

(define (Gtk:button-new buttonname)
  (MAIN:state buttonname (ffi:button-new)))

(define (Gtk:button-new-with-label buttonname label)
  (MAIN:state buttonname (ffi:button-new-with-label label)))

(define (Gtk:button-set-label buttonname label)
  (ffi:button-set-label (MAIN:state buttonname) label))

;; Container

(define (Gtk:container-add container widget)
  (ffi:container-add (MAIN:state container) (MAIN:state widget)))

;; GTK-Misc

(define (Gtk:unref object)
  (ffi:object-unref (MAIN:state object)))

(define (Gtk:show-all widget)
  (ffi:widget-show-all (MAIN:state widget)))

(define (Gtk:signal-connect instance detailed-signal c-handler data destroy-data connect-flags)
  (ffi:signal-connect-data (MAIN:state instance) detailed-signal (MAIN:signals c-handler) data destroy-data connect-flags))

;; Window

(define (Gtk:window-new window app title width height)
  (MAIN:state window (ffi:application-window-new (MAIN:state app)))
  (ffi:window-set-title (MAIN:state window) title)
  (ffi:window-set-default-size (MAIN:state window) width height))

;; Builder

(define (Gtk:builder-new buildername)
  (MAIN:state buildername (ffi:builder-new)))

(define (Gtk:builder-add-from-file buildername file)
  (ffi:builder-add-from-file (MAIN:state buildername) file 0))

(define (Gtk:builder-get-object builder object widget)
  (MAIN:state widget (ffi:builder-get-object (MAIN:state builder) object)))

;; Image

(define (Gtk:image-new-from-name widget name size)
  (MAIN:state widget (ffi:new-image-from-name name size)))

(context MAIN)