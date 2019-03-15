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

class rail_ical_runRequest {
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
    // Serializes a message object of type rail_ical_runRequest
    // Serialize message field [allowable_cost_per_observation]
    bufferOffset = _serializer.float64(obj.allowable_cost_per_observation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rail_ical_runRequest
    let len;
    let data = new rail_ical_runRequest(null);
    // Deserialize message field [allowable_cost_per_observation]
    data.allowable_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intrinsic_cal/rail_ical_runRequest';
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
    const resolved = new rail_ical_runRequest(null);
    if (msg.allowable_cost_per_observation !== undefined) {
      resolved.allowable_cost_per_observation = msg.allowable_cost_per_observation;
    }
    else {
      resolved.allowable_cost_per_observation = 0.0
    }

    return resolved;
    }
};

class rail_ical_runResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_cost_per_observation = null;
      this.final_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('final_cost_per_observation')) {
        this.final_cost_per_observation = initObj.final_cost_per_observation
      }
      else {
        this.final_cost_per_observation = 0.0;
      }
      if (initObj.hasOwnProperty('final_pose')) {
        this.final_pose = initObj.final_pose
      }
      else {
        this.final_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rail_ical_runResponse
    // Serialize message field [final_cost_per_observation]
    bufferOffset = _serializer.float64(obj.final_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [final_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.final_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rail_ical_runResponse
    let len;
    let data = new rail_ical_runResponse(null);
    // Deserialize message field [final_cost_per_observation]
    data.final_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_pose]
    data.final_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intrinsic_cal/rail_ical_runResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5d4c33f7be4dba89b73ee608dd24d17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 final_cost_per_observation
    geometry_msgs/Pose final_pose
    
    
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
    const resolved = new rail_ical_runResponse(null);
    if (msg.final_cost_per_observation !== undefined) {
      resolved.final_cost_per_observation = msg.final_cost_per_observation;
    }
    else {
      resolved.final_cost_per_observation = 0.0
    }

    if (msg.final_pose !== undefined) {
      resolved.final_pose = geometry_msgs.msg.Pose.Resolve(msg.final_pose)
    }
    else {
      resolved.final_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: rail_ical_runRequest,
  Response: rail_ical_runResponse,
  md5sum() { return '5b2e41c67828c97fda29508102025f24'; },
  datatype() { return 'intrinsic_cal/rail_ical_run'; }
};
