;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Timer)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Timer (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TIMER")
  (make-package "BEGINNER_TUTORIALS::TIMER"))
(unless (find-package "BEGINNER_TUTORIALS::TIMERREQUEST")
  (make-package "BEGINNER_TUTORIALS::TIMERREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::TIMERRESPONSE")
  (make-package "BEGINNER_TUTORIALS::TIMERRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::TimerRequest
  :super ros::object
  :slots (_printing ))

(defmethod beginner_tutorials::TimerRequest
  (:init
   (&key
    ((:printing __printing) nil)
    )
   (send-super :init)
   (setq _printing __printing)
   self)
  (:printing
   (&optional (__printing :null))
   (if (not (eq __printing :null)) (setq _printing __printing)) _printing)
  (:serialization-length
   ()
   (+
    ;; bool _printing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _printing
       (if _printing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _printing
     (setq _printing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beginner_tutorials::TimerResponse
  :super ros::object
  :slots (_time ))

(defmethod beginner_tutorials::TimerResponse
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass beginner_tutorials::Timer
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Timer :md5sum-) "472e4839166f9f2327e4f05d74c70af9")
(setf (get beginner_tutorials::Timer :datatype-) "beginner_tutorials/Timer")
(setf (get beginner_tutorials::Timer :request) beginner_tutorials::TimerRequest)
(setf (get beginner_tutorials::Timer :response) beginner_tutorials::TimerResponse)

(defmethod beginner_tutorials::TimerRequest
  (:response () (instance beginner_tutorials::TimerResponse :init)))

(setf (get beginner_tutorials::TimerRequest :md5sum-) "472e4839166f9f2327e4f05d74c70af9")
(setf (get beginner_tutorials::TimerRequest :datatype-) "beginner_tutorials/TimerRequest")
(setf (get beginner_tutorials::TimerRequest :definition-)
      "bool printing
---
float64 time

")

(setf (get beginner_tutorials::TimerResponse :md5sum-) "472e4839166f9f2327e4f05d74c70af9")
(setf (get beginner_tutorials::TimerResponse :datatype-) "beginner_tutorials/TimerResponse")
(setf (get beginner_tutorials::TimerResponse :definition-)
      "bool printing
---
float64 time

")



(provide :beginner_tutorials/Timer "472e4839166f9f2327e4f05d74c70af9")


