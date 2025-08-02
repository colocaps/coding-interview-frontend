import 'package:exchange_caclculator/design_system/atom/EFText.dart';
import 'package:flutter/material.dart';

Future<T?> showEFBottomSheet<T>({
  required BuildContext context,
  required List<T> items,
  required Widget Function(T) itemWidgetBuilder,
  required void Function(T) onItemSelected,
  String? title,
  bool isSearchInputVisible = true,
  String Function(T)? searchTextBuilder,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // Contenido del bottom sheet
          Flexible(
            child: BottomSheetBuilder<T>(
              items: items,
              itemWidgetBuilder: itemWidgetBuilder,
              onItemSelected: onItemSelected,
              title: title,
              isSearchInputVisible: isSearchInputVisible,
              searchTextBuilder: searchTextBuilder,
            ),
          ),
        ],
      ),
    ),
  );
}

class BottomSheetBuilder<T> extends StatefulWidget {
  const BottomSheetBuilder({
    required this.items,
    required this.itemWidgetBuilder,
    required this.onItemSelected,
    this.title,
    this.isSearchInputVisible = true,
    this.searchTextBuilder,
  });

  final List<T> items;
  final Widget Function(T) itemWidgetBuilder;
  final void Function(T) onItemSelected;
  final String? title;
  final bool isSearchInputVisible;
  final String Function(T)? searchTextBuilder;

  @override
  State<BottomSheetBuilder<T>> createState() => _BottomSheetBuilderState<T>();
}

class _BottomSheetBuilderState<T> extends State<BottomSheetBuilder<T>> {
  final TextEditingController _searchController = TextEditingController();
  late List<T> _filteredItems;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filter(String query) {
    setState(() {
      _filteredItems = widget.items.where((item) {
        if (widget.searchTextBuilder != null) {
          return widget.searchTextBuilder!(item)
              .toLowerCase()
              .contains(query.toLowerCase());
        }

        return item.toString().toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            EFText(
              text: widget.title ?? 'Seleccionar',
              color: Colors.black,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Visibility(
              visible: widget.isSearchInputVisible,
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Buscar...',
                  border: OutlineInputBorder(),
                ),
                onChanged: _filter,
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredItems.length,
                itemBuilder: (_, index) {
                  final item = _filteredItems[index];
                  return widget.itemWidgetBuilder(item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
