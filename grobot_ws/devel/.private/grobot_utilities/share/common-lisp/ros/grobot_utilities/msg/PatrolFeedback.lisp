; Auto-generated. Do not edit!


(cl:in-package grobot_utilities-msg)


;//! \htmlinclude PatrolFeedback.msg.html

(cl:defclass <PatrolFeedback> (roslisp-msg-protocol:ros-message)
  ((completed_patrols
    :reader completed_patrols
    :initarg :completed_patrols
    :type cl:integer
    :initform 0))
)

(cl:defclass PatrolFeedback (<PatrolFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grobot_utilities-msg:<PatrolFeedback> is deprecated: use grobot_utilities-msg:PatrolFeedback instead.")))

(cl:ensure-generic-function 'completed_patrols-val :lambda-list '(m))
(cl:defmethod completed_patrols-val ((m <PatrolFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grobot_utilities-msg:completed_patrols-val is deprecated.  Use grobot_utilities-msg:completed_patrols instead.")
  (completed_patrols m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolFeedback>) ostream)
  "Serializes a message object of type '<PatrolFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'completed_patrols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'completed_patrols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'completed_patrols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'completed_patrols)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolFeedback>) istream)
  "Deserializes a message object of type '<PatrolFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'completed_patrols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'completed_patrols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'completed_patrols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'completed_patrols)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolFeedback>)))
  "Returns string type for a message object of type '<PatrolFeedback>"
  "grobot_utilities/PatrolFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolFeedback)))
  "Returns string type for a message object of type 'PatrolFeedback"
  "grobot_utilities/PatrolFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolFeedback>)))
  "Returns md5sum for a message object of type '<PatrolFeedback>"
  "226aac64e0bd3a8c3f4dd6f9847da700")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolFeedback)))
  "Returns md5sum for a message object of type 'PatrolFeedback"
  "226aac64e0bd3a8c3f4dd6f9847da700")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolFeedback>)))
  "Returns full string definition for message of type '<PatrolFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint32 completed_patrols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolFeedback)))
  "Returns full string definition for message of type 'PatrolFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint32 completed_patrols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolFeedback
    (cl:cons ':completed_patrols (completed_patrols msg))
))
