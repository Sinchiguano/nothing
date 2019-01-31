// Auto-generated. Do not edit!

// (in-package industrial_extrinsic_cal.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class store_mutable_joint_statesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.empty = null;
    }
    else {
      if (initObj.hasOwnProperty('empty')) {
        this.empty = initObj.empty
      }
      else {
        this.empty = new std_msgs.msg.Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type store_mutable_joint_statesRequest
    // Serialize message field [empty]
    bufferOffset = std_msgs.msg.Empty.serialize(obj.empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type store_mutable_joint_statesRequest
    let len;
    let data = new store_mutable_joint_statesRequest(null);
    // Deserialize message field [empty]
    data.empty = std_msgs.msg.Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/store_mutable_joint_statesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aac6c697d5414bc0fcede8c33981d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Empty empty
    
    ================================================================================
    MSG: std_msgs/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new store_mutable_joint_statesRequest(null);
    if (msg.empty !== undefined) {
      resolved.empty = std_msgs.msg.Empty.Resolve(msg.empty)
    }
    else {
      resolved.empty = new std_msgs.msg.Empty()
    }

    return resolved;
    }
};

class store_mutable_joint_statesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.empty = null;
    }
    else {
      if (initObj.hasOwnProperty('empty')) {
        this.empty = initObj.empty
      }
      else {
        this.empty = new std_msgs.msg.Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type store_mutable_joint_statesResponse
    // Serialize message field [empty]
    bufferOffset = std_msgs.msg.Empty.serialize(obj.empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type store_mutable_joint_statesResponse
    let len;
    let data = new store_mutable_joint_statesResponse(null);
    // Deserialize message field [empty]
    data.empty = std_msgs.msg.Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/store_mutable_joint_statesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aac6c697d5414bc0fcede8c33981d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Empty empty
    
    
    
    ================================================================================
    MSG: std_msgs/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new store_mutable_joint_statesResponse(null);
    if (msg.empty !== undefined) {
      resolved.empty = std_msgs.msg.Empty.Resolve(msg.empty)
    }
    else {
      resolved.empty = new std_msgs.msg.Empty()
    }

    return resolved;
    }
};

module.exports = {
  Request: store_mutable_joint_statesRequest,
  Response: store_mutable_joint_statesResponse,
  md5sum() { return '928fb104d412cd4f5983340b98df1876'; },
  datatype() { return 'industrial_extrinsic_cal/store_mutable_joint_states'; }
};
