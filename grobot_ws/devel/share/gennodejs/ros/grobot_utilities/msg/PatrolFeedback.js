// Auto-generated. Do not edit!

// (in-package grobot_utilities.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PatrolFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.completed_patrols = null;
    }
    else {
      if (initObj.hasOwnProperty('completed_patrols')) {
        this.completed_patrols = initObj.completed_patrols
      }
      else {
        this.completed_patrols = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrolFeedback
    // Serialize message field [completed_patrols]
    bufferOffset = _serializer.uint32(obj.completed_patrols, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolFeedback
    let len;
    let data = new PatrolFeedback(null);
    // Deserialize message field [completed_patrols]
    data.completed_patrols = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grobot_utilities/PatrolFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '226aac64e0bd3a8c3f4dd6f9847da700';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    uint32 completed_patrols
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrolFeedback(null);
    if (msg.completed_patrols !== undefined) {
      resolved.completed_patrols = msg.completed_patrols;
    }
    else {
      resolved.completed_patrols = 0
    }

    return resolved;
    }
};

module.exports = PatrolFeedback;