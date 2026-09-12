import 'package:flutter_riverpod/legacy.dart';
import 'package:physio_ghar_demo/features/shared/model/user/user_model.dart';

// Creating fake user
final providerOfLoggedInUser = StateNotifierProvider<UserNotifier, UserModel>((
  ref,
) {
  return UserNotifier();
});

class UserNotifier extends StateNotifier<UserModel> {
  UserNotifier()
    : super(
        UserModel(
          name: "Dr. Aayush Karki",
          email: "aayush.karki@example.com",
          phone: "+977 9841234567",
          specialization: "Orthopedic Physiotherapy",
          experience: "5 years",
          address: "Kathmandu, Nepal",
        ),
      );
  // toggle therapist availability
  void changeAvailability() {
    state = state.copyWith(isAvailable: !state.isAvailable);
  }

  // Edit User availability
  void editUserDetails({required UserModel user}) {
    state = state.copyWith(
      email: user.email,
      isAvailable: user.isAvailable,
      name: user.name,
      address: user.address,
      experience: user.experience,
      phone: user.phone,
      specialization: user.specialization,
    );
  }
}
