// Auto-generated. Do not edit!

// (in-package chisel_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ChunkListMessage = require('../msg/ChunkListMessage.js');

//-----------------------------------------------------------

class GetAllChunksServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllChunksServiceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllChunksServiceRequest
    let len;
    let data = new GetAllChunksServiceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'chisel_msgs/GetAllChunksServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllChunksServiceRequest(null);
    return resolved;
    }
};

class GetAllChunksServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chunks = null;
    }
    else {
      if (initObj.hasOwnProperty('chunks')) {
        this.chunks = initObj.chunks
      }
      else {
        this.chunks = new ChunkListMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllChunksServiceResponse
    // Serialize message field [chunks]
    bufferOffset = ChunkListMessage.serialize(obj.chunks, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllChunksServiceResponse
    let len;
    let data = new GetAllChunksServiceResponse(null);
    // Deserialize message field [chunks]
    data.chunks = ChunkListMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ChunkListMessage.getMessageSize(object.chunks);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'chisel_msgs/GetAllChunksServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ed132c081b5f4f409c36677e0cb6ee0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ChunkListMessage chunks
    
    
    
    ================================================================================
    MSG: chisel_msgs/ChunkListMessage
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
    const resolved = new GetAllChunksServiceResponse(null);
    if (msg.chunks !== undefined) {
      resolved.chunks = ChunkListMessage.Resolve(msg.chunks)
    }
    else {
      resolved.chunks = new ChunkListMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAllChunksServiceRequest,
  Response: GetAllChunksServiceResponse,
  md5sum() { return '1ed132c081b5f4f409c36677e0cb6ee0'; },
  datatype() { return 'chisel_msgs/GetAllChunksService'; }
};
