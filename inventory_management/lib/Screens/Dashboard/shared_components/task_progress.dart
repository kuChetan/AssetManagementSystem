import 'package:flutter/material.dart';
import 'package:inventory_management/Screens/Dashboard/constans/app_constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TicketProgressData {
  final int totalTask;
  final int totalCompleted;

  const TicketProgressData({
    required this.totalTask,
    required this.totalCompleted,
  });
}

class TaskProgress extends StatelessWidget {
  const TaskProgress.TicketProgress({
    required this.data,
    Key? key,
  }) : super(key: key);

  final TicketProgressData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildText(),
        Expanded(child: _buildProgress()),
      ],
    );
  }

  Widget _buildText() {
    return Text(
      "${data.totalCompleted} of ${data.totalTask} completed",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: kFontColorPallets[2],
        fontSize: 13,
      ),
    );
  }

  Widget _buildProgress() {
    return LinearPercentIndicator(
      percent: data.totalCompleted / data.totalTask,
      progressColor: Colors.blueGrey,
      backgroundColor: Colors.blueGrey[200],
    );
  }
}
