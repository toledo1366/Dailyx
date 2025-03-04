import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:dailyx/presentation/pages/main/widgets/diary_summary_entry_widget/cubit/diary_summary_entry_widget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:widgets_easier/widgets_easier.dart';

class DiarySummaryEntryWidget extends StatelessWidget {
  const DiarySummaryEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiarySummaryEntryWidgetCubit, DiarySummaryEntryWidgetState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: StrokeText(
              text: 'Dzisiejszy wpis:',
              strokeWidth: 1.8,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
      )
    );
  }

  Widget _createEmptyDiaryEntrySummary(BuildContext context) => GestureDetector(
    onTap: () => BlocProvider.of<DiarySummaryEntryWidgetCubit>(context).navigateToDiaryEditor(),
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 201, 230, 254),
        shape: DashedBorder(
          color: Colors.black,
          width: 1,
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
      child: const Center(
        child: StrokeText(
          text: 'Brak wpisów dzisiaj',
          strokeWidth: 1.8,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
  );

  Widget _createLoadedDiaryEntrySummary(BuildContext context, DiaryEntry entry) => GestureDetector(
    onTap: () => router.push('/diary_page', extra: entry.content),
    child: Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 201, 230, 254),
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.black,
            width: 1,
          )
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Text(entry.content, maxLines: 1,),
    ),
  );
}