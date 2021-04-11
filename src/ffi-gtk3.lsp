(context 'ffi)

(set 'gtk3 "libgtk-3.so.0")

(import gtk3 "gtk_application_new")
(import gtk3 "gtk_application_add_window")
(import gtk3 "gtk_application_remove_window")
(import gtk3 "gtk_application_get_windows")
(import gtk3 "gtk_application_get_window_by_id")
(import gtk3 "gtk_application_get_active_window")
(import gtk3 "gtk_application_prefers_app_menu")

(import gtk3 "gtk_application_window_new")
(import gtk3 "gtk_application_window_set_show_menubar")
(import gtk3 "gtk_application_window_get_show_menubar")
(import gtk3 "gtk_application_window_get_id")
(import gtk3 "gtk_application_window_set_help_overlay")
(import gtk3 "gtk_application_window_get_help_overlay")

(import gtk3 "gtk_window_new")
(import gtk3 "gtk_window_set_title")
(import gtk3 "gtk_window_set_resizable")
(import gtk3 "gtk_window_get_resizable")
(import gtk3 "gtk_window_add_accel_group")
(import gtk3 "gtk_window_remove_accel_group")
(import gtk3 "gtk_window_set_default_size")
(import gtk3 "gtk_window_activate_focus")
(import gtk3 "gtk_window_activate_default")
(import gtk3 "gtk_window_set_modal")
(import gtk3 "gtk_window_set_default_geometry")
(import gtk3 "gtk_window_set_position")
(import gtk3 "gtk_window_set_transient_for")
(import gtk3 "gtk_window_set_attached_to")

(import gtk3 "gtk_widget_show_all")
(import gtk3 "gtk_widget_destroy")

(import gtk3 "gtk_image_new_from_icon_name")

(import gtk3 "g_application_run")
(import gtk3 "g_object_ref")
(import gtk3 "g_object_unref")
(import gtk3 "g_signal_connect_data")

(import gtk3 "gtk_builder_new")
(import gtk3 "gtk_builder_add_from_file")
(import gtk3 "gtk_builder_get_object")

(import gtk3 "gtk_css_provider_new")
(import gtk3 "gtk_css_provider_load_from_file")
(import gtk3 "gtk_style_context_add_provider_for_screen")
;; Application

(define (ffi:application-new id flags)
  (gtk_application_new id flags))

(define (ffi:application-add-window app window)
  (gtk_application_add_window app window))

(define (ffi:application-remove-window app window)
  (gtk_application_remove_window app window))

(define (ffi:application-get-windows app)
  (gtk_application_get_windows app))

(define (ffi:application-get-window-by-id id)
  (gtk_application_get_window_by_id id))

(define (ffi:application-get-active-window app)
  (gtk_application_get_active_window app))

(define (ffi:application-prefers-app-menu app)
  (gtk_application_prefers_app_menu app))

;; Application Window

(define (ffi:application-window-new app)
  (gtk_application_window_new app))

(define (ffi:application-window-set-show-menubar window show_menubar)
  (gtk_application_window_set_show_menubar window show_menubar))

(define (ffi:application-window-get-show-menubar window)
  (gtk_application_window_get_show_menubar window))

(define (ffi:application-window-get-id window)
  (gtk_application_window_get_id window))

(define (ffi:application-window-set-help-overlay window help_overlay)
  (gtk_application_window_set_help_overlay window help_overlay))

(define (ffi:application-window-get-help-overlay window)
  (gtk_application_window_get_help_overlay window))

;; Window

(define (ffi:window-new)
  (gtk_window_new))

(define (ffi:window-set-title window title)
  (gtk_window_set_title window title))

(define (ffi:window-set-resizable window resizable)
  (gtk_window_set_resizable window resizable))

(define (ffi:window-get-resizable window)
  (gtk_window_get_resizable window))

(define (ffi:window-add-accel-group window accel_group)
  (gtk_window_add_accel_group window accel_group))

(define (ffi:window-remove-accel-group window accel_group)
  (gtk_window_remove_accel_group window accel_group))

(define (ffi:window-activate-focus window)
  (gtk_window_activate_focus window))

(define (ffi:window-activate-default window)
  (gtk_window_activate_default window))

(define (ffi:window-set-modal window modal)
  (gtk_window_set_modal window modal))

(define (ffi:window-set-default-size window width height)
  (gtk_window_set_default_size window width height))

(define (ffi:window-set-default-geometry window width height)
  (gtk_window_set_default_geometry width height))

(define (ffi:window-set-position window position)
  (gtk_window_set_position window position))

(define (ffi:window-set-transient-for window parent)
  (gtk_window_set_transient_for window parent))

(define (ffi:window-set-attached-to window attach_widget)
  (gtk_window_set_attached_to window attach_widget))

;; Widget

(define (ffi:widget-show-all widget)
  (gtk_widget_show_all widget))

(define (ffi:widget-destroy widget)
  (gtk_widget_destroy widget))

(define (ffi:application-run application argc argv)
  (g_application_run application argc argv))

;; Image

(define (ffi:new-image-from-name name size)
  (gtk_image_new_from_icon_name name size))

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

;; CSS Provider

(define (ffi:css-provider-new)
  (gtk_css_provider_new))

(define (ffi:builder-add-from-file builder file error)
  (gtk_builder_add_from_file builder file error))

(define (ffi:style-context-add_provider-for-screen screen provider priority)
  (gtk_style_context_add_provider_for_screen screen provider priority))

(context MAIN)