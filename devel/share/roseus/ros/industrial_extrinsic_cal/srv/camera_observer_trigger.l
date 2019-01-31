;; Auto-generated. Do not edit!


(when (boundp 'industrial_extrinsic_cal::camera_observer_trigger)
  (if (not (find-package "INDUSTRIAL_EXTRINSIC_CAL"))
    (make-package "INDUSTRIAL_EXTRINSIC_CAL"))
  (shadow 'camera_observer_trigger (find-package "INDUSTRIAL_EXTRINSIC_CAL")))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGER")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGER"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGERREQUEST")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGERREQUEST"))
(unless (find-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGERRESPONSE")
  (make-package "INDUSTRIAL_EXTRINSIC_CAL::CAMERA_OBSERVER_TRIGGERRESPONSE"))

(in-package "ROS")





(defclass industrial_extrinsic_cal::camera_observer_triggerRequest
  :super ros::object
  :slots (_image_topic _instructions _roi_min_x _roi_min_y _roi_max_x _roi_max_y ))

(defmethod industrial_extrinsic_cal::camera_observer_triggerRequest
  (:init
   (&key
    ((:image_topic __image_topic) "")
    ((:instructions __instructions) "")
    ((:roi_min_x __roi_min_x) 0)
    ((:roi_min_y __roi_min_y) 0)
    ((:roi_max_x __roi_max_x) 0)
    ((:roi_max_y __roi_max_y) 0)
    )
   (send-super :init)
   (setq _image_topic (string __image_topic))
   (setq _instructions (string __instructions))
   (setq _roi_min_x (round __roi_min_x))
   (setq _roi_min_y (round __roi_min_y))
   (setq _roi_max_x (round __roi_max_x))
   (setq _roi_max_y (round __roi_max_y))
   self)
  (:image_topic
   (&optional __image_topic)
   (if __image_topic (setq _image_topic __image_topic)) _image_topic)
  (:instructions
   (&optional __instructions)
   (if __instructions (setq _instructions __instructions)) _instructions)
  (:roi_min_x
   (&optional __roi_min_x)
   (if __roi_min_x (setq _roi_min_x __roi_min_x)) _roi_min_x)
  (:roi_min_y
   (&optional __roi_min_y)
   (if __roi_min_y (setq _roi_min_y __roi_min_y)) _roi_min_y)
  (:roi_max_x
   (&optional __roi_max_x)
   (if __roi_max_x (setq _roi_max_x __roi_max_x)) _roi_max_x)
  (:roi_max_y
   (&optional __roi_max_y)
   (if __roi_max_y (setq _roi_max_y __roi_max_y)) _roi_max_y)
  (:serialization-length
   ()
   (+
    ;; string _image_topic
    4 (length _image_topic)
    ;; string _instructions
    4 (length _instructions)
    ;; uint32 _roi_min_x
    4
    ;; uint32 _roi_min_y
    4
    ;; uint32 _roi_max_x
    4
    ;; uint32 _roi_max_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image_topic
       (write-long (length _image_topic) s) (princ _image_topic s)
     ;; string _instructions
       (write-long (length _instructions) s) (princ _instructions s)
     ;; uint32 _roi_min_x
       (write-long _roi_min_x s)
     ;; uint32 _roi_min_y
       (write-long _roi_min_y s)
     ;; uint32 _roi_max_x
       (write-long _roi_max_x s)
     ;; uint32 _roi_max_y
       (write-long _roi_max_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _instructions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instructions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _roi_min_x
     (setq _roi_min_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_min_y
     (setq _roi_min_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_max_x
     (setq _roi_max_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roi_max_y
     (setq _roi_max_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::camera_observer_triggerResponse
  :super ros::object
  :slots (_result ))

(defmethod industrial_extrinsic_cal::camera_observer_triggerResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass industrial_extrinsic_cal::camera_observer_trigger
  :super ros::object
  :slots ())

(setf (get industrial_extrinsic_cal::camera_observer_trigger :md5sum-) "47ad3ec1797cb1642f250ccac426d28b")
(setf (get industrial_extrinsic_cal::camera_observer_trigger :datatype-) "industrial_extrinsic_cal/camera_observer_trigger")
(setf (get industrial_extrinsic_cal::camera_observer_trigger :request) industrial_extrinsic_cal::camera_observer_triggerRequest)
(setf (get industrial_extrinsic_cal::camera_observer_trigger :response) industrial_extrinsic_cal::camera_observer_triggerResponse)

(defmethod industrial_extrinsic_cal::camera_observer_triggerRequest
  (:response () (instance industrial_extrinsic_cal::camera_observer_triggerResponse :init)))

(setf (get industrial_extrinsic_cal::camera_observer_triggerRequest :md5sum-) "47ad3ec1797cb1642f250ccac426d28b")
(setf (get industrial_extrinsic_cal::camera_observer_triggerRequest :datatype-) "industrial_extrinsic_cal/camera_observer_triggerRequest")
(setf (get industrial_extrinsic_cal::camera_observer_triggerRequest :definition-)
      "
string image_topic
string instructions
uint32 roi_min_x
uint32 roi_min_y
uint32 roi_max_x
uint32 roi_max_y
---

uint32 result

")

(setf (get industrial_extrinsic_cal::camera_observer_triggerResponse :md5sum-) "47ad3ec1797cb1642f250ccac426d28b")
(setf (get industrial_extrinsic_cal::camera_observer_triggerResponse :datatype-) "industrial_extrinsic_cal/camera_observer_triggerResponse")
(setf (get industrial_extrinsic_cal::camera_observer_triggerResponse :definition-)
      "
string image_topic
string instructions
uint32 roi_min_x
uint32 roi_min_y
uint32 roi_max_x
uint32 roi_max_y
---

uint32 result

")



(provide :industrial_extrinsic_cal/camera_observer_trigger "47ad3ec1797cb1642f250ccac426d28b")


