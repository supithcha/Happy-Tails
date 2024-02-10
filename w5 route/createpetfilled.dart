import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'petprofile.dart';
import 'createpetprofile.dart';
import 'option_pet_select.dart';
import 'package:happytails/bottom_nav.dart';

class petprofilefilled extends StatefulWidget {
  final PetInformation petInfo;
  final Uint8List? image;

  const petprofilefilled({Key? key, required this.petInfo, this.image})
      : super(key: key);


  @override
   _petprofilefilledState createState() => _petprofilefilledState();
}

class _petprofilefilledState extends State<petprofilefilled> {
   int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Form(
            // key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Photo Section
                SizedBox(height: 30),
                Container(
  height: 170,
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade400,
        offset: const Offset(
          3.0,
          3.0,
        ),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: const Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ),
    ],
  ),
  child: Stack(
    alignment: Alignment.bottomRight,
    children: [
      if (widget.image != null)
              Image.memory(
                widget.image!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
      IconButton(
        icon: Icon(Icons.camera_alt),
        onPressed: () {
          // Handle camera icon click
        },
      ),
    ],
  ),
),

                // Container(
                //   height: 170,
                //   width: 550,
                //   // width: double.infinity,
                //   decoration: BoxDecoration(
                //     border: Border.all(),
                //     borderRadius: BorderRadius.circular(10),
                //     boxShadow: [
                //       // BoxShadow(color: Colors.white, spreadRadius: 0),
                //       BoxShadow(
                //         color: Colors.grey.shade400,
                //         offset: const Offset(
                //           3.0,
                //           3.0,
                //         ),
                //         blurRadius: 5.0,
                //         spreadRadius: 1.0,
                //       ), //BoxShadow
                //       BoxShadow(
                //         color: Colors.white,
                //         offset: const Offset(0.0, 0.0),
                //         blurRadius: 0.0,
                //         spreadRadius: 0.0,
                //       ), //BoxShadow
                //     ],
                //   ),
                //   child: Stack(
                //     alignment: Alignment.bottomRight,
                //     children: [
                //       Center(
                //         child: Image.asset(
                //           'assets/chanel.png', 
                //           fit: BoxFit.fill,
                //         ),
                //       ),
                //       IconButton(
                //         icon: Icon(Icons.camera_alt),
                //         onPressed: () {
                //           // Handle camera icon click
                //         },
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 30),
                // Name and Gender Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top:
                                30, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gender',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.gender,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top:
                                30, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                // Breed and Date of Birth Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Breed or Mix',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.breed,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top:
                                30, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date of Birth',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.dob,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top: 30,
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Weight',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.breed,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top:
                                30, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pet type',
                                // style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                // ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.petInfo.petType,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ],
                          ),
                          Positioned(
                            top:
                                30, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OptionPetPage()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),
                // Health and Medical Information Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Health and Medical Information Section',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Vaccination Status
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vaccination Status',
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: widget.petInfo.vaccinationStatus,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(),
                              ),
                            ),
                            readOnly: true,
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Medical History
                SizedBox(height: 16),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medical History',
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: widget.petInfo.medicalHistory,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(),
                              ),
                            ),
                            readOnly: true,
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Allergies
                SizedBox(height: 16),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Allergies',
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: widget.petInfo.allergies,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(),
                              ),
                            ),
                            readOnly: true,
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Medication
                SizedBox(height: 16),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medication',
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: widget.petInfo.medication,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(),
                              ),
                            ),
                            readOnly: true,
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Doctor Appointment
                SizedBox(height: 16),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Doctor Appointment',
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: widget.petInfo.doctorAppointment,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(),
                              ),
                            ),
                            readOnly: true,
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                  Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // Confirm Button
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.8, // 80% of the screen width
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Petprofile()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 0, 74, 173),
                        onPrimary: Colors.black, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(25), // Border radius
                        ),
                      ),
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white, // Set text color to white
                          fontWeight: FontWeight.bold, // Set text to bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(40, 35, 0, 76),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          items: [
            // Record
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Record",
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 160, 138),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 75, 173),
                      blurRadius: 12.0,
                      spreadRadius: 2.29,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.calendar_month_outlined),
                ),
              ),
            ),
            // Clinic
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "Clinic",
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 160, 138),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 75, 173),
                      blurRadius: 12.0,
                      spreadRadius: 2.29,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.location_on_outlined),
                ),
              ),
            ),
            // Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 160, 138),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 75, 173),
                      blurRadius: 12.0,
                      spreadRadius: 2.29,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.home_outlined),
                ),
              ),
            ),
            // Guide
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "Guide",
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 160, 138),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 75, 173),
                      blurRadius: 12.0,
                      spreadRadius: 2.29,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.book_outlined),
                ),
              ),
            ),
            // Profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "Profile",
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 160, 138),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 75, 173),
                      blurRadius: 12.0,
                      spreadRadius: 2.29,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.person_outline_rounded),
                ),
              ),
            ),
          ],
          currentIndex: selectedIndex,
          unselectedItemColor: Color.fromARGB(255, 0, 74, 173),
          showUnselectedLabels: true,
          selectedItemColor: Color.fromARGB(255, 0, 74, 173),
          showSelectedLabels: false,
          onTap: onItemTapped,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
        ),
      ),
    );
  }
}