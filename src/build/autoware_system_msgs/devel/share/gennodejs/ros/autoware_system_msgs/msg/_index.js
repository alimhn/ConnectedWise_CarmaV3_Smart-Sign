
"use strict";

let NodeStatus = require('./NodeStatus.js');
let DiagnosticStatus = require('./DiagnosticStatus.js');
let HardwareStatus = require('./HardwareStatus.js');
let DiagnosticStatusArray = require('./DiagnosticStatusArray.js');
let SystemStatus = require('./SystemStatus.js');

module.exports = {
  NodeStatus: NodeStatus,
  DiagnosticStatus: DiagnosticStatus,
  HardwareStatus: HardwareStatus,
  DiagnosticStatusArray: DiagnosticStatusArray,
  SystemStatus: SystemStatus,
};
