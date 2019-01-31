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

class covarianceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_name = null;
      this.block_name1 = null;
      this.request_type1 = null;
      this.scene_id1 = null;
      this.block_name2 = null;
      this.request_type2 = null;
      this.scene_id2 = null;
    }
    else {
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
      if (initObj.hasOwnProperty('block_name1')) {
        this.block_name1 = initObj.block_name1
      }
      else {
        this.block_name1 = '';
      }
      if (initObj.hasOwnProperty('request_type1')) {
        this.request_type1 = initObj.request_type1
      }
      else {
        this.request_type1 = 0;
      }
      if (initObj.hasOwnProperty('scene_id1')) {
        this.scene_id1 = initObj.scene_id1
      }
      else {
        this.scene_id1 = 0;
      }
      if (initObj.hasOwnProperty('block_name2')) {
        this.block_name2 = initObj.block_name2
      }
      else {
        this.block_name2 = '';
      }
      if (initObj.hasOwnProperty('request_type2')) {
        this.request_type2 = initObj.request_type2
      }
      else {
        this.request_type2 = 0;
      }
      if (initObj.hasOwnProperty('scene_id2')) {
        this.scene_id2 = initObj.scene_id2
      }
      else {
        this.scene_id2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type covarianceRequest
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    // Serialize message field [block_name1]
    bufferOffset = _serializer.string(obj.block_name1, buffer, bufferOffset);
    // Serialize message field [request_type1]
    bufferOffset = _serializer.int32(obj.request_type1, buffer, bufferOffset);
    // Serialize message field [scene_id1]
    bufferOffset = _serializer.int32(obj.scene_id1, buffer, bufferOffset);
    // Serialize message field [block_name2]
    bufferOffset = _serializer.string(obj.block_name2, buffer, bufferOffset);
    // Serialize message field [request_type2]
    bufferOffset = _serializer.int32(obj.request_type2, buffer, bufferOffset);
    // Serialize message field [scene_id2]
    bufferOffset = _serializer.int32(obj.scene_id2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type covarianceRequest
    let len;
    let data = new covarianceRequest(null);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [block_name1]
    data.block_name1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request_type1]
    data.request_type1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scene_id1]
    data.scene_id1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [block_name2]
    data.block_name2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request_type2]
    data.request_type2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scene_id2]
    data.scene_id2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_name.length;
    length += object.block_name1.length;
    length += object.block_name2.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/covarianceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d249a007c3eedd7d603e503a8cf184c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_name
    string block_name1
    int32 request_type1
    int32 scene_id1
    string block_name2
    int32 request_type2
    int32 scene_id2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new covarianceRequest(null);
    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    if (msg.block_name1 !== undefined) {
      resolved.block_name1 = msg.block_name1;
    }
    else {
      resolved.block_name1 = ''
    }

    if (msg.request_type1 !== undefined) {
      resolved.request_type1 = msg.request_type1;
    }
    else {
      resolved.request_type1 = 0
    }

    if (msg.scene_id1 !== undefined) {
      resolved.scene_id1 = msg.scene_id1;
    }
    else {
      resolved.scene_id1 = 0
    }

    if (msg.block_name2 !== undefined) {
      resolved.block_name2 = msg.block_name2;
    }
    else {
      resolved.block_name2 = ''
    }

    if (msg.request_type2 !== undefined) {
      resolved.request_type2 = msg.request_type2;
    }
    else {
      resolved.request_type2 = 0
    }

    if (msg.scene_id2 !== undefined) {
      resolved.scene_id2 = msg.scene_id2;
    }
    else {
      resolved.scene_id2 = 0
    }

    return resolved;
    }
};

class covarianceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type covarianceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type covarianceResponse
    let len;
    let data = new covarianceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/covarianceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13d5d28ceaaadbc975dd072a2e10b88a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new covarianceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: covarianceRequest,
  Response: covarianceResponse,
  md5sum() { return '007ea7659fcfafe13fcf466762341056'; },
  datatype() { return 'industrial_extrinsic_cal/covariance'; }
};
