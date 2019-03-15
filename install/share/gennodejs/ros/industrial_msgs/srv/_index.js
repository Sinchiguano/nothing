
"use strict";

let SetDrivePower = require('./SetDrivePower.js')
let SetRemoteLoggerLevel = require('./SetRemoteLoggerLevel.js')
let GetRobotInfo = require('./GetRobotInfo.js')
let StopMotion = require('./StopMotion.js')
let CmdJointTrajectory = require('./CmdJointTrajectory.js')
let StartMotion = require('./StartMotion.js')

module.exports = {
  SetDrivePower: SetDrivePower,
  SetRemoteLoggerLevel: SetRemoteLoggerLevel,
  GetRobotInfo: GetRobotInfo,
  StopMotion: StopMotion,
  CmdJointTrajectory: CmdJointTrajectory,
  StartMotion: StartMotion,
};
