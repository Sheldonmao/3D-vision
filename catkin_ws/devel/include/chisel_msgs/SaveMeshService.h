// Generated by gencpp from file chisel_msgs/SaveMeshService.msg
// DO NOT EDIT!


#ifndef CHISEL_MSGS_MESSAGE_SAVEMESHSERVICE_H
#define CHISEL_MSGS_MESSAGE_SAVEMESHSERVICE_H

#include <ros/service_traits.h>


#include <chisel_msgs/SaveMeshServiceRequest.h>
#include <chisel_msgs/SaveMeshServiceResponse.h>


namespace chisel_msgs
{

struct SaveMeshService
{

typedef SaveMeshServiceRequest Request;
typedef SaveMeshServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SaveMeshService
} // namespace chisel_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::chisel_msgs::SaveMeshService > {
  static const char* value()
  {
    return "2415261c9605b9f38867ffbbe495fc04";
  }

  static const char* value(const ::chisel_msgs::SaveMeshService&) { return value(); }
};

template<>
struct DataType< ::chisel_msgs::SaveMeshService > {
  static const char* value()
  {
    return "chisel_msgs/SaveMeshService";
  }

  static const char* value(const ::chisel_msgs::SaveMeshService&) { return value(); }
};


// service_traits::MD5Sum< ::chisel_msgs::SaveMeshServiceRequest> should match 
// service_traits::MD5Sum< ::chisel_msgs::SaveMeshService > 
template<>
struct MD5Sum< ::chisel_msgs::SaveMeshServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::chisel_msgs::SaveMeshService >::value();
  }
  static const char* value(const ::chisel_msgs::SaveMeshServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::chisel_msgs::SaveMeshServiceRequest> should match 
// service_traits::DataType< ::chisel_msgs::SaveMeshService > 
template<>
struct DataType< ::chisel_msgs::SaveMeshServiceRequest>
{
  static const char* value()
  {
    return DataType< ::chisel_msgs::SaveMeshService >::value();
  }
  static const char* value(const ::chisel_msgs::SaveMeshServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::chisel_msgs::SaveMeshServiceResponse> should match 
// service_traits::MD5Sum< ::chisel_msgs::SaveMeshService > 
template<>
struct MD5Sum< ::chisel_msgs::SaveMeshServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::chisel_msgs::SaveMeshService >::value();
  }
  static const char* value(const ::chisel_msgs::SaveMeshServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::chisel_msgs::SaveMeshServiceResponse> should match 
// service_traits::DataType< ::chisel_msgs::SaveMeshService > 
template<>
struct DataType< ::chisel_msgs::SaveMeshServiceResponse>
{
  static const char* value()
  {
    return DataType< ::chisel_msgs::SaveMeshService >::value();
  }
  static const char* value(const ::chisel_msgs::SaveMeshServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CHISEL_MSGS_MESSAGE_SAVEMESHSERVICE_H