import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key});

  @override
  ConsumerState<ProfileTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
