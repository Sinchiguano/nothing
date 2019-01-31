;; Auto-generated. Do not edit!


(when (boundp 'robo_cylinder::StringCmd)
  (if (not (find-package "ROBO_CYLINDER"))
    (make-package "ROBO_CYLINDER"))
  (shadow 'StringCmd (find-package "ROBO_CYLINDER")))
(unless (find-package "ROBO_CYLINDER::STRINGCMD")
  (make-package "ROBO_CYLINDER::STRINGCMD"))
(unless (find-package "ROBO_CYLINDER::STRINGCMDREQUEST")
  (make-package "ROBO_CYLINDER::STRINGCMDREQUEST"))
(unless (find-package "ROBO_CYLINDER::STRINGCMDRESPONSE")
  (make-package "ROBO_CYLINDER::STRINGCMDRESPONSE"))

(in-package "ROS")





(defclass robo_cylinder::StringCmdRequest
  :super ros::object
  :slots (_command ))

(defmethod robo_cylinder::StringCmdRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robo_cylinder::StringCmdResponse
  :super ros::object
  :slots (_response ))

(defmethod robo_cylinder::StringCmdResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robo_cylinder::StringCmd
  :super ros::object
  :slots ())

(setf (get robo_cylinder::StringCmd :md5sum-) "4d6784651d35dac8aad2a3eb7cbc01aa")
(setf (get robo_cylinder::StringCmd :datatype-) "robo_cylinder/StringCmd")
(setf (get robo_cylinder::StringCmd :request) robo_cylinder::StringCmdRequest)
(setf (get robo_cylinder::StringCmd :response) robo_cylinder::StringCmdResponse)

(defmethod robo_cylinder::StringCmdRequest
  (:response () (instance robo_cylinder::StringCmdResponse :init)))

(setf (get robo_cylinder::StringCmdRequest :md5sum-) "4d6784651d35dac8aad2a3eb7cbc01aa")
(setf (get robo_cylinder::StringCmdRequest :datatype-) "robo_cylinder/StringCmdRequest")
(setf (get robo_cylinder::StringCmdRequest :definition-)
      "string command
---
bool response

")

(setf (get robo_cylinder::StringCmdResponse :md5sum-) "4d6784651d35dac8aad2a3eb7cbc01aa")
(setf (get robo_cylinder::StringCmdResponse :datatype-) "robo_cylinder/StringCmdResponse")
(setf (get robo_cylinder::StringCmdResponse :definition-)
      "string command
---
bool response

")



(provide :robo_cylinder/StringCmd "4d6784651d35dac8aad2a3eb7cbc01aa")


