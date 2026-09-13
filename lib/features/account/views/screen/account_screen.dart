import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/account_header.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/account_language.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/account_logout.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/account_options.dart';
import 'package:physio_ghar_demo/features/account/views/widgets/account/account_profile_card.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';

class AccountScreen extends ConsumerStatefulWidget {
  const AccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountScreenState();
}

class _AccountScreenState extends ConsumerState<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AccountHeader(),
            24.hSizedBox,
            AccountProfileCard(),
            24.hSizedBox,
            AccountOptions(),
            24.hSizedBox,
            AccountLanguage(),
            24.hSizedBox,
            AccountLogout(),
            60.hSizedBox,
          ],
        ).pXY(20, 16),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:physio_ghar_demo/features/account/views/screen/complains_screen.dart';
// import 'package:physio_ghar_demo/features/account/views/screen/profile_detail_screen.dart';
// import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   // ===========================================================================
//   // PROFILE DATA
//   // ===========================================================================

//   String therapistName = 'Dr. Aayush Karki';
//   String therapistEmail = 'aayush.karki@example.com';
//   String therapistPhone = '+977 9841234567';
//   String therapistExperience = '5 years';
//   String therapistSpecialization = 'Orthopedic Physiotherapy';
//   String therapistAddress = 'Kathmandu, Nepal';

//   bool isAvailable = true;

//   // Selected application language.
//   String selectedLanguage = 'English';

//   // ===========================================================================
//   // LANGUAGE TEXT
//   // ===========================================================================

//   String get accountTitle {
//     return selectedLanguage == 'English' ? 'Account' : 'खाता';
//   }

//   String get accountEyebrow {
//     return selectedLanguage == 'English' ? 'SETTINGS' : 'सेटिङहरू';
//   }

//   String get profileLabel {
//     return selectedLanguage == 'English' ? 'My Profile' : 'मेरो प्रोफाइल';
//   }

//   String get editProfileLabel {
//     return selectedLanguage == 'English' ? 'Edit Profile' : 'प्रोफाइल सम्पादन';
//   }

//   String get availabilityLabel {
//     return selectedLanguage == 'English' ? 'Availability' : 'उपलब्धता';
//   }

//   String get languageLabel {
//     return selectedLanguage == 'English' ? 'Language' : 'भाषा';
//   }

//   String get complaintLabel {
//     return selectedLanguage == 'English'
//         ? 'Report an Issue'
//         : 'समस्या रिपोर्ट गर्नुहोस्';
//   }

//   String get complaintSubtitle {
//     return selectedLanguage == 'English'
//         ? 'Report a problem to PhysioGhar admin'
//         : 'PhysioGhar एडमिनलाई समस्या रिपोर्ट गर्नुहोस्';
//   }

//   String get logoutLabel {
//     return selectedLanguage == 'English' ? 'Logout' : 'लगआउट';
//   }

//   // ===========================================================================
//   // BUILD
//   // ===========================================================================

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.mainBg,

//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.fromLTRB(18, 18, 18, 30),
//           children: [
//             _buildHeader(),

//             const SizedBox(height: 20),

//             // Therapist profile
//             _buildProfileCard(),

//             const SizedBox(height: 18),

//             // Account options
//             _buildAccountOptions(),

//             const SizedBox(height: 18),

//             // Language
//             _buildLanguageSection(),

//             const SizedBox(height: 18),

//             // Logout
//             _buildLogoutButton(),
//           ],
//         ),
//       ),
//     );
//   }

//   // ===========================================================================
//   // HEADER
//   // ===========================================================================

//   Widget _buildHeader() {
//     return Row(
//       children: [
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 accountEyebrow,
//                 style: GoogleFonts.ibmPlexMono(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w600,
//                   letterSpacing: 1.5,
//                   color: AppColors.primary,
//                 ),
//               ),

//               const SizedBox(height: 4),

//               Text(
//                 accountTitle,
//                 style: GoogleFonts.fraunces(
//                   fontSize: 29,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.primaryText,
//                 ),
//               ),

//               const SizedBox(height: 3),

//               Text(
//                 selectedLanguage == 'English'
//                     ? 'Manage your therapist profile'
//                     : 'आफ्नो थेरापिस्ट प्रोफाइल व्यवस्थापन गर्नुहोस्',
//                 style: GoogleFonts.inter(
//                   fontSize: 12,
//                   color: AppColors.secondaryText,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         Container(
//           width: 44,
//           height: 44,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(14),
//           ),
//           child: const Icon(Icons.settings_outlined, color: AppColors.primary),
//         ),
//       ],
//     );
//   }

//   // ===========================================================================
//   // PROFILE CARD
//   // ===========================================================================

//   Widget _buildProfileCard() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: AppColors.neutralBg),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               // -----------------------------------------------------------------
//               // Avatar
//               // -----------------------------------------------------------------
//               Stack(
//                 children: [
//                   Container(
//                     width: 72,
//                     height: 72,
//                     decoration: BoxDecoration(
//                       color: AppColors.lightBg,
//                       borderRadius: BorderRadius.circular(22),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       _initials(therapistName),
//                       style: GoogleFonts.fraunces(
//                         fontSize: 23,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.primary,
//                       ),
//                     ),
//                   ),

//                   // Camera button
//                   Positioned(
//                     right: -2,
//                     bottom: -2,
//                     child: Container(
//                       width: 24,
//                       height: 24,
//                       decoration: BoxDecoration(
//                         color: AppColors.primary,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(color: Colors.white, width: 2),
//                       ),
//                       child: const Icon(
//                         Icons.camera_alt_outlined,
//                         size: 12,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(width: 14),

//               // -----------------------------------------------------------------
//               // Name + specialization
//               // -----------------------------------------------------------------
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       therapistName,
//                       style: GoogleFonts.fraunces(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.primaryText,
//                       ),
//                     ),

//                     const SizedBox(height: 4),

//                     Text(
//                       therapistSpecialization,
//                       style: GoogleFonts.inter(
//                         fontSize: 12,
//                         color: AppColors.secondaryText,
//                       ),
//                     ),

//                     const SizedBox(height: 8),

//                     _availabilityPill(),
//                   ],
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 22),

//           Container(
//             width: double.infinity,
//             height: 1,
//             color: AppColors.neutralBg,
//           ),

//           const SizedBox(height: 18),

//           _profileInfoRow(Icons.email_outlined, therapistEmail),

//           const SizedBox(height: 12),

//           _profileInfoRow(Icons.phone_outlined, therapistPhone),

//           const SizedBox(height: 12),

//           _profileInfoRow(Icons.location_on_outlined, therapistAddress),

//           const SizedBox(height: 18),

//           SizedBox(
//             width: double.infinity,
//             height: 46,
//             child: OutlinedButton.icon(
//               onPressed: _openEditProfile,
//               icon: const Icon(Icons.edit_outlined, size: 17),
//               label: Text(
//                 editProfileLabel,
//                 style: GoogleFonts.inter(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               style: OutlinedButton.styleFrom(
//                 foregroundColor: AppColors.primary,
//                 side: const BorderSide(color: AppColors.primary),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // ===========================================================================
//   // ACCOUNT OPTIONS
//   // ===========================================================================

//   Widget _buildAccountOptions() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         border: Border.all(color: AppColors.neutralBg),
//       ),
//       child: Column(
//         children: [
//           // ---------------------------------------------------------------------
//           // My Profile
//           // ---------------------------------------------------------------------
//           _accountOption(
//             icon: Icons.person_outline_rounded,
//             title: profileLabel,
//             subtitle: selectedLanguage == 'English'
//                 ? 'View your professional information'
//                 : 'आफ्नो व्यावसायिक जानकारी हेर्नुहोस्',
//             onTap: _openProfileDetails,
//           ),

//           _divider(),

//           // ---------------------------------------------------------------------
//           // Availability
//           // ---------------------------------------------------------------------
//           _accountOption(
//             icon: Icons.circle_outlined,
//             title: availabilityLabel,
//             subtitle: isAvailable
//                 ? selectedLanguage == 'English'
//                       ? 'You are currently available'
//                       : 'तपाईं अहिले उपलब्ध हुनुहुन्छ'
//                 : selectedLanguage == 'English'
//                 ? 'You are currently unavailable'
//                 : 'तपाईं अहिले उपलब्ध हुनुहुन्न',
//             trailing: Switch.adaptive(
//               value: isAvailable,
//               activeColor: AppColors.primary,
//               onChanged: (value) {
//                 setState(() {
//                   isAvailable = value;
//                 });
//               },
//             ),
//           ),

//           _divider(),

//           // ---------------------------------------------------------------------
//           // Report an Issue / Complaints
//           // ---------------------------------------------------------------------
//           _accountOption(
//             icon: Icons.report_problem_outlined,
//             title: complaintLabel,
//             subtitle: complaintSubtitle,
//             onTap: _openComplaints,
//           ),
//         ],
//       ),
//     );
//   }

//   // ===========================================================================
//   // LANGUAGE
//   // ===========================================================================

//   Widget _buildLanguageSection() {
//     return Container(
//       padding: const EdgeInsets.all(17),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         border: Border.all(color: AppColors.neutralBg),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: AppColors.lightBg,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Icon(
//                   Icons.language_rounded,
//                   size: 19,
//                   color: AppColors.primary,
//                 ),
//               ),

//               const SizedBox(width: 11),

//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       languageLabel,
//                       style: GoogleFonts.inter(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.primaryText,
//                       ),
//                     ),

//                     const SizedBox(height: 3),

//                     Text(
//                       selectedLanguage == 'English'
//                           ? 'Choose your preferred language'
//                           : 'आफ्नो मनपर्ने भाषा छान्नुहोस्',
//                       style: GoogleFonts.inter(
//                         fontSize: 11,
//                         color: AppColors.secondaryText,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 15),

//           Row(
//             children: [
//               Expanded(child: _languageButton('English', 'EN')),

//               const SizedBox(width: 10),

//               Expanded(child: _languageButton('Nepali', 'ने')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _languageButton(String language, String shortLabel) {
//     final selected = selectedLanguage == language;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedLanguage = language;
//         });
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         height: 52,
//         decoration: BoxDecoration(
//           color: selected ? AppColors.primary : AppColors.neutralBg,
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: selected ? AppColors.primary : Colors.transparent,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 26,
//               height: 26,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: selected ? Colors.white.withOpacity(.15) : Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Text(
//                 shortLabel,
//                 style: GoogleFonts.inter(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w700,
//                   color: selected ? Colors.white : AppColors.primary,
//                 ),
//               ),
//             ),

//             const SizedBox(width: 8),

//             Text(
//               language,
//               style: GoogleFonts.inter(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w600,
//                 color: selected ? Colors.white : AppColors.secondaryText,
//               ),
//             ),

//             if (selected) ...[
//               const SizedBox(width: 7),

//               const Icon(
//                 Icons.check_circle_rounded,
//                 size: 16,
//                 color: Colors.white,
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }

//   // ===========================================================================
//   // LOGOUT
//   // ===========================================================================

//   Widget _buildLogoutButton() {
//     return GestureDetector(
//       onTap: _showLogoutDialog,
//       child: Container(
//         height: 52,
//         decoration: BoxDecoration(
//           color: AppColors.errorBg,
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(color: AppColors.error.withOpacity(.15)),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(Icons.logout_rounded, size: 19, color: AppColors.error),

//             const SizedBox(width: 9),

//             Text(
//               logoutLabel,
//               style: GoogleFonts.inter(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w600,
//                 color: AppColors.error,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // ===========================================================================
//   // PROFILE DETAILS
//   // ===========================================================================

//   void _openProfileDetails() {
//     // Navigator.push(
//     //   context,
//     //   MaterialPageRoute(
//     //     builder: (_) => ProfileDetailsScreen(
//     //       name: therapistName,
//     //       email: therapistEmail,
//     //       phone: therapistPhone,
//     //       experience: therapistExperience,
//     //       specialization: therapistSpecialization,
//     //       address: therapistAddress,
//     //       isAvailable: isAvailable,
//     //       language: selectedLanguage,
//     //     ),
//     //   ),
//     // );
//   }

//   // ===========================================================================
//   // COMPLAINTS
//   // ===========================================================================

//   void _openComplaints() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (_) => const ComplaintsScreen()),
//     );
//   }

//   // ===========================================================================
//   // EDIT PROFILE
//   // ===========================================================================

//   void _openEditProfile() {
//     final nameController = TextEditingController(text: therapistName);

//     final phoneController = TextEditingController(text: therapistPhone);

//     final emailController = TextEditingController(text: therapistEmail);

//     final experienceController = TextEditingController(
//       text: therapistExperience,
//     );

//     final specializationController = TextEditingController(
//       text: therapistSpecialization,
//     );

//     final addressController = TextEditingController(text: therapistAddress);

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: AppColors.mainBg,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
//       ),
//       builder: (context) {
//         return Padding(
//           padding: EdgeInsets.fromLTRB(
//             20,
//             14,
//             20,
//             MediaQuery.of(context).viewInsets.bottom + 25,
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _sheetHandle(),

//                 const SizedBox(height: 20),

//                 Text(
//                   selectedLanguage == 'English'
//                       ? 'Edit Profile'
//                       : 'प्रोफाइल सम्पादन',
//                   style: GoogleFonts.fraunces(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w700,
//                     color: AppColors.primaryText,
//                   ),
//                 ),

//                 const SizedBox(height: 4),

//                 Text(
//                   selectedLanguage == 'English'
//                       ? 'Update your professional information'
//                       : 'आफ्नो व्यावसायिक जानकारी अपडेट गर्नुहोस्',
//                   style: GoogleFonts.inter(
//                     fontSize: 12,
//                     color: AppColors.secondaryText,
//                   ),
//                 ),

//                 const SizedBox(height: 22),

//                 _fieldLabel(selectedLanguage == 'English' ? 'NAME' : 'नाम'),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: nameController,
//                   hint: 'Your name',
//                   icon: Icons.person_outline,
//                 ),

//                 const SizedBox(height: 15),

//                 _fieldLabel(selectedLanguage == 'English' ? 'PHONE' : 'फोन'),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: phoneController,
//                   hint: '+977 98XXXXXXXX',
//                   icon: Icons.phone_outlined,
//                   keyboardType: TextInputType.phone,
//                 ),

//                 const SizedBox(height: 15),

//                 _fieldLabel(selectedLanguage == 'English' ? 'EMAIL' : 'इमेल'),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: emailController,
//                   hint: 'your@email.com',
//                   icon: Icons.email_outlined,
//                   keyboardType: TextInputType.emailAddress,
//                 ),

//                 const SizedBox(height: 15),

//                 _fieldLabel(
//                   selectedLanguage == 'English' ? 'EXPERIENCE' : 'अनुभव',
//                 ),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: experienceController,
//                   hint: 'e.g. 5 years',
//                   icon: Icons.work_outline,
//                 ),

//                 const SizedBox(height: 15),

//                 _fieldLabel(
//                   selectedLanguage == 'English'
//                       ? 'SPECIALIZATION'
//                       : 'विशेषज्ञता',
//                 ),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: specializationController,
//                   hint: 'e.g. Orthopedic Physiotherapy',
//                   icon: Icons.medical_services_outlined,
//                 ),

//                 const SizedBox(height: 15),

//                 _fieldLabel(
//                   selectedLanguage == 'English' ? 'ADDRESS' : 'ठेगाना',
//                 ),

//                 const SizedBox(height: 7),

//                 _textField(
//                   controller: addressController,
//                   hint: 'Your address',
//                   icon: Icons.location_on_outlined,
//                 ),

//                 const SizedBox(height: 25),

//                 SizedBox(
//                   width: double.infinity,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         therapistName = nameController.text.trim();

//                         therapistPhone = phoneController.text.trim();

//                         therapistEmail = emailController.text.trim();

//                         therapistExperience = experienceController.text.trim();

//                         therapistSpecialization = specializationController.text
//                             .trim();

//                         therapistAddress = addressController.text.trim();
//                       });

//                       Navigator.pop(context);

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text(
//                             selectedLanguage == 'English'
//                                 ? 'Profile updated successfully'
//                                 : 'प्रोफाइल सफलतापूर्वक अपडेट भयो',
//                             style: GoogleFonts.inter(),
//                           ),
//                           backgroundColor: AppColors.primary,
//                           behavior: SnackBarBehavior.floating,
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: AppColors.primary,
//                       foregroundColor: Colors.white,
//                       elevation: 0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text(
//                       selectedLanguage == 'English'
//                           ? 'Save Changes'
//                           : 'परिवर्तनहरू सुरक्षित गर्नुहोस्',
//                       style: GoogleFonts.inter(fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // ===========================================================================
//   // LOGOUT DIALOG
//   // ===========================================================================

//   void _showLogoutDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           backgroundColor: AppColors.mainBg,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           title: Text(
//             selectedLanguage == 'English' ? 'Logout?' : 'लगआउट गर्ने?',
//             style: GoogleFonts.fraunces(
//               fontSize: 23,
//               fontWeight: FontWeight.w700,
//               color: AppColors.primaryText,
//             ),
//           ),
//           content: Text(
//             selectedLanguage == 'English'
//                 ? 'You will be returned to the login screen.'
//                 : 'तपाईं लगइन स्क्रिनमा फर्कनुहुनेछ।',
//             style: GoogleFonts.inter(
//               fontSize: 13,
//               height: 1.5,
//               color: AppColors.secondaryText,
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text(
//                 selectedLanguage == 'English' ? 'Cancel' : 'रद्द गर्नुहोस्',
//                 style: GoogleFonts.inter(color: AppColors.secondaryText),
//               ),
//             ),

//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);

//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       selectedLanguage == 'English'
//                           ? 'Logout action triggered'
//                           : 'लगआउट कार्य सुरु भयो',
//                       style: GoogleFonts.inter(),
//                     ),
//                     backgroundColor: AppColors.primary,
//                     behavior: SnackBarBehavior.floating,
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.error,
//                 foregroundColor: Colors.white,
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               child: Text(
//                 selectedLanguage == 'English' ? 'Logout' : 'लगआउट',
//                 style: GoogleFonts.inter(fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   // ===========================================================================
//   // SMALL COMPONENTS
//   // ===========================================================================

//   Widget _availabilityPill() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
//       decoration: BoxDecoration(
//         color: isAvailable ? AppColors.lightBg : AppColors.neutralBg,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 6,
//             height: 6,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isAvailable ? AppColors.primary : AppColors.mutedText,
//             ),
//           ),

//           const SizedBox(width: 6),

//           Text(
//             isAvailable
//                 ? selectedLanguage == 'English'
//                       ? 'AVAILABLE'
//                       : 'उपलब्ध'
//                 : selectedLanguage == 'English'
//                 ? 'UNAVAILABLE'
//                 : 'अनुपलब्ध',
//             style: GoogleFonts.ibmPlexMono(
//               fontSize: 8,
//               fontWeight: FontWeight.w700,
//               letterSpacing: .7,
//               color: isAvailable ? AppColors.primary : AppColors.mutedText,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _profileInfoRow(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon, size: 17, color: AppColors.mutedText),

//         const SizedBox(width: 9),

//         Expanded(
//           child: Text(
//             text,
//             overflow: TextOverflow.ellipsis,
//             style: GoogleFonts.inter(
//               fontSize: 12,
//               color: AppColors.secondaryText,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _accountOption({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     VoidCallback? onTap,
//     Widget? trailing,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(16),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
//         child: Row(
//           children: [
//             Container(
//               width: 42,
//               height: 42,
//               decoration: BoxDecoration(
//                 color: AppColors.neutralBg,
//                 borderRadius: BorderRadius.circular(13),
//               ),
//               child: Icon(icon, size: 19, color: AppColors.primary),
//             ),

//             const SizedBox(width: 12),

//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: GoogleFonts.inter(
//                       fontSize: 13,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.primaryText,
//                     ),
//                   ),

//                   const SizedBox(height: 3),

//                   Text(
//                     subtitle,
//                     style: GoogleFonts.inter(
//                       fontSize: 10,
//                       color: AppColors.secondaryText,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             trailing ??
//                 const Icon(
//                   Icons.chevron_right_rounded,
//                   color: AppColors.mutedText,
//                 ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _divider() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 69),
//       child: Container(height: 1, color: AppColors.neutralBg),
//     );
//   }

//   Widget _fieldLabel(String text) {
//     return Text(
//       text,
//       style: GoogleFonts.ibmPlexMono(
//         fontSize: 9,
//         fontWeight: FontWeight.w700,
//         letterSpacing: 1,
//         color: AppColors.mutedText,
//       ),
//     );
//   }

//   Widget _textField({
//     required TextEditingController controller,
//     required String hint,
//     required IconData icon,
//     TextInputType? keyboardType,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       style: GoogleFonts.inter(fontSize: 13, color: AppColors.primaryText),
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: GoogleFonts.inter(fontSize: 12, color: AppColors.mutedText),
//         prefixIcon: Icon(icon, size: 18, color: AppColors.mutedText),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: const EdgeInsets.symmetric(vertical: 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(14),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }

//   Widget _sheetHandle() {
//     return Center(
//       child: Container(
//         width: 40,
//         height: 4,
//         decoration: BoxDecoration(
//           color: AppColors.mutedText.withOpacity(.3),
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }

//   String _initials(String name) {
//     final parts = name.split(' ');

//     if (parts.length >= 2) {
//       return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
//     }

//     return name.substring(0, 1).toUpperCase();
//   }
// }
