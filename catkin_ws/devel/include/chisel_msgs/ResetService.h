// Generated by gencpp from file chisel_msgs/ResetService.msg
// DO NOT EDIT!


#ifndef CHISEL_MSGS_MESSAGE_RESETSERVICE_H
#define CHISEL_MSGS_MESSAGE_RESETSERVICE_H

#include <ros/service_traits.h>


#include <chisel_msgs/ResetServiceRequest.h>
#include <chisel_msgs/ResetServiceResponse.h>


namespace chisel_msgs
{

struct ResetService
{

typedef ResetServiceRequest Request;
typedef ResetServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ResetService
} // namespace chisel_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::chisel_msgs::ResetService > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::chisel_msgs::ResetService&) { return value(); }
};

template<>
struct DataType< ::chisel_msgs::ResetService > {
  static const char* value()
  {
    return "chisel_msgs/ResetService";
  }

  static const char* value(const ::chisel_msgs::ResetService&) { return value(); }
};


// service_traits::MD5Sum< ::chisel_msgs::ResetServiceRequest> should match 
// service_traits::MD5Sum< ::chisel_msgs::ResetService > 
template<>
struct MD5Sum< ::chisel_msgs::ResetServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::chisel_msgs::ResetService >::value();
  }
  static const char* value(const ::chisel_msgs::ResetServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::chisel_msgs::ResetServiceRequest> should match 
// service_traits::DataType< ::chisel_msgs::ResetService > 
template<>
struct DataType< ::chisel_msgs::ResetServiceRequest>
{
  static const char* value()
  {
    return DataType< ::chisel_msgs::ResetService >::value();
  }
  static const char* value(const ::chisel_msgs::ResetServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::chisel_msgs::ResetServiceResponse> should match 
// service_traits::MD5Sum< ::chisel_msgs::ResetService > 
template<>
struct MD5Sum< ::chisel_msgs::ResetServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::chisel_msgs::ResetService >::value();
  }
  static const char* value(const ::chisel_msgs::ResetServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::chisel_msgs::ResetServiceResponse> should match 
// service_traits::DataType< ::chisel_msgs::ResetService > 
template<>
struct DataType< ::chisel_msgs::ResetServiceResponse>
{
  static const char* value()
  {
    return DataType< ::chisel_msgs::ResetService >::value();
  }
  static const char* value(const ::chisel_msgs::ResetServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CHISEL_MSGS_MESSAGE_RESETSERVICE_H
