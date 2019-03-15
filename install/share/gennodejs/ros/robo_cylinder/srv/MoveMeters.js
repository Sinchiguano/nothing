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

class MoveMetersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.meters = null;
    }
    else {
      if (initObj.hasOwnProperty('meters')) {
        this.meters = initObj.meters
      }
      else {
        this.meters = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveMetersRequest
    // Serialize message field [meters]
    bufferOffset = _serializer.float32(obj.meters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveMetersRequest
    let len;
    let data = new MoveMetersRequest(null);
    // Deserialize message field [meters]
    data.meters = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robo_cylinder/MoveMetersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93e742ee24e961a724d1abfbc70257f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 meters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveMetersRequest(null);
    if (msg.meters !== undefined) {
      resolved.meters = msg.meters;
    }
    else {
      resolved.meters = 0.0
    }

    return resolved;
    }
};

class MoveMetersResponse {
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
    // Serializes a message object of type MoveMetersResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveMetersResponse
    let len;
    let data = new MoveMetersResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robo_cylinder/MoveMetersResponse';
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
    const resolved = new MoveMetersResponse(null);
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
  Request: MoveMetersRequest,
  Response: MoveMetersResponse,
  md5sum() { return '6f982fc36fa004e803e69f0803390fad'; },
  datatype() { return 'robo_cylinder/MoveMeters'; }
};
