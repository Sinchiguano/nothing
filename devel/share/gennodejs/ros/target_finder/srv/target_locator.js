// Auto-generated. Do not edit!

// (in-package target_finder.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class target_locatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allowable_cost_per_observation = null;
      this.roi = null;
      this.initial_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('allowable_cost_per_observation')) {
        this.allowable_cost_per_observation = initObj.allowable_cost_per_observation
      }
      else {
        this.allowable_cost_per_observation = 0.0;
      }
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new sensor_msgs.msg.RegionOfInterest();
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target_locatorRequest
    // Serialize message field [allowable_cost_per_observation]
    bufferOffset = _serializer.float64(obj.allowable_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [roi]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.roi, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.initial_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_locatorRequest
    let len;
    let data = new target_locatorRequest(null);
    // Deserialize message field [allowable_cost_per_observation]
    data.allowable_cost_per_observation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roi]
    data.roi = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    data.initial_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 81;
  }

  static datatype() {
    // Returns string type for a service object
    return 'target_finder/target_locatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d630a50dd674a19af5e228156e7da70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 allowable_cost_per_observation
    sensor_msgs/RegionOfInterest roi
    geometry_msgs/Pose initial_pose
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
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
    const resolved = new target_locatorRequest(null);
    if (msg.allowable_cost_per_observation !== undefined) {
      resolved.allowable_cost_per_observation = msg.allowable_cost_per_observation;
    }
    else {
      resolved.allowable_cost_per_observation = 0.0
    }

    if (msg.roi !== undefined) {
      resolved.roi = sensor_msgs.msg.RegionOfInterest.Resolve(msg.roi)
    }
    else {
      resolved.roi = new sensor_msgs.msg.RegionOfInterest()
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = geometry_msgs.msg.Pose.Resolve(msg.initial_pose)
    }
    else {
      resolved.initial_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class target_locatorResponse {
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
    // Serializes a message object of type target_locatorResponse
    // Serialize message field [final_cost_per_observation]
    bufferOffset = _serializer.float64(obj.final_cost_per_observation, buffer, bufferOffset);
    // Serialize message field [final_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.final_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_locatorResponse
    let len;
    let data = new target_locatorResponse(null);
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
    return 'target_finder/target_locatorResponse';
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
    const resolved = new target_locatorResponse(null);
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
  Request: target_locatorRequest,
  Response: target_locatorResponse,
  md5sum() { return 'a26351e216e367a0883873c29f854fe0'; },
  datatype() { return 'target_finder/target_locator'; }
};
