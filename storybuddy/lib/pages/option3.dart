import 'package:flutter/material.dart';
import './option3_story/storylist.dart';
class AgeGroupCard3 extends StatelessWidget {
  final String ageRange;
  final String label;
  const AgeGroupCard3({
    super.key,
    required this.ageRange,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => StoryListScreen(ageRange: ageRange))
  );
},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.child_care, size: 40, color: Colors.blue),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Age $ageRange', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(label, style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
