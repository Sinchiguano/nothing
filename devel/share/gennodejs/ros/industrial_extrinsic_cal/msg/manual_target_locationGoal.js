// Auto-generated. Do not edit!

// (in-package industrial_extrinsic_cal.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class manual_target_locationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instructions = null;
      this.target_type = null;
      this.image_topic = null;
      this.roi_min_x = null;
      this.roi_min_y = null;
      this.roi_max_x = null;
      this.roi_max_y = null;
      this.grid_rows = null;
      this.grid_cols = null;
    }
    else {
      if (initObj.hasOwnProperty('instructions')) {
        this.instructions = initObj.instructions
      }
      else {
        this.instructions = '';
      }
      if (initObj.hasOwnProperty('target_type')) {
        this.target_type = initObj.target_type
      }
      else {
        this.target_type = 0;
      }
      if (initObj.hasOwnProperty('image_topic')) {
        this.image_topic = initObj.image_topic
      }
      else {
        this.image_topic = '';
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
      if (initObj.hasOwnProperty('grid_rows')) {
        this.grid_rows = initObj.grid_rows
      }
      else {
        this.grid_rows = 0;
      }
      if (initObj.hasOwnProperty('grid_cols')) {
        this.grid_cols = initObj.grid_cols
      }
      else {
        this.grid_cols = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type manual_target_locationGoal
    // Serialize message field [instructions]
    bufferOffset = _serializer.string(obj.instructions, buffer, bufferOffset);
    // Serialize message field [target_type]
    bufferOffset = _serializer.uint32(obj.target_type, buffer, bufferOffset);
    // Serialize message field [image_topic]
    bufferOffset = _serializer.string(obj.image_topic, buffer, bufferOffset);
    // Serialize message field [roi_min_x]
    bufferOffset = _serializer.uint32(obj.roi_min_x, buffer, bufferOffset);
    // Serialize message field [roi_min_y]
    bufferOffset = _serializer.uint32(obj.roi_min_y, buffer, bufferOffset);
    // Serialize message field [roi_max_x]
    bufferOffset = _serializer.uint32(obj.roi_max_x, buffer, bufferOffset);
    // Serialize message field [roi_max_y]
    bufferOffset = _serializer.uint32(obj.roi_max_y, buffer, bufferOffset);
    // Serialize message field [grid_rows]
    bufferOffset = _serializer.uint32(obj.grid_rows, buffer, bufferOffset);
    // Serialize message field [grid_cols]
    bufferOffset = _serializer.uint32(obj.grid_cols, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type manual_target_locationGoal
    let len;
    let data = new manual_target_locationGoal(null);
    // Deserialize message field [instructions]
    data.instructions = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_type]
    data.target_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [image_topic]
    data.image_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roi_min_x]
    data.roi_min_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_min_y]
    data.roi_min_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_max_x]
    data.roi_max_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi_max_y]
    data.roi_max_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [grid_rows]
    data.grid_rows = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [grid_cols]
    data.grid_cols = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.instructions.length;
    length += object.image_topic.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'industrial_extrinsic_cal/manual_target_locationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da35bff99f1ba8b9eb51a8eadd1f4616';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    string instructions
    uint32 target_type  
    string image_topic
    uint32 roi_min_x
    uint32 roi_min_y
    uint32 roi_max_x
    uint32 roi_max_y
    uint32 grid_rows
    uint32 grid_cols
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new manual_target_locationGoal(null);
    if (msg.instructions !== undefined) {
      resolved.instructions = msg.instructions;
    }
    else {
      resolved.instructions = ''
    }

    if (msg.target_type !== undefined) {
      resolved.target_type = msg.target_type;
    }
    else {
      resolved.target_type = 0
    }

    if (msg.image_topic !== undefined) {
      resolved.image_topic = msg.image_topic;
    }
    else {
      resolved.image_topic = ''
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

    if (msg.grid_rows !== undefined) {
      resolved.grid_rows = msg.grid_rows;
    }
    else {
      resolved.grid_rows = 0
    }

    if (msg.grid_cols !== undefined) {
      resolved.grid_cols = msg.grid_cols;
    }
    else {
      resolved.grid_cols = 0
    }

    return resolved;
    }
};

module.exports = manual_target_locationGoal;
