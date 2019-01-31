
(cl:in-package :asdf)

(defsystem "camera_pose_calibration-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PatternParameters" :depends-on ("_package_PatternParameters"))
    (:file "_package_PatternParameters" :depends-on ("_package"))
  ))