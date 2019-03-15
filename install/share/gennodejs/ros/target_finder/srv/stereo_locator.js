// Auto-generated. Do not edit!

// (in-package target_finder.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class stereo_locatorRequest {
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
    // Serializes a message object of type stereo_locatorRequest
    // Serialize message field [allowable_cost_per_observation]
    bufferOffset = _serializer.float64(obj.allowable_cost_per_observation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stereo_locatorRequest
    let len;
    let data = new stereo_locatorRequest(null);
    // Deserialize message field [allowable_cost_per_observation]
    data.allowable_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'target_finder/stereo_locatorRequest';
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
    const resolved = new stereo_locatorRequest(null);
    if (msg.allowable_cost_per_observation !== undefined) {
      resolved.allowable_cost_per_observation = msg.allowable_cost_per_observation;
    }
    else {
      resolved.allowable_cost_per_observation = 0.0
    }

    return resolved;
    }
};

class stereo_locatorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_cost_per_observation = null;
      this.target_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('final_cost_per_observation')) {
        this.final_cost_per_observation = initObj.final_cost_per_observation
      }
      else {
        this.final_cost_per_observation = 0.0;
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stereo_locatorResponse
    // Serialize message field [final_cost_per_observation]
    bufferOffset = _serializer.float64(obj.final_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stereo_locatorResponse
    let len;
    let data = new stereo_locatorResponse(null);
    // Deserialize message field [final_cost_per_observation]
    data.final_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'target_finder/stereo_locatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '666e1abcd41243317c29d57ff72dde2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 final_cost_per_observation
    geometry_msgs/Pose target_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new stereo_locatorResponse(null);
    if (msg.final_cost_per_observation !== undefined) {
      resolved.final_cost_per_observation = msg.final_cost_per_observation;
    }
    else {
      resolved.final_cost_per_observation = 0.0
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: stereo_locatorRequest,
  Response: stereo_locatorResponse,
  md5sum() { return '6f3a39428e04dd9b7fb7338eb3f220f5'; },
  datatype() { return 'target_finder/stereo_locator'; }
};
