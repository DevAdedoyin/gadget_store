import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatalogTab extends ConsumerStatefulWidget {
  const CatalogTab({super.key});

  @override
  ConsumerState<CatalogTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<CatalogTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
