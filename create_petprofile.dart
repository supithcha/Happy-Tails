import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreatePetProfilePage(),
    );
  }
}

class CreatePetProfilePage extends StatefulWidget {
  @override
  _CreatePetProfilePageState createState() => _CreatePetProfilePageState();
}

class _CreatePetProfilePageState extends State<CreatePetProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _breed;
  String? _dob;
  String? _weight;
  String? _vaccinationStatus;
  String? _medicalHistory;
  String? _allergies;
  String? _medication;
  String? _doctorAppointment;
  String? _gender;

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
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      // BoxShadow(color: Colors.white, spreadRadius: 0),
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(
                          3.0,
                          3.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Center(
                        child: Image(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Antu_insert-image.svg/1200px-Antu_insert-image.svg.png"),
                          width: 80,
                          height: double.infinity,
                        ),
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
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
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
                                    vertical: 10,
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
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                      // child: TextFormField(
                      //   decoration: InputDecoration(labelText: 'Breed or Mix'),
                      //   validator: (value) {
                      //     if (value == null || value.isEmpty) {
                      //       return 'Please enter your pet\'s breed';
                      //     }
                      //     return null;
                      //   },
                      //   onSaved: (value) {
                      //     _breed = value;
                      //   },
                      // ),
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
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your pet\'s Date of Birth';
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
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
                              onPressed: () {
                                // Add your edit icon onPressed logic here
                              },
                            ),
                          ),
                        ],
                      ),
                      // child: TextFormField(
                      //   decoration: InputDecoration(labelText: 'Date of Birth'),
                      //   validator: (value) {
                      //     // Add validation if needed
                      //     return null;
                      //   },
                      //   onSaved: (value) {
                      //     _dob = value;
                      //   },
                      // ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                // Weight Section
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      2.3, // Half of the screen width
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
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
                              _weight = value;
                            },
                          ),
                          Positioned(
                            top:
                                12, // Adjust the position of the icon as needed
                            right: 8,
                            child:
                                Icon(Icons.drive_file_rename_outline_outlined), // Icon inside the input box
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Weight'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _weight = value;
                //   },
                // ),

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
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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

                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Vaccination Status'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _vaccinationStatus = value;
                //   },
                // ),

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
                              _vaccinationStatus = value;
                            },
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Medical History'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _medicalHistory = value;
                //   },
                // ),

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
                              _vaccinationStatus = value;
                            },
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Allergies'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _allergies = value;
                //   },
                // ),

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
                              _vaccinationStatus = value;
                            },
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Medication'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _medication = value;
                //   },
                // ),

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
                              _vaccinationStatus = value;
                            },
                          ),
                          Positioned(
                            top: 3, // Adjust the position of the icon as needed
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.drive_file_rename_outline_outlined),
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
                // TextFormField(
                //   decoration: InputDecoration(labelText: 'Doctor Appointment'),
                //   validator: (value) {
                //     // Add validation if needed
                //     return null;
                //   },
                //   onSaved: (value) {
                //     _doctorAppointment = value;
                //   },
                // ),

                // Confirm Button
                SizedBox(height: 16),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.8, // 80% of the screen width
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          // Navigate to the review page and pass the form data
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ReviewPage(
                          //       name: _name ?? '', // Pass the name field from your form
                          //       gender: _gender ?? '', // Pass the gender field from your form
                          //       vaccinationStatus: _vaccinationStatus ?? '', // Pass the vaccination status field from your form
                          //       // Add more parameters for other fields
                          //     ),
                          //   ),
                          // );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade400, // Gray color
                        onPrimary: Colors.black, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(25), // Border radius
                        ),
                      ),
                      child: Text('Confirm',
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.blue.shade900,
            selectedItemColor: Colors.blue.shade900,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: 'Record',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: 'Clinic',
              ),
              BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade900.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange[200],
              child: Icon(Icons.home_outlined, color: Colors.blue.shade900),
            ),
          ),
          label: '', // Empty label to hide text
        ),
              // BottomNavigationBarItem(
              //   icon: CircleAvatar(
              //     backgroundColor: Colors.deepOrange[200],
              //     child: Icon(Icons.home, color: Colors.blue.shade900),
              //   ),
              //   label: '', // Empty label to hide text
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.class_outlined),
                label: 'Guide',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
