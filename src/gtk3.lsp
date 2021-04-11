(when (not ffi)
  (load "src/ffi-gtk3.lsp"))

(context 'Gtk)

;; Application

(define (Gtk:application-new app cb)
  (MAIN:state app (ffi:application-new 0 0))
  (ffi:signal-connect-data (MAIN:state app) "activate" (MAIN:signals cb) 0 0 0))

(define (Gtk:run app)
  (ffi:application-run (MAIN:state app) 0 0))

;; GTK-Misc

(define (Gtk:unref object)
  (ffi:object-unref (MAIN:state object)))

(define (Gtk:show-all widget)
  (ffi:widget-show-all (MAIN:state widget)))

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

(define (Gtk:image-new widget name size)
  (MAIN:state widget (ffi:new-image-from-name name size)))

(context MAIN)