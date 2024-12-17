import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesTab extends ConsumerStatefulWidget {
  const FavoritesTab({super.key});

  @override
  ConsumerState<FavoritesTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<FavoritesTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
