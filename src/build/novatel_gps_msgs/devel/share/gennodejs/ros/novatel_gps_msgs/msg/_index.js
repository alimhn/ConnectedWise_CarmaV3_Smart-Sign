
"use strict";

let Inspvax = require('./Inspvax.js');
let RangeInformation = require('./RangeInformation.js');
let NovatelPsrdop2System = require('./NovatelPsrdop2System.js');
let NovatelCorrectedImuData = require('./NovatelCorrectedImuData.js');
let NovatelDualAntennaHeading = require('./NovatelDualAntennaHeading.js');
let Inscov = require('./Inscov.js');
let Gpgga = require('./Gpgga.js');
let Gprmc = require('./Gprmc.js');
let NovatelXYZ = require('./NovatelXYZ.js');
let NovatelPosition = require('./NovatelPosition.js');
let NovatelReceiverStatus = require('./NovatelReceiverStatus.js');
let NovatelPsrdop2 = require('./NovatelPsrdop2.js');
let NovatelHeading2 = require('./NovatelHeading2.js');
let Inspva = require('./Inspva.js');
let Gphdt = require('./Gphdt.js');
let NovatelExtendedSolutionStatus = require('./NovatelExtendedSolutionStatus.js');
let Insstdev = require('./Insstdev.js');
let Satellite = require('./Satellite.js');
let NovatelVelocity = require('./NovatelVelocity.js');
let Time = require('./Time.js');
let NovatelSignalMask = require('./NovatelSignalMask.js');
let Gpgsa = require('./Gpgsa.js');
let NovatelUtmPosition = require('./NovatelUtmPosition.js');
let Trackstat = require('./Trackstat.js');
let TrackstatChannel = require('./TrackstatChannel.js');
let Range = require('./Range.js');
let ClockSteering = require('./ClockSteering.js');
let Gpgsv = require('./Gpgsv.js');
let NovatelMessageHeader = require('./NovatelMessageHeader.js');

module.exports = {
  Inspvax: Inspvax,
  RangeInformation: RangeInformation,
  NovatelPsrdop2System: NovatelPsrdop2System,
  NovatelCorrectedImuData: NovatelCorrectedImuData,
  NovatelDualAntennaHeading: NovatelDualAntennaHeading,
  Inscov: Inscov,
  Gpgga: Gpgga,
  Gprmc: Gprmc,
  NovatelXYZ: NovatelXYZ,
  NovatelPosition: NovatelPosition,
  NovatelReceiverStatus: NovatelReceiverStatus,
  NovatelPsrdop2: NovatelPsrdop2,
  NovatelHeading2: NovatelHeading2,
  Inspva: Inspva,
  Gphdt: Gphdt,
  NovatelExtendedSolutionStatus: NovatelExtendedSolutionStatus,
  Insstdev: Insstdev,
  Satellite: Satellite,
  NovatelVelocity: NovatelVelocity,
  Time: Time,
  NovatelSignalMask: NovatelSignalMask,
  Gpgsa: Gpgsa,
  NovatelUtmPosition: NovatelUtmPosition,
  Trackstat: Trackstat,
  TrackstatChannel: TrackstatChannel,
  Range: Range,
  ClockSteering: ClockSteering,
  Gpgsv: Gpgsv,
  NovatelMessageHeader: NovatelMessageHeader,
};
