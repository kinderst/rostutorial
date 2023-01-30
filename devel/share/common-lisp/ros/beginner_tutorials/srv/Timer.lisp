; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Timer-request.msg.html

(cl:defclass <Timer-request> (roslisp-msg-protocol:ros-message)
  ((printing
    :reader printing
    :initarg :printing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Timer-request (<Timer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Timer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Timer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Timer-request> is deprecated: use beginner_tutorials-srv:Timer-request instead.")))

(cl:ensure-generic-function 'printing-val :lambda-list '(m))
(cl:defmethod printing-val ((m <Timer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:printing-val is deprecated.  Use beginner_tutorials-srv:printing instead.")
  (printing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-request>) ostream)
  "Serializes a message object of type '<Timer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'printing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Timer-request>) istream)
  "Deserializes a message object of type '<Timer-request>"
    (cl:setf (cl:slot-value msg 'printing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Timer-request>)))
  "Returns string type for a service object of type '<Timer-request>"
  "beginner_tutorials/TimerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer-request)))
  "Returns string type for a service object of type 'Timer-request"
  "beginner_tutorials/TimerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Timer-request>)))
  "Returns md5sum for a message object of type '<Timer-request>"
  "472e4839166f9f2327e4f05d74c70af9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-request)))
  "Returns md5sum for a message object of type 'Timer-request"
  "472e4839166f9f2327e4f05d74c70af9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-request>)))
  "Returns full string definition for message of type '<Timer-request>"
  (cl:format cl:nil "bool printing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-request)))
  "Returns full string definition for message of type 'Timer-request"
  (cl:format cl:nil "bool printing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-request
    (cl:cons ':printing (printing msg))
))
;//! \htmlinclude Timer-response.msg.html

(cl:defclass <Timer-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Timer-response (<Timer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Timer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Timer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Timer-response> is deprecated: use beginner_tutorials-srv:Timer-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Timer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:time-val is deprecated.  Use beginner_tutorials-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Timer-response>) ostream)
  "Serializes a message object of type '<Timer-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Timer-response>) istream)
  "Deserializes a message object of type '<Timer-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Timer-response>)))
  "Returns string type for a service object of type '<Timer-response>"
  "beginner_tutorials/TimerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer-response)))
  "Returns string type for a service object of type 'Timer-response"
  "beginner_tutorials/TimerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Timer-response>)))
  "Returns md5sum for a message object of type '<Timer-response>"
  "472e4839166f9f2327e4f05d74c70af9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Timer-response)))
  "Returns md5sum for a message object of type 'Timer-response"
  "472e4839166f9f2327e4f05d74c70af9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Timer-response>)))
  "Returns full string definition for message of type '<Timer-response>"
  (cl:format cl:nil "float64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Timer-response)))
  "Returns full string definition for message of type 'Timer-response"
  (cl:format cl:nil "float64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Timer-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Timer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Timer-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Timer)))
  'Timer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Timer)))
  'Timer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Timer)))
  "Returns string type for a service object of type '<Timer>"
  "beginner_tutorials/Timer")