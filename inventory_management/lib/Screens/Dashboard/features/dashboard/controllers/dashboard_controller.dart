part of dashboard;

class DashboardController extends GetxController {
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();

  final dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "User",
    jobDesk: "Administrator",
  );

  final member = ["Support Staff-1", "Support staff-2"];

  final dataTask = const TicketProgressData(totalTask: 5, totalCompleted: 1);

  final dashboardCards = [
    CardDeviceData(
      label: "Total Devices",
      totalNo: "35",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    ),
    CardDeviceData(
      label: "Running Devices",
      totalNo: "17",
      dueDate: DateTime.now().add(const Duration(hours: 4)),
    ),
    CardDeviceData(
      label: "Devices in Maintenance",
      totalNo: "18",
      dueDate: DateTime.now().add(const Duration(days: 2)),
    ),
    CardDeviceData(
      label: "Ticket Raised",
      totalNo: "5",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    ),
    CardDeviceData(
      label: "Ticket closed",
      totalNo: "10",
      dueDate: DateTime.now().add(const Duration(minutes: 50)),
    )
  ];

  final ticketRaised = [
    ListTicketAssignedData(
      icon: const Icon(EvaIcons.alertTriangle, color: Colors.redAccent),
      label: "Device Scanner is not used",
      deviceLocation: "Nayagarh",
      assignTo: "Support staff-1",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTicketAssignedData(
      icon: const Icon(EvaIcons.alertTriangle, color: Colors.redAccent),
      label: "X-ray machine not working",
      deviceLocation: "Khurda",
      assignTo: "Support staff-2",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTicketAssignedData(
      icon: Icon(EvaIcons.alertTriangle, color: Colors.redAccent),
      label: "Part of x-ray is not working",
      deviceLocation: "Bhubaneswar",
    ),
    const ListTicketAssignedData(
      icon: Icon(EvaIcons.alertTriangle, color: Colors.redAccent),
      label: "Hemodialysis machine stop working ",
      deviceLocation: "Berhampur",
    ),
  ];

  final taskGroup = [
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 10)),
        label: "5 posts on instagram",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 2, hours: 11)),
        label: "Platform Concept",
        jobdesk: "Animation",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 5)),
        label: "UI UX Marketplace",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 4, hours: 6)),
        label: "Create Post For App",
        jobdesk: "Marketing",
      ),
    ],
    [
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 5)),
        label: "2 Posts on Facebook",
        jobdesk: "Marketing",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 6)),
        label: "Create Icon App",
        jobdesk: "Design",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 8)),
        label: "Fixing Error Payment",
        jobdesk: "Programmer",
      ),
      ListTaskDateData(
        date: DateTime.now().add(const Duration(days: 6, hours: 10)),
        label: "Create Form Interview",
        jobdesk: "System Analyst",
      ),
    ]
  ];

  void onPressedProfil() {}

  void onSelectedMainMenu(int index, SelectionButtonData value) {}
  void onSelectedTaskMenu(int index, String label) {}

  void searchTask(String value) {}

  void onPressedTask(int index, ListTicketAssignedData data) {}
  void onPressedAssignTask(int index, ListTicketAssignedData data) {}
  void onPressedMemberTask(int index, ListTicketAssignedData data) {}
  void onPressedCalendar() {}
  void onPressedTaskGroup(int index, ListTaskDateData data) {}

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
  }
}
