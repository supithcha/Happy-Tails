import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:happytails/utils.dart';
import 'option_pet_select.dart';
import 'createpetfilled.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PetInformation {
  final String name;
  final String gender;
  final String breed;
  final String dob;
  final String weight;
  final String petType;
  final String vaccinationStatus;
  final String medicalHistory;
  final String allergies;
  final String medication;
  final String doctorAppointment;

  PetInformation({
    required this.name,
    required this.gender,
    required this.breed,
    required this.dob,
    required this.weight,
    required this.petType,
    required this.vaccinationStatus,
    required this.medicalHistory,
    required this.allergies,
    required this.medication,
    required this.doctorAppointment,
  });
}

class CreatePetProfilePage extends StatefulWidget {
  @override
  final String selectedPetName;
  const CreatePetProfilePage({Key? key, required this.selectedPetName})
      : super(key: key);
  _CreatePetProfilePageState createState() => _CreatePetProfilePageState();
}

class _CreatePetProfilePageState extends State<CreatePetProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _gender;
  String? _breed;
  String? _dob;
  String? _weight;
  String? _vaccinationStatus;
  String? _medicalHistory;
  String? _allergies;
  String? _medication;
  String? _doctorAppointment;

  int _selectedIndex = 0;

  Uint8List? _img;

  void selectedImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    if (img != null) {
      setState(() {
        _img = img;
      });
    }
  }

  void _pickAndNavigateToNextPage() async {
    if (_img == null) {
      _img = await pickImage(ImageSource.gallery);
    }
    _navigateToNextPage(_img);
  }

  void _navigateToNextPage(Uint8List? image) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      PetInformation petInfo = PetInformation(
        name: _name ?? '',
        gender: _gender ?? '',
        breed: _breed ?? '',
        dob: _dob ?? '',
        weight: _weight ?? '',
        petType: widget.selectedPetName ?? '',
        vaccinationStatus: _vaccinationStatus ?? '',
        medicalHistory: _medicalHistory ?? '',
        allergies: _allergies ?? '',
        medication: _medication ?? '',
        doctorAppointment: _doctorAppointment ?? '',
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => petprofilefilled(
            petInfo: petInfo,
            image: image,
          ),
        ),
      );
    }
  }

  // void _navigateToNextPage() {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     PetInformation petInfo = PetInformation(
  //       name: _name ?? '',
  //       gender: _gender ?? '',
  //       breed: _breed ?? '',
  //       dob: _dob ?? '',
  //       weight: _weight ?? '',
  //       petType: widget.selectedPetName ?? '',
  //       vaccinationStatus: _vaccinationStatus ?? '',
  //       medicalHistory: _medicalHistory ?? '',
  //       allergies: _allergies ?? '',
  //       medication: _medication ?? '',
  //       doctorAppointment: _doctorAppointment ?? '',
  //     );
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         // builder: (context) => createpetprofilefilled(petInfo: petInfo),
  //         builder: (context) => petprofilefilled(petInfo: petInfo),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Photo Section
                SizedBox(height: 30),
                Container(
                  height: 170,
                  width: 550,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(3.0, 3.0),
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
                      if (_img != null)
                        Image.memory(
                          _img!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      IconButton(
                        icon: Icon(Icons.camera_alt),
                        // onPressed: _pickAndNavigateToNextPage,
                        onPressed: () {
                          selectedImage();
                        },
                      ),
                    ],
                  ),
                ),

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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your pet\'s name';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _name = value;
                                },
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
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 17,
                                    horizontal: 15,
                                  ),
                                ),
                                value: _gender,
                                onChanged: (newValue) {
                                  setState(() {
                                    _gender = newValue as String?;
                                  });
                                },
                                items: <String>[
                                  'Male',
                                  'Female'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your pet\'s breed';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _breed = value;
                                },
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                readOnly: true, // Make the field read-only
                                controller: TextEditingController(
                                  text: _dob ?? '', // Display the selected date
                                ),
                                onTap: () async {
                                  final DateTime? pickedDate =
                                      await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime.now(),
                                  );
                                  if (pickedDate != null) {
                                    setState(() {
                                      _dob = DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                    });
                                  }
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your pet\'s Date of Birth';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _dob =
                                      value ?? ''; // Update the _dob variable
                                },
                              ),

                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(10),
                              //       borderSide: BorderSide(),
                              //     ),
                              //   ),
                              //   validator: (value) {
                              //     if (value == null || value.isEmpty) {
                              //       return 'Please enter your pet\'s Date of Birth';
                              //     }
                              //     return null;
                              //   },
                              //   onSaved: (value) {
                              //     _dob = value;
                              //   },
                              // ),
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your pet\'s breed';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _weight = value;
                                },
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                initialValue: widget
                                    .selectedPetName, // Display the selected pet name
                                readOnly: true, // Make the field read-only
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
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                            validator: (value) {
                              // Add validation if needed
                              return null;
                            },
                            onSaved: (value) {
                              _vaccinationStatus = value;
                            },
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
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                            validator: (value) {
                              // Add validation if needed
                              return null;
                            },
                            onSaved: (value) {
                              _medicalHistory = value;
                            },
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
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                            validator: (value) {
                              // Add validation if needed
                              return null;
                            },
                            onSaved: (value) {
                              _allergies = value;
                            },
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
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                            validator: (value) {
                              // Add validation if needed
                              return null;
                            },
                            onSaved: (value) {
                              _medication = value;
                            },
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
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                            validator: (value) {
                              // Add validation if needed
                              return null;
                            },
                            onSaved: (value) {
                              _doctorAppointment = value;
                            },
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
                      onPressed: _pickAndNavigateToNextPage,
                      // onPressed: _navigateToNextPage(),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade400, // Gray color
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

                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState?.validate() ?? false) {
                //       _formKey.currentState?.save();
                //       // Handle form submission
                //     }
                //   },
                //   child: Text('Confirm'),
                // ),
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
