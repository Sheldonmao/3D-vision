// Generated by gencpp from file chisel_msgs/ChunkMessage.msg
// DO NOT EDIT!


#ifndef CHISEL_MSGS_MESSAGE_CHUNKMESSAGE_H
#define CHISEL_MSGS_MESSAGE_CHUNKMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace chisel_msgs
{
template <class ContainerAllocator>
struct ChunkMessage_
{
  typedef ChunkMessage_<ContainerAllocator> Type;

  ChunkMessage_()
    : header()
    , ID_x(0)
    , ID_y(0)
    , ID_z(0)
    , spatial_hash(0)
    , resolution_meters(0.0)
    , num_voxels_x(0)
    , num_voxels_y(0)
    , num_voxels_z(0)
    , distance_data()
    , color_data()  {
    }
  ChunkMessage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ID_x(0)
    , ID_y(0)
    , ID_z(0)
    , spatial_hash(0)
    , resolution_meters(0.0)
    , num_voxels_x(0)
    , num_voxels_y(0)
    , num_voxels_z(0)
    , distance_data(_alloc)
    , color_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _ID_x_type;
  _ID_x_type ID_x;

   typedef int32_t _ID_y_type;
  _ID_y_type ID_y;

   typedef int32_t _ID_z_type;
  _ID_z_type ID_z;

   typedef int64_t _spatial_hash_type;
  _spatial_hash_type spatial_hash;

   typedef float _resolution_meters_type;
  _resolution_meters_type resolution_meters;

   typedef int32_t _num_voxels_x_type;
  _num_voxels_x_type num_voxels_x;

   typedef int32_t _num_voxels_y_type;
  _num_voxels_y_type num_voxels_y;

   typedef int32_t _num_voxels_z_type;
  _num_voxels_z_type num_voxels_z;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _distance_data_type;
  _distance_data_type distance_data;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _color_data_type;
  _color_data_type color_data;





  typedef boost::shared_ptr< ::chisel_msgs::ChunkMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chisel_msgs::ChunkMessage_<ContainerAllocator> const> ConstPtr;

}; // struct ChunkMessage_

typedef ::chisel_msgs::ChunkMessage_<std::allocator<void> > ChunkMessage;

typedef boost::shared_ptr< ::chisel_msgs::ChunkMessage > ChunkMessagePtr;
typedef boost::shared_ptr< ::chisel_msgs::ChunkMessage const> ChunkMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chisel_msgs::ChunkMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace chisel_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'chisel_msgs': ['/home/sheldonmao/catkin_ws/src/chisel_msgs/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chisel_msgs::ChunkMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chisel_msgs::ChunkMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chisel_msgs::ChunkMessage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b6f25fa6b6ba9fc3cd619253cab4653";
  }

  static const char* value(const ::chisel_msgs::ChunkMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b6f25fa6b6ba9fcULL;
  static const uint64_t static_value2 = 0x3cd619253cab4653ULL;
};

template<class ContainerAllocator>
struct DataType< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chisel_msgs/ChunkMessage";
  }

  static const char* value(const ::chisel_msgs::ChunkMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
#Chunk ID spatial position\n\
int32 ID_x\n\
int32 ID_y\n\
int32 ID_z\n\
\n\
#Chunk spatial hash value\n\
int64 spatial_hash\n\
\n\
#Size of a voxel in meters\n\
float32 resolution_meters\n\
\n\
#number of voxels in each dimension\n\
int32 num_voxels_x\n\
int32 num_voxels_y\n\
int32 num_voxels_z\n\
\n\
#Binary serialization of distances/weights\n\
uint32[] distance_data\n\
\n\
#Binary serialization of colors/weights\n\
uint32[] color_data\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::chisel_msgs::ChunkMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ID_x);
      stream.next(m.ID_y);
      stream.next(m.ID_z);
      stream.next(m.spatial_hash);
      stream.next(m.resolution_meters);
      stream.next(m.num_voxels_x);
      stream.next(m.num_voxels_y);
      stream.next(m.num_voxels_z);
      stream.next(m.distance_data);
      stream.next(m.color_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChunkMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chisel_msgs::ChunkMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chisel_msgs::ChunkMessage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ID_x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ID_x);
    s << indent << "ID_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ID_y);
    s << indent << "ID_z: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ID_z);
    s << indent << "spatial_hash: ";
    Printer<int64_t>::stream(s, indent + "  ", v.spatial_hash);
    s << indent << "resolution_meters: ";
    Printer<float>::stream(s, indent + "  ", v.resolution_meters);
    s << indent << "num_voxels_x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_voxels_x);
    s << indent << "num_voxels_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_voxels_y);
    s << indent << "num_voxels_z: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_voxels_z);
    s << indent << "distance_data[]" << std::endl;
    for (size_t i = 0; i < v.distance_data.size(); ++i)
    {
      s << indent << "  distance_data[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.distance_data[i]);
    }
    s << indent << "color_data[]" << std::endl;
    for (size_t i = 0; i < v.color_data.size(); ++i)
    {
      s << indent << "  color_data[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.color_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHISEL_MSGS_MESSAGE_CHUNKMESSAGE_H
