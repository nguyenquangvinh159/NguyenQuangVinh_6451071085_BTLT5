import 'package:flutter/material.dart';
import '../../models/trip.dart';
import '../trip_detail_screen.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final PageController controller = PageController();

  String pickup = "";
  String destination = "";

  void nextPage() {
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void goToTripDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => TripDetailScreen(
          trip: Trip(pickup: pickup, destination: destination),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Ride")),
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          // Page 1
          _buildInputPage(
            title: "Chọn điểm đón",
            onSubmit: (value) {
              pickup = value;
              nextPage();
            },
          ),

          // Page 2
          _buildInputPage(
            title: "Chọn điểm đến",
            onSubmit: (value) {
              destination = value;
              nextPage();
            },
          ),

          // Page 3
          _buildConfirmPage(),
        ],
      ),
    );
  }

  Widget _buildInputPage({
    required String title,
    required Function(String) onSubmit,
  }) {
    TextEditingController controller = TextEditingController();

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 22)),
          TextField(controller: controller),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Next"),
            onPressed: () => onSubmit(controller.text),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pickup: $pickup"),
          Text("Destination: $destination"),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Confirm"),
            onPressed: goToTripDetail,
          ),
        ],
      ),
    );
  }
}