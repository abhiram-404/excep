import 'package:flutter/material.dart';
import 'package:untitled_1/sample_project/Doc/dochomepg.dart';
import 'package:untitled_1/sample_project/Doc/regdoc.dart';

class Special extends StatefulWidget {
  @override
  _SpecialState createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
  final List<String> specializations = [
    'Cardiology',
    'Dermatology',
    'Neurology',
    'Orthopedics',
    'Pediatrics',
    'Psychiatry',
    'Radiology',
    'Surgery',
  ];
  String? selectedSpecialization;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
      'Select Specialization',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        shadows: [
          Shadow(
            offset: Offset(1, 1),
            blurRadius: 2,
            color: Colors.black26,
          ),
        ],
      ),
    ),
    flexibleSpace: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.blue.shade700, Colors.blue.shade500, Colors.blue.shade700],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),
    ),
    centerTitle: true,
    elevation: 10, // Adds shadow for depth
    shadowColor: Colors.black38,
    leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RegDoc()),
    ); // Navigate back to the previous screen
    },
    ),
    ),

    body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade500, Colors.blue.shade300, Colors.blue.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              // Search bar
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    // Implement search functionality here if needed
                  });
                },
              ),
              SizedBox(height: 16),
              // Specialization Tiles
              Expanded(
                child: ListView.builder(
                  itemCount: specializations.length,
                  itemBuilder: (context, index) {
                    final specialization = specializations[index];
                    final isSelected = specialization == selectedSpecialization;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedSpecialization = null; // Deselect if already selected
                          } else {
                            selectedSpecialization = specialization; // Select the clicked item
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(vertical: 4), // Reduced spacing
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue.shade50 : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: isSelected
                              ? Border.all(color: Colors.blue.shade700, width: 2)
                              : Border.all(color: Colors.grey.shade300, width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_hospital,
                              color: isSelected
                                  ? Colors.blue.shade700
                                  : Colors.grey.shade700,
                              size: 30,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                specialization,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: isSelected
                                      ? Colors.blue.shade700
                                      : Colors.black87,
                                ),
                              ),
                            ),
                            if (isSelected)
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue.shade700,
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: selectedSpecialization != null
          ? FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Specialization Selected: $selectedSpecialization'),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DocHomepg()),
          );
        },
        label: Text(
          'Confirm',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(Icons.check,color: Colors.white,),
        backgroundColor: Colors.blue.shade500,
      )
          : null,
    );
  }
}
