import 'mesg_broadcaster.dart';
import 'fit_messages.dart';
import 'profile/mesgs/mesgs.dart';
import 'profile/types/mesg_num.dart';

class FitListener {
  final FitMessages fitMessages = FitMessages();

  void onMesg(Object sender, MesgEventArgs e) {
    final mesg = e.mesg;
    switch (mesg.num) {
      case MesgNum.fileId:
        fitMessages.fileIdMesgs.add(FileIdMesg.fromMesg(mesg));
        break;
      case MesgNum.fileCreator:
        fitMessages.fileCreatorMesgs.add(FileCreatorMesg.fromMesg(mesg));
        break;
      case MesgNum.timestampCorrelation:
        fitMessages.timestampCorrelationMesgs.add(
          TimestampCorrelationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.software:
        fitMessages.softwareMesgs.add(SoftwareMesg.fromMesg(mesg));
        break;
      case MesgNum.slaveDevice:
        fitMessages.slaveDeviceMesgs.add(SlaveDeviceMesg.fromMesg(mesg));
        break;
      case MesgNum.capabilities:
        fitMessages.capabilitiesMesgs.add(CapabilitiesMesg.fromMesg(mesg));
        break;
      case MesgNum.fileCapabilities:
        fitMessages.fileCapabilitiesMesgs.add(
          FileCapabilitiesMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.mesgCapabilities:
        fitMessages.mesgCapabilitiesMesgs.add(
          MesgCapabilitiesMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.fieldCapabilities:
        fitMessages.fieldCapabilitiesMesgs.add(
          FieldCapabilitiesMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.deviceSettings:
        fitMessages.deviceSettingsMesgs.add(DeviceSettingsMesg.fromMesg(mesg));
        break;
      case MesgNum.userProfile:
        fitMessages.userProfileMesgs.add(UserProfileMesg.fromMesg(mesg));
        break;
      case MesgNum.hrmProfile:
        fitMessages.hrmProfileMesgs.add(HrmProfileMesg.fromMesg(mesg));
        break;
      case MesgNum.sdmProfile:
        fitMessages.sdmProfileMesgs.add(SdmProfileMesg.fromMesg(mesg));
        break;
      case MesgNum.bikeProfile:
        fitMessages.bikeProfileMesgs.add(BikeProfileMesg.fromMesg(mesg));
        break;
      case MesgNum.connectivity:
        fitMessages.connectivityMesgs.add(ConnectivityMesg.fromMesg(mesg));
        break;
      case MesgNum.watchfaceSettings:
        fitMessages.watchfaceSettingsMesgs.add(
          WatchfaceSettingsMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.ohrSettings:
        fitMessages.ohrSettingsMesgs.add(OhrSettingsMesg.fromMesg(mesg));
        break;
      case MesgNum.timeInZone:
        fitMessages.timeInZoneMesgs.add(TimeInZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.zonesTarget:
        fitMessages.zonesTargetMesgs.add(ZonesTargetMesg.fromMesg(mesg));
        break;
      case MesgNum.sport:
        fitMessages.sportMesgs.add(SportMesg.fromMesg(mesg));
        break;
      case MesgNum.hrZone:
        fitMessages.hrZoneMesgs.add(HrZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.speedZone:
        fitMessages.speedZoneMesgs.add(SpeedZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.cadenceZone:
        fitMessages.cadenceZoneMesgs.add(CadenceZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.powerZone:
        fitMessages.powerZoneMesgs.add(PowerZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.metZone:
        fitMessages.metZoneMesgs.add(MetZoneMesg.fromMesg(mesg));
        break;
      case MesgNum.trainingSettings:
        fitMessages.trainingSettingsMesgs.add(
          TrainingSettingsMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.diveSettings:
        fitMessages.diveSettingsMesgs.add(DiveSettingsMesg.fromMesg(mesg));
        break;
      case MesgNum.diveAlarm:
        fitMessages.diveAlarmMesgs.add(DiveAlarmMesg.fromMesg(mesg));
        break;
      case MesgNum.diveApneaAlarm:
        fitMessages.diveApneaAlarmMesgs.add(DiveApneaAlarmMesg.fromMesg(mesg));
        break;
      case MesgNum.diveGas:
        fitMessages.diveGasMesgs.add(DiveGasMesg.fromMesg(mesg));
        break;
      case MesgNum.goal:
        fitMessages.goalMesgs.add(GoalMesg.fromMesg(mesg));
        break;
      case MesgNum.activity:
        fitMessages.activityMesgs.add(ActivityMesg.fromMesg(mesg));
        break;
      case MesgNum.session:
        fitMessages.sessionMesgs.add(SessionMesg.fromMesg(mesg));
        break;
      case MesgNum.lap:
        fitMessages.lapMesgs.add(LapMesg.fromMesg(mesg));
        break;
      case MesgNum.length:
        fitMessages.lengthMesgs.add(LengthMesg.fromMesg(mesg));
        break;
      case MesgNum.record:
        fitMessages.recordMesgs.add(RecordMesg.fromMesg(mesg));
        break;
      case MesgNum.event:
        fitMessages.eventMesgs.add(EventMesg.fromMesg(mesg));
        break;
      case MesgNum.deviceInfo:
        fitMessages.deviceInfoMesgs.add(DeviceInfoMesg.fromMesg(mesg));
        break;
      case MesgNum.deviceAuxBatteryInfo:
        fitMessages.deviceAuxBatteryInfoMesgs.add(
          DeviceAuxBatteryInfoMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.trainingFile:
        fitMessages.trainingFileMesgs.add(TrainingFileMesg.fromMesg(mesg));
        break;
      case MesgNum.weatherConditions:
        fitMessages.weatherConditionsMesgs.add(
          WeatherConditionsMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.weatherAlert:
        fitMessages.weatherAlertMesgs.add(WeatherAlertMesg.fromMesg(mesg));
        break;
      case MesgNum.gpsMetadata:
        fitMessages.gpsMetadataMesgs.add(GpsMetadataMesg.fromMesg(mesg));
        break;
      case MesgNum.cameraEvent:
        fitMessages.cameraEventMesgs.add(CameraEventMesg.fromMesg(mesg));
        break;
      case MesgNum.gyroscopeData:
        fitMessages.gyroscopeDataMesgs.add(GyroscopeDataMesg.fromMesg(mesg));
        break;
      case MesgNum.accelerometerData:
        fitMessages.accelerometerDataMesgs.add(
          AccelerometerDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.magnetometerData:
        fitMessages.magnetometerDataMesgs.add(
          MagnetometerDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.barometerData:
        fitMessages.barometerDataMesgs.add(BarometerDataMesg.fromMesg(mesg));
        break;
      case MesgNum.threeDSensorCalibration:
        fitMessages.threeDSensorCalibrationMesgs.add(
          ThreeDSensorCalibrationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.oneDSensorCalibration:
        fitMessages.oneDSensorCalibrationMesgs.add(
          OneDSensorCalibrationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.videoFrame:
        fitMessages.videoFrameMesgs.add(VideoFrameMesg.fromMesg(mesg));
        break;
      case MesgNum.obdiiData:
        fitMessages.obdiiDataMesgs.add(ObdiiDataMesg.fromMesg(mesg));
        break;
      case MesgNum.nmeaSentence:
        fitMessages.nmeaSentenceMesgs.add(NmeaSentenceMesg.fromMesg(mesg));
        break;
      case MesgNum.aviationAttitude:
        fitMessages.aviationAttitudeMesgs.add(
          AviationAttitudeMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.video:
        fitMessages.videoMesgs.add(VideoMesg.fromMesg(mesg));
        break;
      case MesgNum.videoTitle:
        fitMessages.videoTitleMesgs.add(VideoTitleMesg.fromMesg(mesg));
        break;
      case MesgNum.videoDescription:
        fitMessages.videoDescriptionMesgs.add(
          VideoDescriptionMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.videoClip:
        fitMessages.videoClipMesgs.add(VideoClipMesg.fromMesg(mesg));
        break;
      case MesgNum.set_:
        fitMessages.setMesgs.add(SetMesg.fromMesg(mesg));
        break;
      case MesgNum.jump:
        fitMessages.jumpMesgs.add(JumpMesg.fromMesg(mesg));
        break;
      case MesgNum.split:
        fitMessages.splitMesgs.add(SplitMesg.fromMesg(mesg));
        break;
      case MesgNum.splitSummary:
        fitMessages.splitSummaryMesgs.add(SplitSummaryMesg.fromMesg(mesg));
        break;
      case MesgNum.climbPro:
        fitMessages.climbProMesgs.add(ClimbProMesg.fromMesg(mesg));
        break;
      case MesgNum.fieldDescription:
        fitMessages.fieldDescriptionMesgs.add(
          FieldDescriptionMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.developerDataId:
        fitMessages.developerDataIdMesgs.add(
          DeveloperDataIdMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.course:
        fitMessages.courseMesgs.add(CourseMesg.fromMesg(mesg));
        break;
      case MesgNum.coursePoint:
        fitMessages.coursePointMesgs.add(CoursePointMesg.fromMesg(mesg));
        break;
      case MesgNum.segmentId:
        fitMessages.segmentIdMesgs.add(SegmentIdMesg.fromMesg(mesg));
        break;
      case MesgNum.segmentLeaderboardEntry:
        fitMessages.segmentLeaderboardEntryMesgs.add(
          SegmentLeaderboardEntryMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.segmentPoint:
        fitMessages.segmentPointMesgs.add(SegmentPointMesg.fromMesg(mesg));
        break;
      case MesgNum.segmentLap:
        fitMessages.segmentLapMesgs.add(SegmentLapMesg.fromMesg(mesg));
        break;
      case MesgNum.segmentFile:
        fitMessages.segmentFileMesgs.add(SegmentFileMesg.fromMesg(mesg));
        break;
      case MesgNum.workout:
        fitMessages.workoutMesgs.add(WorkoutMesg.fromMesg(mesg));
        break;
      case MesgNum.workoutSession:
        fitMessages.workoutSessionMesgs.add(WorkoutSessionMesg.fromMesg(mesg));
        break;
      case MesgNum.workoutStep:
        fitMessages.workoutStepMesgs.add(WorkoutStepMesg.fromMesg(mesg));
        break;
      case MesgNum.exerciseTitle:
        fitMessages.exerciseTitleMesgs.add(ExerciseTitleMesg.fromMesg(mesg));
        break;
      case MesgNum.schedule:
        fitMessages.scheduleMesgs.add(ScheduleMesg.fromMesg(mesg));
        break;
      case MesgNum.totals:
        fitMessages.totalsMesgs.add(TotalsMesg.fromMesg(mesg));
        break;
      case MesgNum.weightScale:
        fitMessages.weightScaleMesgs.add(WeightScaleMesg.fromMesg(mesg));
        break;
      case MesgNum.bloodPressure:
        fitMessages.bloodPressureMesgs.add(BloodPressureMesg.fromMesg(mesg));
        break;
      case MesgNum.monitoringInfo:
        fitMessages.monitoringInfoMesgs.add(MonitoringInfoMesg.fromMesg(mesg));
        break;
      case MesgNum.monitoring:
        fitMessages.monitoringMesgs.add(MonitoringMesg.fromMesg(mesg));
        break;
      case MesgNum.monitoringHrData:
        fitMessages.monitoringHrDataMesgs.add(
          MonitoringHrDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.spo2Data:
        fitMessages.spo2DataMesgs.add(Spo2DataMesg.fromMesg(mesg));
        break;
      case MesgNum.hr:
        fitMessages.hrMesgs.add(HrMesg.fromMesg(mesg));
        break;
      case MesgNum.stressLevel:
        fitMessages.stressLevelMesgs.add(StressLevelMesg.fromMesg(mesg));
        break;
      case MesgNum.maxMetData:
        fitMessages.maxMetDataMesgs.add(MaxMetDataMesg.fromMesg(mesg));
        break;
      case MesgNum.hsaBodyBatteryData:
        fitMessages.hsaBodyBatteryDataMesgs.add(
          HsaBodyBatteryDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaEvent:
        fitMessages.hsaEventMesgs.add(HsaEventMesg.fromMesg(mesg));
        break;
      case MesgNum.hsaAccelerometerData:
        fitMessages.hsaAccelerometerDataMesgs.add(
          HsaAccelerometerDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaGyroscopeData:
        fitMessages.hsaGyroscopeDataMesgs.add(
          HsaGyroscopeDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaStepData:
        fitMessages.hsaStepDataMesgs.add(HsaStepDataMesg.fromMesg(mesg));
        break;
      case MesgNum.hsaSpo2Data:
        fitMessages.hsaSpo2DataMesgs.add(HsaSpo2DataMesg.fromMesg(mesg));
        break;
      case MesgNum.hsaStressData:
        fitMessages.hsaStressDataMesgs.add(HsaStressDataMesg.fromMesg(mesg));
        break;
      case MesgNum.hsaRespirationData:
        fitMessages.hsaRespirationDataMesgs.add(
          HsaRespirationDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaHeartRateData:
        fitMessages.hsaHeartRateDataMesgs.add(
          HsaHeartRateDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaConfigurationData:
        fitMessages.hsaConfigurationDataMesgs.add(
          HsaConfigurationDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hsaWristTemperatureData:
        fitMessages.hsaWristTemperatureDataMesgs.add(
          HsaWristTemperatureDataMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.memoGlob:
        fitMessages.memoGlobMesgs.add(MemoGlobMesg.fromMesg(mesg));
        break;
      case MesgNum.sleepLevel:
        fitMessages.sleepLevelMesgs.add(SleepLevelMesg.fromMesg(mesg));
        break;
      case MesgNum.antChannelId:
        fitMessages.antChannelIdMesgs.add(AntChannelIdMesg.fromMesg(mesg));
        break;
      case MesgNum.antRx:
        fitMessages.antRxMesgs.add(AntRxMesg.fromMesg(mesg));
        break;
      case MesgNum.antTx:
        fitMessages.antTxMesgs.add(AntTxMesg.fromMesg(mesg));
        break;
      case MesgNum.exdScreenConfiguration:
        fitMessages.exdScreenConfigurationMesgs.add(
          ExdScreenConfigurationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.exdDataFieldConfiguration:
        fitMessages.exdDataFieldConfigurationMesgs.add(
          ExdDataFieldConfigurationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.exdDataConceptConfiguration:
        fitMessages.exdDataConceptConfigurationMesgs.add(
          ExdDataConceptConfigurationMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.diveSummary:
        fitMessages.diveSummaryMesgs.add(DiveSummaryMesg.fromMesg(mesg));
        break;
      case MesgNum.aadAccelFeatures:
        fitMessages.aadAccelFeaturesMesgs.add(
          AadAccelFeaturesMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hrv:
        fitMessages.hrvMesgs.add(HrvMesg.fromMesg(mesg));
        break;
      case MesgNum.beatIntervals:
        fitMessages.beatIntervalsMesgs.add(BeatIntervalsMesg.fromMesg(mesg));
        break;
      case MesgNum.hrvStatusSummary:
        fitMessages.hrvStatusSummaryMesgs.add(
          HrvStatusSummaryMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.hrvValue:
        fitMessages.hrvValueMesgs.add(HrvValueMesg.fromMesg(mesg));
        break;
      case MesgNum.rawBbi:
        fitMessages.rawBbiMesgs.add(RawBbiMesg.fromMesg(mesg));
        break;
      case MesgNum.respirationRate:
        fitMessages.respirationRateMesgs.add(
          RespirationRateMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.chronoShotSession:
        fitMessages.chronoShotSessionMesgs.add(
          ChronoShotSessionMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.chronoShotData:
        fitMessages.chronoShotDataMesgs.add(ChronoShotDataMesg.fromMesg(mesg));
        break;
      case MesgNum.tankUpdate:
        fitMessages.tankUpdateMesgs.add(TankUpdateMesg.fromMesg(mesg));
        break;
      case MesgNum.tankSummary:
        fitMessages.tankSummaryMesgs.add(TankSummaryMesg.fromMesg(mesg));
        break;
      case MesgNum.sleepAssessment:
        fitMessages.sleepAssessmentMesgs.add(
          SleepAssessmentMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.sleepDisruptionSeverityPeriod:
        fitMessages.sleepDisruptionSeverityPeriodMesgs.add(
          SleepDisruptionSeverityPeriodMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.sleepDisruptionOvernightSeverity:
        fitMessages.sleepDisruptionOvernightSeverityMesgs.add(
          SleepDisruptionOvernightSeverityMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.skinTempOvernight:
        fitMessages.skinTempOvernightMesgs.add(
          SkinTempOvernightMesg.fromMesg(mesg),
        );
        break;
      case MesgNum.pad:
        fitMessages.padMesgs.add(PadMesg.fromMesg(mesg));
        break;
    }
  }
}
