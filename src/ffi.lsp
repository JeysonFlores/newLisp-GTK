(context 'ffi)

(set 'gtk3 "libgtk-3.so.0")

(import gtk3 "gtk_application_new")
(import gtk3 "gtk_application_window_new")

(import gtk3 "gtk_window_set_title")
(import gtk3 "gtk_window_set_default_size")
(import gtk3 "gtk_widget_show_all")
(import gtk3 "gtk_widget_destroy")

(import gtk3 "g_application_run")
(import gtk3 "g_object_ref")
(import gtk3 "g_object_unref")
(import gtk3 "g_signal_connect_data")

(import gtk3 "gtk_builder_new")
(import gtk3 "gtk_builder_add_from_file")
(import gtk3 "gtk_builder_get_object")

;; Application

(define (ffi:application-new id flags)
  (gtk_application_new id flags))

;; Window

(define (ffi:application-window-new app)
  (gtk_application_window_new app))

(define (ffi:window-set-title window title)
  (gtk_window_set_title window title))

(define (ffi:window-set-default-size window width height)
  (gtk_window_set_default_size window width height))

;; Widget

(define (ffi:widget-show-all widget)
  (gtk_widget_show_all widget))

(define (ffi:widget-destroy widget)
  (gtk_widget_destroy widget))

(define (ffi:application-run application argc argv)
  (g_application_run application argc argv))

;; GTK-Misc

(define (ffi:object-ref object)
  (g_object_ref object))

(define (ffi:object-unref object)
  (g_object_unref object))

(define (ffi:signal-connect-data instance detailed-signal c-handler data destroy-data connect-flags)
  (g_signal_connect_data instance detailed-signal c-handler data destroy-data connect-flags))

;; Builder

(define (ffi:builder-new)
  (gtk_builder_new))

(define (ffi:builder-add-from-file builder file error)
  (gtk_builder_add_from_file builder file error))

(define (ffi:builder-get-object builder object)
  (gtk_builder_get_object  builder object))

(context MAIN)