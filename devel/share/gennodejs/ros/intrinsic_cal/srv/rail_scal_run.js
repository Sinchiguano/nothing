// Auto-generated. Do not edit!

// (in-package intrinsic_cal.srv)


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

class rail_scal_runRequest {
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
    // Serializes a message object of type rail_scal_runRequest
    // Serialize message field [allowable_cost_per_observation]
    bufferOffset = _serializer.float64(obj.allowable_cost_per_observation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rail_scal_runRequest
    let len;
    let data = new rail_scal_runRequest(null);
    // Deserialize message field [allowable_cost_per_observation]
    data.allowable_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intrinsic_cal/rail_scal_runRequest';
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
    const resolved = new rail_scal_runRequest(null);
    if (msg.allowable_cost_per_observation !== undefined) {
      resolved.allowable_cost_per_observation = msg.allowable_cost_per_observation;
    }
    else {
      resolved.allowable_cost_per_observation = 0.0
    }

    return resolved;
    }
};

class rail_scal_runResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_cost_per_observation = null;
      this.right_camera_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('final_cost_per_observation')) {
        this.final_cost_per_observation = initObj.final_cost_per_observation
      }
      else {
        this.final_cost_per_observation = 0.0;
      }
      if (initObj.hasOwnProperty('right_camera_pose')) {
        this.right_camera_pose = initObj.right_camera_pose
      }
      else {
        this.right_camera_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rail_scal_runResponse
    // Serialize message field [final_cost_per_observation]
    bufferOffset = _serializer.float64(obj.final_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [right_camera_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.right_camera_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rail_scal_runResponse
    let len;
    let data = new rail_scal_runResponse(null);
    // Deserialize message field [final_cost_per_observation]
    data.final_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_camera_pose]
    data.right_camera_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intrinsic_cal/rail_scal_runResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '571691fb130bd61f46c5eb1d0995ca3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 final_cost_per_observation
    geometry_msgs/Pose right_camera_pose
    
    
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
    const resolved = new rail_scal_runResponse(null);
    if (msg.final_cost_per_observation !== undefined) {
      resolved.final_cost_per_observation = msg.final_cost_per_observation;
    }
    else {
      resolved.final_cost_per_observation = 0.0
    }

    if (msg.right_camera_pose !== undefined) {
      resolved.right_camera_pose = geometry_msgs.msg.Pose.Resolve(msg.right_camera_pose)
    }
    else {
      resolved.right_camera_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: rail_scal_runRequest,
  Response: rail_scal_runResponse,
  md5sum() { return '21faf34529a7860b5bbdc27da42887dc'; },
  datatype() { return 'intrinsic_cal/rail_scal_run'; }
};
