(when (not ffi)
  (load "src/ffi.lsp"))

(context 'Gtk)

(define (Gtk:application-new app cb)
  (MAIN:state app (ffi:application-new 0 0))
  (ffi:signal-connect-data (MAIN:state app) "activate" (MAIN:signals cb) 0 0 0))

(define (Gtk:run app)
  (ffi:application-run (MAIN:state app) 0 0))

(define (Gtk:unref object)
  (ffi:object-unref (MAIN:state object)))

(define (Gtk:window-new window app title width height)
  (MAIN:state window (ffi:application-window-new (MAIN:state app)))
  (ffi:window-set-title (MAIN:state window) title)
  (ffi:window-set-default-size (MAIN:state window) width height))

(define (Gtk:show-all widget)
  (ffi:widget-show-all (MAIN:state widget)))

(context MAIN)