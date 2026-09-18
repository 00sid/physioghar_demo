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
