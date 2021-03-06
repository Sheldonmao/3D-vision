// Generated by gencpp from file chisel_msgs/PauseServiceRequest.msg
// DO NOT EDIT!


#ifndef CHISEL_MSGS_MESSAGE_PAUSESERVICEREQUEST_H
#define CHISEL_MSGS_MESSAGE_PAUSESERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace chisel_msgs
{
template <class ContainerAllocator>
struct PauseServiceRequest_
{
  typedef PauseServiceRequest_<ContainerAllocator> Type;

  PauseServiceRequest_()
    {
    }
  PauseServiceRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PauseServiceRequest_

typedef ::chisel_msgs::PauseServiceRequest_<std::allocator<void> > PauseServiceRequest;

typedef boost::shared_ptr< ::chisel_msgs::PauseServiceRequest > PauseServiceRequestPtr;
typedef boost::shared_ptr< ::chisel_msgs::PauseServiceRequest const> PauseServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace chisel_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'chisel_msgs': ['/home/sheldonmao/catkin_ws/src/chisel_msgs/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::chisel_msgs::PauseServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chisel_msgs/PauseServiceRequest";
  }

  static const char* value(const ::chisel_msgs::PauseServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::chisel_msgs::PauseServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PauseServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chisel_msgs::PauseServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::chisel_msgs::PauseServiceRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CHISEL_MSGS_MESSAGE_PAUSESERVICEREQUEST_H
