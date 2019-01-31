
(cl:in-package :asdf)

(defsystem "camera_pose_calibration-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :camera_pose_calibration-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CalibrateCall" :depends-on ("_package_CalibrateCall"))
    (:file "_package_CalibrateCall" :depends-on ("_package"))
    (:file "CalibrateFile" :depends-on ("_package_CalibrateFile"))
    (:file "_package_CalibrateFile" :depends-on ("_package"))
    (:file "CalibrateTopic" :depends-on ("_package_CalibrateTopic"))
    (:file "_package_CalibrateTopic" :depends-on ("_package"))
  ))