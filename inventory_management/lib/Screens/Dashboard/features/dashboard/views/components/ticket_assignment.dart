part of dashboard;

class _DeviceTicketDetails extends StatelessWidget {
  const _DeviceTicketDetails({
    required this.data,
    required this.onPressed,
    required this.onPressedAssign,
    required this.onPressedMember,
    Key? key,
  }) : super(key: key);

  final List<ListTicketAssignedData> data;
  final Function(int index, ListTicketAssignedData data) onPressed;
  final Function(int index, ListTicketAssignedData data) onPressedAssign;
  final Function(int index, ListTicketAssignedData data) onPressedMember;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .asMap()
          .entries
          .map(
            (e) => ListTaskAssigned(
              data: e.value,
              onPressed: () => onPressed(e.key, e.value),
              onPressedAssign: () => onPressedAssign(e.key, e.value),
              onPressedMember: () => onPressedMember(e.key, e.value),
            ),
          )
          .toList(),
    );
  }
}
