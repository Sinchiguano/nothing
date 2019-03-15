
(cl:in-package :asdf)

(defsystem "target_finder-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "stereo_locator" :depends-on ("_package_stereo_locator"))
    (:file "_package_stereo_locator" :depends-on ("_package"))
    (:file "target_locator" :depends-on ("_package_target_locator"))
    (:file "_package_target_locator" :depends-on ("_package"))
  ))