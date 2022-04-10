import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/models/user/user_model.freezed.dart';
part '../../generated/models/user/user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int userId,
    required String loginName,
    required String firstName,
    required String middleName,
    required String lastName,
    required int courseId,
    required int batchId,
    required String admissionNumber,
    required String rollNumber,
    required String email,
    required DateTime admissionDate,
    required DateTime dob,
    required int profilePictureId,
    required bool userStatus,
    required int categoryId,
    required String aadhaarNumber,
    required String smsMobileNumber,
    required String parentMobileNumber,
    required String mothersMobileNumber,
    required String fatherEmail,
    required String fatherName,
    required String motherName,
    required String address,
    required String gender,
    required String motherEmail,
    required String bloodGroup,
    required String religion,
    required DateTime dateTimeStampIns,
    required int enquiryId,
    required DateTime dateTimeStamp,
    required bool isDeleted,
    required int migrationStatus,
    required bool remember,
    required bool firstTimePasswordReset,
    required int previousClassUserId,
    required int financialYear,
    required bool scholarshipOffered,
    required int feeScheduleId,
    required bool isEntryFromSelfMigration,
    required bool transportSelected,
    required int transportVehicleId,
    required int routeStopId,
    required int finalRouteId,
    required double userGrandTotalMarks,
    required double userGrandTotalPercentage,
    required bool isProfileImageUpdate,
    required int businessDays,
    required int templateId,
    required bool convertToStudent,
    required String dobInWord,
    required bool status,
    required bool showNoDues,
    required bool isAbsent,
    required bool isSelfMigrated,
    required int studentAdmissionType,
    required int title,
    required int employementType,
    required bool isUpdateUserName,
    required int presentDayCount,
    required int absentDayCount,
    required int empRole,
    required bool errorWhileSendingMail,
    required bool emailAddressIsNotValid,
    required int reportCardId,
    required String dobInText,
    required String parentFullName,
    required String motherFullName,
    required String addressLine1,
    required int lectureBased,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
