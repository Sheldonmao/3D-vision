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


//-----------------------------------------------------------

class SaveMeshServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_name = null;
    }
    else {
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMeshServiceRequest
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMeshServiceRequest
    let len;
    let data = new SaveMeshServiceRequest(null);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'chisel_msgs/SaveMeshServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2415261c9605b9f38867ffbbe495fc04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string file_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMeshServiceRequest(null);
    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    return resolved;
    }
};

class SaveMeshServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMeshServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMeshServiceResponse
    let len;
    let data = new SaveMeshServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'chisel_msgs/SaveMeshServiceResponse';
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
    const resolved = new SaveMeshServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SaveMeshServiceRequest,
  Response: SaveMeshServiceResponse,
  md5sum() { return '2415261c9605b9f38867ffbbe495fc04'; },
  datatype() { return 'chisel_msgs/SaveMeshService'; }
};
