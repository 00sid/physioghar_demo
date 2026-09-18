import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/upcoming_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_list.dart';

class UpcomingList extends ConsumerStatefulWidget {
  const UpcomingList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpcomingListState();
}

class _UpcomingListState extends ConsumerState<UpcomingList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final list = ref.watch(providerOfUpcomingList);
        return SessionList(
          sessionList: list,
          emptySubTitleMsg: 'No upcoming sessions',
          emptyTitleMsg: 'Accepted bookings will appear here.',
        );
      },
    );
  }
}
