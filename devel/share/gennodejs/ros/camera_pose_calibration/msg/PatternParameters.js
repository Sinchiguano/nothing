// Auto-generated. Do not edit!

// (in-package camera_pose_calibration.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PatternParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern_width = null;
      this.pattern_height = null;
      this.pattern_distance = null;
      this.neighbor_distance = null;
      this.valid_pattern_ratio_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('pattern_width')) {
        this.pattern_width = initObj.pattern_width
      }
      else {
        this.pattern_width = 0;
      }
      if (initObj.hasOwnProperty('pattern_height')) {
        this.pattern_height = initObj.pattern_height
      }
      else {
        this.pattern_height = 0;
      }
      if (initObj.hasOwnProperty('pattern_distance')) {
        this.pattern_distance = initObj.pattern_distance
      }
      else {
        this.pattern_distance = 0.0;
      }
      if (initObj.hasOwnProperty('neighbor_distance')) {
        this.neighbor_distance = initObj.neighbor_distance
      }
      else {
        this.neighbor_distance = 0.0;
      }
      if (initObj.hasOwnProperty('valid_pattern_ratio_threshold')) {
        this.valid_pattern_ratio_threshold = initObj.valid_pattern_ratio_threshold
      }
      else {
        this.valid_pattern_ratio_threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatternParameters
    // Serialize message field [pattern_width]
    bufferOffset = _serializer.uint8(obj.pattern_width, buffer, bufferOffset);
    // Serialize message field [pattern_height]
    bufferOffset = _serializer.uint8(obj.pattern_height, buffer, bufferOffset);
    // Serialize message field [pattern_distance]
    bufferOffset = _serializer.float64(obj.pattern_distance, buffer, bufferOffset);
    // Serialize message field [neighbor_distance]
    bufferOffset = _serializer.float64(obj.neighbor_distance, buffer, bufferOffset);
    // Serialize message field [valid_pattern_ratio_threshold]
    bufferOffset = _serializer.float64(obj.valid_pattern_ratio_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatternParameters
    let len;
    let data = new PatternParameters(null);
    // Deserialize message field [pattern_width]
    data.pattern_width = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pattern_height]
    data.pattern_height = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pattern_distance]
    data.pattern_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [neighbor_distance]
    data.neighbor_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [valid_pattern_ratio_threshold]
    data.valid_pattern_ratio_threshold = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'camera_pose_calibration/PatternParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1072989cc839ba5aa0fd1ae7ff3a0522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 pattern_width
    uint8 pattern_height
    float64 pattern_distance
    float64 neighbor_distance
    float64 valid_pattern_ratio_threshold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatternParameters(null);
    if (msg.pattern_width !== undefined) {
      resolved.pattern_width = msg.pattern_width;
    }
    else {
      resolved.pattern_width = 0
    }

    if (msg.pattern_height !== undefined) {
      resolved.pattern_height = msg.pattern_height;
    }
    else {
      resolved.pattern_height = 0
    }

    if (msg.pattern_distance !== undefined) {
      resolved.pattern_distance = msg.pattern_distance;
    }
    else {
      resolved.pattern_distance = 0.0
    }

    if (msg.neighbor_distance !== undefined) {
      resolved.neighbor_distance = msg.neighbor_distance;
    }
    else {
      resolved.neighbor_distance = 0.0
    }

    if (msg.valid_pattern_ratio_threshold !== undefined) {
      resolved.valid_pattern_ratio_threshold = msg.valid_pattern_ratio_threshold;
    }
    else {
      resolved.valid_pattern_ratio_threshold = 0.0
    }

    return resolved;
    }
};

module.exports = PatternParameters;
