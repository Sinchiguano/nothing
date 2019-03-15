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

class camera_observer_triggerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_topic = null;
      this.instructions = null;
      this.roi_min_x = null;
      this.roi_min_y = null;
      this.roi_max_x = null;
      this.roi_max_y = null;
    }
    else {
      if (initObj.hasOwnProperty('image_topic')) {
        this.image_topic = initObj.image_topic
      }
      else {
        this.image_topic = '';
      }
      if (initObj.hasOwnProperty('instructions')) {
        this.instructions = initObj.instructions
      }
      else {
        this.instructions = '';
      }
      if (initObj.hasOwnProperty('roi_min_x')) {
        this.roi_min_x = initObj.roi_min_x
      }
      else {
        this.roi_min_x = 0;
      }
      if (initObj.hasOwnProperty('roi_min_y')) {
        this.roi_min_y = initObj.roi_min_y
      }
      else {
        this.roi_min_y = 0;
      }
      if (initObj.hasOwnProperty('roi_max_x')) {
        this.roi_max_x = initObj.roi_max_x
      }
      else {
        this.roi_max_x = 0;
      }
      if (initObj.hasOwnProperty('roi_max_y')) {
        this.roi_max_y = initObj.roi_max_y
      }
      else {
        this.roi_max_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera_observer_triggerRequest
    // Serialize message field [image_topic]
    bufferOffset = _serializer.string(obj.image_topic, buffer, bufferOffset);
    // Serialize message field [instructions]
    bufferOffset = _serializer.string(obj.instructions, buffer, bufferOffset);
    // Serialize message field [roi_min_x]
    bufferOffset = _serializer.uint32(obj.roi_min_x, buffer, bufferOffset);
    // Serialize message field [roi_min_y]
    bufferOffset = _serializer.uint32(obj.roi_min_y, buffer, bufferOffset);
    // Serialize message field [roi_max_x]
    bufferOffset = _serializer.uint32(obj.roi_max_x, buffer, bufferOffset);
    // Serialize message field [roi_max_y]
    bufferOffset = _serializer.uint32(obj.roi_max_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_observer_triggerRequest
    let len;
    let data = new camera_observer_triggerRequest(null);
    // Deserialize message field [image_topic]
    data.image_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [instructions]
    data.instructions = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roi_min_x]
    data.roi_min_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_min_y]
    data.roi_min_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_max_x]
    data.roi_max_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_max_y]
    data.roi_max_y = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.image_topic.length;
    length += object.instructions.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/camera_observer_triggerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99a720387f531c43dab14bc7c2687396';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string image_topic
    string instructions
    uint32 roi_min_x
    uint32 roi_min_y
    uint32 roi_max_x
    uint32 roi_max_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new camera_observer_triggerRequest(null);
    if (msg.image_topic !== undefined) {
      resolved.image_topic = msg.image_topic;
    }
    else {
      resolved.image_topic = ''
    }

    if (msg.instructions !== undefined) {
      resolved.instructions = msg.instructions;
    }
    else {
      resolved.instructions = ''
    }

    if (msg.roi_min_x !== undefined) {
      resolved.roi_min_x = msg.roi_min_x;
    }
    else {
      resolved.roi_min_x = 0
    }

    if (msg.roi_min_y !== undefined) {
      resolved.roi_min_y = msg.roi_min_y;
    }
    else {
      resolved.roi_min_y = 0
    }

    if (msg.roi_max_x !== undefined) {
      resolved.roi_max_x = msg.roi_max_x;
    }
    else {
      resolved.roi_max_x = 0
    }

    if (msg.roi_max_y !== undefined) {
      resolved.roi_max_y = msg.roi_max_y;
    }
    else {
      resolved.roi_max_y = 0
    }

    return resolved;
    }
};

class camera_observer_triggerResponse {
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
    // Serializes a message object of type camera_observer_triggerResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera_observer_triggerResponse
    let len;
    let data = new camera_observer_triggerResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'industrial_extrinsic_cal/camera_observer_triggerResponse';
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
    const resolved = new camera_observer_triggerResponse(null);
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
  Request: camera_observer_triggerRequest,
  Response: camera_observer_triggerResponse,
  md5sum() { return '47ad3ec1797cb1642f250ccac426d28b'; },
  datatype() { return 'industrial_extrinsic_cal/camera_observer_trigger'; }
};
