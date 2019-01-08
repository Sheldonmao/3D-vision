// Auto-generated. Do not edit!

// (in-package chisel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChunkMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ID_x = null;
      this.ID_y = null;
      this.ID_z = null;
      this.spatial_hash = null;
      this.resolution_meters = null;
      this.num_voxels_x = null;
      this.num_voxels_y = null;
      this.num_voxels_z = null;
      this.distance_data = null;
      this.color_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID_x')) {
        this.ID_x = initObj.ID_x
      }
      else {
        this.ID_x = 0;
      }
      if (initObj.hasOwnProperty('ID_y')) {
        this.ID_y = initObj.ID_y
      }
      else {
        this.ID_y = 0;
      }
      if (initObj.hasOwnProperty('ID_z')) {
        this.ID_z = initObj.ID_z
      }
      else {
        this.ID_z = 0;
      }
      if (initObj.hasOwnProperty('spatial_hash')) {
        this.spatial_hash = initObj.spatial_hash
      }
      else {
        this.spatial_hash = 0;
      }
      if (initObj.hasOwnProperty('resolution_meters')) {
        this.resolution_meters = initObj.resolution_meters
      }
      else {
        this.resolution_meters = 0.0;
      }
      if (initObj.hasOwnProperty('num_voxels_x')) {
        this.num_voxels_x = initObj.num_voxels_x
      }
      else {
        this.num_voxels_x = 0;
      }
      if (initObj.hasOwnProperty('num_voxels_y')) {
        this.num_voxels_y = initObj.num_voxels_y
      }
      else {
        this.num_voxels_y = 0;
      }
      if (initObj.hasOwnProperty('num_voxels_z')) {
        this.num_voxels_z = initObj.num_voxels_z
      }
      else {
        this.num_voxels_z = 0;
      }
      if (initObj.hasOwnProperty('distance_data')) {
        this.distance_data = initObj.distance_data
      }
      else {
        this.distance_data = [];
      }
      if (initObj.hasOwnProperty('color_data')) {
        this.color_data = initObj.color_data
      }
      else {
        this.color_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChunkMessage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ID_x]
    bufferOffset = _serializer.int32(obj.ID_x, buffer, bufferOffset);
    // Serialize message field [ID_y]
    bufferOffset = _serializer.int32(obj.ID_y, buffer, bufferOffset);
    // Serialize message field [ID_z]
    bufferOffset = _serializer.int32(obj.ID_z, buffer, bufferOffset);
    // Serialize message field [spatial_hash]
    bufferOffset = _serializer.int64(obj.spatial_hash, buffer, bufferOffset);
    // Serialize message field [resolution_meters]
    bufferOffset = _serializer.float32(obj.resolution_meters, buffer, bufferOffset);
    // Serialize message field [num_voxels_x]
    bufferOffset = _serializer.int32(obj.num_voxels_x, buffer, bufferOffset);
    // Serialize message field [num_voxels_y]
    bufferOffset = _serializer.int32(obj.num_voxels_y, buffer, bufferOffset);
    // Serialize message field [num_voxels_z]
    bufferOffset = _serializer.int32(obj.num_voxels_z, buffer, bufferOffset);
    // Serialize message field [distance_data]
    bufferOffset = _arraySerializer.uint32(obj.distance_data, buffer, bufferOffset, null);
    // Serialize message field [color_data]
    bufferOffset = _arraySerializer.uint32(obj.color_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChunkMessage
    let len;
    let data = new ChunkMessage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID_x]
    data.ID_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ID_y]
    data.ID_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ID_z]
    data.ID_z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [spatial_hash]
    data.spatial_hash = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [resolution_meters]
    data.resolution_meters = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_voxels_x]
    data.num_voxels_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_voxels_y]
    data.num_voxels_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_voxels_z]
    data.num_voxels_z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_data]
    data.distance_data = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [color_data]
    data.color_data = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.distance_data.length;
    length += 4 * object.color_data.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'chisel_msgs/ChunkMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b6f25fa6b6ba9fc3cd619253cab4653';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChunkMessage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ID_x !== undefined) {
      resolved.ID_x = msg.ID_x;
    }
    else {
      resolved.ID_x = 0
    }

    if (msg.ID_y !== undefined) {
      resolved.ID_y = msg.ID_y;
    }
    else {
      resolved.ID_y = 0
    }

    if (msg.ID_z !== undefined) {
      resolved.ID_z = msg.ID_z;
    }
    else {
      resolved.ID_z = 0
    }

    if (msg.spatial_hash !== undefined) {
      resolved.spatial_hash = msg.spatial_hash;
    }
    else {
      resolved.spatial_hash = 0
    }

    if (msg.resolution_meters !== undefined) {
      resolved.resolution_meters = msg.resolution_meters;
    }
    else {
      resolved.resolution_meters = 0.0
    }

    if (msg.num_voxels_x !== undefined) {
      resolved.num_voxels_x = msg.num_voxels_x;
    }
    else {
      resolved.num_voxels_x = 0
    }

    if (msg.num_voxels_y !== undefined) {
      resolved.num_voxels_y = msg.num_voxels_y;
    }
    else {
      resolved.num_voxels_y = 0
    }

    if (msg.num_voxels_z !== undefined) {
      resolved.num_voxels_z = msg.num_voxels_z;
    }
    else {
      resolved.num_voxels_z = 0
    }

    if (msg.distance_data !== undefined) {
      resolved.distance_data = msg.distance_data;
    }
    else {
      resolved.distance_data = []
    }

    if (msg.color_data !== undefined) {
      resolved.color_data = msg.color_data;
    }
    else {
      resolved.color_data = []
    }

    return resolved;
    }
};

module.exports = ChunkMessage;
