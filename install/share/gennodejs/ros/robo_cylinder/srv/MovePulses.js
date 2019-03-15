// Auto-generated. Do not edit!

// (in-package robo_cylinder.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MovePulsesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pulses = null;
    }
    else {
      if (initObj.hasOwnProperty('pulses')) {
        this.pulses = initObj.pulses
      }
      else {
        this.pulses = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovePulsesRequest
    // Serialize message field [pulses]
    bufferOffset = _serializer.int32(obj.pulses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovePulsesRequest
    let len;
    let data = new MovePulsesRequest(null);
    // Deserialize message field [pulses]
    data.pulses = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robo_cylinder/MovePulsesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5a6643c8e6676b12096d1cec7c1733d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pulses
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovePulsesRequest(null);
    if (msg.pulses !== undefined) {
      resolved.pulses = msg.pulses;
    }
    else {
      resolved.pulses = 0
    }

    return resolved;
    }
};

class MovePulsesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovePulsesResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovePulsesResponse
    let len;
    let data = new MovePulsesResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robo_cylinder/MovePulsesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovePulsesResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MovePulsesRequest,
  Response: MovePulsesResponse,
  md5sum() { return '2312ac85d9c04ace4203b83d46d0f0a8'; },
  datatype() { return 'robo_cylinder/MovePulses'; }
};
