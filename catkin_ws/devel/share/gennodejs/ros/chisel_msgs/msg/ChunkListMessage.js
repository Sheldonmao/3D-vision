// Auto-generated. Do not edit!

// (in-package chisel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ChunkMessage = require('./ChunkMessage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChunkListMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.chunks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('chunks')) {
        this.chunks = initObj.chunks
      }
      else {
        this.chunks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChunkListMessage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [chunks]
    // Serialize the length for message field [chunks]
    bufferOffset = _serializer.uint32(obj.chunks.length, buffer, bufferOffset);
    obj.chunks.forEach((val) => {
      bufferOffset = ChunkMessage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChunkListMessage
    let len;
    let data = new ChunkListMessage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [chunks]
    // Deserialize array length for message field [chunks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.chunks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.chunks[i] = ChunkMessage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.chunks.forEach((val) => {
      length += ChunkMessage.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'chisel_msgs/ChunkListMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd6446f54c70cfb1da79fff2245968e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ChunkMessage[] chunks
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: chisel_msgs/ChunkMessage
    Header header
    
    #Chunk ID spatial position
    int32 ID_x
    int32 ID_y
    int32 ID_z
    
    #Chunk spatial hash value
    int64 spatial_hash
    
    #Size of a voxel in meters
    float32 resolution_meters
    
    #number of voxels in each dimension
    int32 num_voxels_x
    int32 num_voxels_y
    int32 num_voxels_z
    
    #Binary serialization of distances/weights
    uint32[] distance_data
    
    #Binary serialization of colors/weights
    uint32[] color_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChunkListMessage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.chunks !== undefined) {
      resolved.chunks = new Array(msg.chunks.length);
      for (let i = 0; i < resolved.chunks.length; ++i) {
        resolved.chunks[i] = ChunkMessage.Resolve(msg.chunks[i]);
      }
    }
    else {
      resolved.chunks = []
    }

    return resolved;
    }
};

module.exports = ChunkListMessage;
