// Auto-generated. Do not edit!

// (in-package camera_pose_calibration.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PatternParameters = require('../msg/PatternParameters.js');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CalibrateTopicRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_frame = null;
      this.world_frame = null;
      this.point_cloud_scale_x = null;
      this.point_cloud_scale_y = null;
      this.pattern = null;
    }
    else {
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = '';
      }
      if (initObj.hasOwnProperty('world_frame')) {
        this.world_frame = initObj.world_frame
      }
      else {
        this.world_frame = '';
      }
      if (initObj.hasOwnProperty('point_cloud_scale_x')) {
        this.point_cloud_scale_x = initObj.point_cloud_scale_x
      }
      else {
        this.point_cloud_scale_x = 0.0;
      }
      if (initObj.hasOwnProperty('point_cloud_scale_y')) {
        this.point_cloud_scale_y = initObj.point_cloud_scale_y
      }
      else {
        this.point_cloud_scale_y = 0.0;
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = new PatternParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrateTopicRequest
    // Serialize message field [target_frame]
    bufferOffset = _serializer.string(obj.target_frame, buffer, bufferOffset);
    // Serialize message field [world_frame]
    bufferOffset = _serializer.string(obj.world_frame, buffer, bufferOffset);
    // Serialize message field [point_cloud_scale_x]
    bufferOffset = _serializer.float64(obj.point_cloud_scale_x, buffer, bufferOffset);
    // Serialize message field [point_cloud_scale_y]
    bufferOffset = _serializer.float64(obj.point_cloud_scale_y, buffer, bufferOffset);
    // Serialize message field [pattern]
    bufferOffset = PatternParameters.serialize(obj.pattern, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrateTopicRequest
    let len;
    let data = new CalibrateTopicRequest(null);
    // Deserialize message field [target_frame]
    data.target_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [world_frame]
    data.world_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_cloud_scale_x]
    data.point_cloud_scale_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [point_cloud_scale_y]
    data.point_cloud_scale_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pattern]
    data.pattern = PatternParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_frame.length;
    length += object.world_frame.length;
    return length + 50;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_pose_calibration/CalibrateTopicRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c04a8f4268f5d4537094c18b02e29b31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_frame
    string world_frame
    float64 point_cloud_scale_x
    float64 point_cloud_scale_y
    camera_pose_calibration/PatternParameters pattern
    
    ================================================================================
    MSG: camera_pose_calibration/PatternParameters
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
    const resolved = new CalibrateTopicRequest(null);
    if (msg.target_frame !== undefined) {
      resolved.target_frame = msg.target_frame;
    }
    else {
      resolved.target_frame = ''
    }

    if (msg.world_frame !== undefined) {
      resolved.world_frame = msg.world_frame;
    }
    else {
      resolved.world_frame = ''
    }

    if (msg.point_cloud_scale_x !== undefined) {
      resolved.point_cloud_scale_x = msg.point_cloud_scale_x;
    }
    else {
      resolved.point_cloud_scale_x = 0.0
    }

    if (msg.point_cloud_scale_y !== undefined) {
      resolved.point_cloud_scale_y = msg.point_cloud_scale_y;
    }
    else {
      resolved.point_cloud_scale_y = 0.0
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = PatternParameters.Resolve(msg.pattern)
    }
    else {
      resolved.pattern = new PatternParameters()
    }

    return resolved;
    }
};

class CalibrateTopicResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrateTopicResponse
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrateTopicResponse
    let len;
    let data = new CalibrateTopicResponse(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_pose_calibration/CalibrateTopicResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2d1de03cf5b052350d875b7cfbc84a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform transform
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrateTopicResponse(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

module.exports = {
  Request: CalibrateTopicRequest,
  Response: CalibrateTopicResponse,
  md5sum() { return 'e9573ce50d1e28868e351fcf6966f85d'; },
  datatype() { return 'camera_pose_calibration/CalibrateTopic'; }
};
