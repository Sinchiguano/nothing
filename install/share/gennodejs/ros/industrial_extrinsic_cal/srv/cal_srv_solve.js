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

class cal_srv_solveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allowable_cost_per_observation = null;
    }
    else {
      if (initObj.hasOwnProperty('allowable_cost_per_observation')) {
        this.allowable_cost_per_observation = initObj.allowable_cost_per_observation
      }
      else {
        this.allowable_cost_per_observation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cal_srv_solveRequest
    // Serialize message field [allowable_cost_per_observation]
    bufferOffset = _serializer.float64(obj.allowable_cost_per_observation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cal_srv_solveRequest
    let len;
    let data = new cal_srv_solveRequest(null);
    // Deserialize message field [allowable_cost_per_observation]
    data.allowable_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/cal_srv_solveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '018b5c6376abafbce2c3211a0d675d06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 allowable_cost_per_observation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cal_srv_solveRequest(null);
    if (msg.allowable_cost_per_observation !== undefined) {
      resolved.allowable_cost_per_observation = msg.allowable_cost_per_observation;
    }
    else {
      resolved.allowable_cost_per_observation = 0.0
    }

    return resolved;
    }
};

class cal_srv_solveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_cost_per_observation = null;
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('final_cost_per_observation')) {
        this.final_cost_per_observation = initObj.final_cost_per_observation
      }
      else {
        this.final_cost_per_observation = 0.0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cal_srv_solveResponse
    // Serialize message field [final_cost_per_observation]
    bufferOffset = _serializer.float64(obj.final_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cal_srv_solveResponse
    let len;
    let data = new cal_srv_solveResponse(null);
    // Deserialize message field [final_cost_per_observation]
    data.final_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/cal_srv_solveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f5bc25d120ef6b9096994fc430f1fee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 final_cost_per_observation
    string message
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cal_srv_solveResponse(null);
    if (msg.final_cost_per_observation !== undefined) {
      resolved.final_cost_per_observation = msg.final_cost_per_observation;
    }
    else {
      resolved.final_cost_per_observation = 0.0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: cal_srv_solveRequest,
  Response: cal_srv_solveResponse,
  md5sum() { return 'ee44043b587910669da0ec6a74e20e6a'; },
  datatype() { return 'industrial_extrinsic_cal/cal_srv_solve'; }
};
