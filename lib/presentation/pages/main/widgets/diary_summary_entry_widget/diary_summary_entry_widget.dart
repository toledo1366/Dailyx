import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:dailyx/presentation/pages/main/widgets/diary_summary_entry_widget/cubit/diary_summary_entry_widget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiarySummaryEntryWidget extends StatelessWidget {
  final DateTime selectedDate;
  const DiarySummaryEntryWidget(this.selectedDate, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiarySummaryEntryWidgetCubit, DiarySummaryEntryWidgetState>(
      builder: (context, state) => Container(
        margin: const EdgeInsets.only(left: 17, right: 25, top: 37, bottom: 49),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent
          ),
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 201, 230, 254)
        ),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 4, left: 20),
              child: Text(
                'Dzisiejszy wpis:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            state.map(
              loading: (_) => const Text('Loading'), 
              success: (data) => _createLoadedDiaryEntrySummary(context, data.entry), 
              noEntry: (_) => _createEmptyDiaryEntrySummary(context), 
              error: (_) => const Text('Error'), 
            )
          ],
        ),
      )
    );
  }

  Widget _createEmptyDiaryEntrySummary(BuildContext context) => GestureDetector(
    onTap: () => BlocProvider.of<DiarySummaryEntryWidgetCubit>(context).navigateToDiaryEditor(selectedDate),
    child: const Padding(
      padding: EdgeInsets.only(left: 20, right: 25, top: 4, bottom: 13),
      child: Text(
        'Brak wpisów dzisiaj',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );

  Widget _createLoadedDiaryEntrySummary(BuildContext context, DiaryEntry entry) => GestureDetector(
    onTap: () => router.push('/diary_page', extra: entry),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 25, top: 4, bottom: 13),
      child: Text(
        entry.content,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}