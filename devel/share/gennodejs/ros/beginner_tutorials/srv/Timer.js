// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.printing = null;
    }
    else {
      if (initObj.hasOwnProperty('printing')) {
        this.printing = initObj.printing
      }
      else {
        this.printing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerRequest
    // Serialize message field [printing]
    bufferOffset = _serializer.bool(obj.printing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerRequest
    let len;
    let data = new TimerRequest(null);
    // Deserialize message field [printing]
    data.printing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/TimerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '424d19f59af93153953d3ef5c3614349';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool printing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerRequest(null);
    if (msg.printing !== undefined) {
      resolved.printing = msg.printing;
    }
    else {
      resolved.printing = false
    }

    return resolved;
    }
};

class TimerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerResponse
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerResponse
    let len;
    let data = new TimerResponse(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/TimerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be5310e7aa4c90cdee120add91648cee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerResponse(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: TimerRequest,
  Response: TimerResponse,
  md5sum() { return '472e4839166f9f2327e4f05d74c70af9'; },
  datatype() { return 'beginner_tutorials/Timer'; }
};
