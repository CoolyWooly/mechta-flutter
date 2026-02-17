import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String? phone;
  final String? fullName;
  final String? email;
  final String? registrationDate;
  final String? firstOrderDate;
  final String? ageRange;
  final String? gender;
  final bool? isSubscribedEmail;

  const ProfileEntity({
    this.phone,
    this.fullName,
    this.email,
    this.registrationDate,
    this.firstOrderDate,
    this.ageRange,
    this.gender,
    this.isSubscribedEmail,
  });

  bool get isAuthenticated => phone != null || email != null;

  @override
  List<Object?> get props => [
        phone,
        fullName,
        email,
        registrationDate,
        firstOrderDate,
        ageRange,
        gender,
        isSubscribedEmail,
      ];
}
