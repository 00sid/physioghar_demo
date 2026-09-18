import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/cancelled_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_list.dart';

class CancelledList extends ConsumerStatefulWidget {
  const CancelledList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CancelledListState();
}

class _CancelledListState extends ConsumerState<CancelledList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final list = ref.watch(providerOfCancelledList);
        return SessionList(
          sessionList: list,
          emptySubTitleMsg: 'No cancelled sessions',
          emptyTitleMsg: 'Declined bookings will appear here.',
        );
      },
    );
  }
}
