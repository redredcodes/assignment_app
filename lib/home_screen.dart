import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // the TE controller
  final TextEditingController _noOfGlassesTE = TextEditingController(text: '1');

  // list that will hold the infos
  List<WaterTrack> waterTrackList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // the counter part
          _buildWaterTrackCounter(),
          const SizedBox(
            height: 19,
          ),

          // the tracking records...
          _buildWaterTrackerListView()
        ],
      ),
    );
  }

  Widget _buildWaterTrackerListView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.separated(
            itemBuilder: (context, index) {
              final WaterTrack waterTrack = waterTrackList[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[200],
                  child: const Icon(Icons.water_drop_outlined, color: Colors.white,),
                ),
                title: Text(
                    '${waterTrack.dateTime.hour}:${waterTrack.dateTime.minute}'),
                subtitle: Text(
                    '${waterTrack.dateTime.day}/${waterTrack.dateTime.month}/${waterTrack.dateTime.year}'),
                trailing: IconButton(
                    onPressed: () {
                      _deleteButton(index);
                    },
                    icon: const Icon(Icons.delete_outline)),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: waterTrackList.length),
      ),
    );
  }

  // the counter part (main)
  Widget _buildWaterTrackCounter() {
    return Column(
      children: [
        Text(
          getTotalGlassCount().toString(),
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Text('Glass/s'),
        const SizedBox(
          height: 16,
        ),
        // textField
        SizedBox(
          width: 65,
          child: TextField(
            controller: _noOfGlassesTE,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
        ),
        const SizedBox(
          height: 8,
        ),

        // the add button
        ElevatedButton(
          onPressed: () {
            _addNewRecord();
          },
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black, width: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              //const CircleBorder(),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.blue[200],
              foregroundColor: Colors.black),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  // the getter function
  int getTotalGlassCount() {
    int counter = 0;
    for (WaterTrack t in waterTrackList) {
      counter += t.noOfGlasses;
    }
    return counter;
  }

  // the add button functions
  void _addNewRecord() {
    if (_noOfGlassesTE.text.isEmpty) {
      _noOfGlassesTE.text = '1';
    }
    final int noOfGlasses = int.tryParse(_noOfGlassesTE.text) ?? 1;

    // We need values to add to our list now but what value do we add? We will add the values below...
    WaterTrack waterTrack =
        WaterTrack(noOfGlasses: noOfGlasses, dateTime: DateTime.now());

    // add this to the track list...
    waterTrackList.add(waterTrack);
    setState(() {});
    // didn't end yet, to see the results, we need a getter type of function
  }

  void _deleteButton(index) {
    // we will be deleting what? something from the water track list
    waterTrackList.removeAt(index);
    setState(() {});
  }

  @override
  void dispose() {
    _noOfGlassesTE.dispose();
    super.dispose();
  }
}

// Data's we need to collect and show
// 2 things that we need- 1. How many glasses drank & 2. When it was drank
class WaterTrack {
  final int noOfGlasses;
  final DateTime dateTime;

  WaterTrack({required this.noOfGlasses, required this.dateTime});
}


