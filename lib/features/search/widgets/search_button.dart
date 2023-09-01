import 'package:flutter/material.dart';
import 'package:schedule/theme/custom_icons.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.hintColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                CustomIcons.search,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                'Поиск группы...',
                style: theme.textTheme.labelMedium,
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(CustomIcons.bar_chat),
        ],
      ),
    );
  }
}
