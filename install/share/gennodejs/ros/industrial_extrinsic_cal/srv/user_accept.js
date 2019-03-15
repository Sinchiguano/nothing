// Auto-generated. Do not edit!

// (in-package industrial_extrinsic_cal.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class user_acceptRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allowable_error_per_pixel = null;
    }
    else {
      if (initObj.hasOwnProperty('allowable_error_per_pixel')) {
        this.allowable_error_per_pixel = initObj.allowable_error_per_pixel
      }
      else {
        this.allowable_error_per_pixel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_acceptRequest
    // Serialize message field [allowable_error_per_pixel]
    bufferOffset = _serializer.float64(obj.allowable_error_per_pixel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_acceptRequest
    let len;
    let data = new user_acceptRequest(null);
    // Deserialize message field [allowable_error_per_pixel]
    data.allowable_error_per_pixel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/user_acceptRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e00898c34163fa7cc6a780ab285f4b7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 allowable_error_per_pixel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_acceptRequest(null);
    if (msg.allowable_error_per_pixel !== undefined) {
      resolved.allowable_error_per_pixel = msg.allowable_error_per_pixel;
    }
    else {
      resolved.allowable_error_per_pixel = 0.0
    }

    return resolved;
    }
};

class user_acceptResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultant_error_per_pixel = null;
    }
    else {
      if (initObj.hasOwnProperty('resultant_error_per_pixel')) {
        this.resultant_error_per_pixel = initObj.resultant_error_per_pixel
      }
      else {
        this.resultant_error_per_pixel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_acceptResponse
    // Serialize message field [resultant_error_per_pixel]
    bufferOffset = _serializer.float64(obj.resultant_error_per_pixel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_acceptResponse
    let len;
    let data = new user_acceptResponse(null);
    // Deserialize message field [resultant_error_per_pixel]
    data.resultant_error_per_pixel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/user_acceptResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5459b8ad0f460c20549218b40937ac56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 resultant_error_per_pixel
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_acceptResponse(null);
    if (msg.resultant_error_per_pixel !== undefined) {
      resolved.resultant_error_per_pixel = msg.resultant_error_per_pixel;
    }
    else {
      resolved.resultant_error_per_pixel = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: user_acceptRequest,
  Response: user_acceptResponse,
  md5sum() { return 'b67d6e018ba30c2c1c11d202c487d542'; },
  datatype() { return 'industrial_extrinsic_cal/user_accept'; }
};
