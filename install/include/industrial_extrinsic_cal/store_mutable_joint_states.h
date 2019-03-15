// Generated by gencpp from file industrial_extrinsic_cal/store_mutable_joint_states.msg
// DO NOT EDIT!


#ifndef INDUSTRIAL_EXTRINSIC_CAL_MESSAGE_STORE_MUTABLE_JOINT_STATES_H
#define INDUSTRIAL_EXTRINSIC_CAL_MESSAGE_STORE_MUTABLE_JOINT_STATES_H

#include <ros/service_traits.h>


#include <industrial_extrinsic_cal/store_mutable_joint_statesRequest.h>
#include <industrial_extrinsic_cal/store_mutable_joint_statesResponse.h>


namespace industrial_extrinsic_cal
{

struct store_mutable_joint_states
{

typedef store_mutable_joint_statesRequest Request;
typedef store_mutable_joint_statesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct store_mutable_joint_states
} // namespace industrial_extrinsic_cal


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_states > {
  static const char* value()
  {
    return "928fb104d412cd4f5983340b98df1876";
  }

  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_states&) { return value(); }
};

template<>
struct DataType< ::industrial_extrinsic_cal::store_mutable_joint_states > {
  static const char* value()
  {
    return "industrial_extrinsic_cal/store_mutable_joint_states";
  }

  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_states&) { return value(); }
};


// service_traits::MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_statesRequest> should match 
// service_traits::MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_states > 
template<>
struct MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_statesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_states >::value();
  }
  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_statesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::industrial_extrinsic_cal::store_mutable_joint_statesRequest> should match 
// service_traits::DataType< ::industrial_extrinsic_cal::store_mutable_joint_states > 
template<>
struct DataType< ::industrial_extrinsic_cal::store_mutable_joint_statesRequest>
{
  static const char* value()
  {
    return DataType< ::industrial_extrinsic_cal::store_mutable_joint_states >::value();
  }
  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_statesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_statesResponse> should match 
// service_traits::MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_states > 
template<>
struct MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_statesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::industrial_extrinsic_cal::store_mutable_joint_states >::value();
  }
  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_statesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::industrial_extrinsic_cal::store_mutable_joint_statesResponse> should match 
// service_traits::DataType< ::industrial_extrinsic_cal::store_mutable_joint_states > 
template<>
struct DataType< ::industrial_extrinsic_cal::store_mutable_joint_statesResponse>
{
  static const char* value()
  {
    return DataType< ::industrial_extrinsic_cal::store_mutable_joint_states >::value();
  }
  static const char* value(const ::industrial_extrinsic_cal::store_mutable_joint_statesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INDUSTRIAL_EXTRINSIC_CAL_MESSAGE_STORE_MUTABLE_JOINT_STATES_H