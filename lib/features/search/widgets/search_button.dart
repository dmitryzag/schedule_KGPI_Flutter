import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/bloc/schedule_bloc/schedule_bloc.dart';
import 'package:schedule/theme/custom_icons.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    context
        .read<ScheduleBloc>()
        .add(SearchGroupEvent(query: _textController.text));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.hintColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textCapitalization: TextCapitalization.characters,
                      style: const TextStyle(fontSize: 14),
                      controller: _textController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(2),
                        border: InputBorder.none,
                        hintText: 'Поиск группы...',
                        hintStyle: theme.textTheme.labelMedium,
                        prefixIcon: const Icon(
                          CustomIcons.search,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(CustomIcons.bar_chat),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
