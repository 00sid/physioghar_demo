import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/provider/session/request_list_provider.dart';
import 'package:physio_ghar_demo/features/schedule_and_session_mgmt/views/widgets/session/session_list.dart';

class RequestList extends ConsumerStatefulWidget {
  const RequestList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RequestListState();
}

class _RequestListState extends ConsumerState<RequestList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final list = ref.watch(providerOfRequestList);
        return SessionList(
          sessionList: list,
          emptySubTitleMsg: 'No upcoming sessions',
          emptyTitleMsg: 'Accepted bookings will appear here.',
        );
      },
    );
  }
}
