import 'package:auto_route/auto_route.dart';
import 'package:dailyx/core/locator/locator.dart';
import 'package:dailyx/presentation/pages/diary/cubit/diary_list_cubit.dart';
import 'package:dailyx/presentation/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/diary/diary_entity.dart';

@RoutePage()
class DiaryListPage extends StatefulWidget {
  const DiaryListPage({super.key});

  @override
  State<DiaryListPage> createState() => _DiaryListPageState();
}

class _DiaryListPageState extends State<DiaryListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiaryListCubit>(
      create: (context) => di.get<DiaryListCubit>()..fetchData(),
      child: Scaffold(
        body: BlocBuilder<DiaryListCubit, DiaryListState>(
          builder: (context, state) => state.map(
            failed: (message) => Container(), 
            success: (_) => _buildContent(_.data), 
            loading: (_) => Container(), 
            empty: (_) => _buildEmptyContent(),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }

  Widget _buildContent(List<DiaryEntity> items){
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        child: Column(
          children: [
            Text('TYTUŁ'),
            Text('TREŚĆ', maxLines: 1,),
            Text('DATA'),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyContent(){
    return Container();
  }
}