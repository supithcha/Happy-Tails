import 'package:flutter/material.dart';
import 'createpetprofile.dart';

class OptionPetPage extends StatefulWidget {
  const OptionPetPage({Key? key}) : super(key: key);

  @override
  _OptionPetPageState createState() => _OptionPetPageState();
}

class _OptionPetPageState extends State<OptionPetPage> {
  int _selectedIndex = 0;

  // variable to keep track of the selected index
  int _selectedButtonIndex = -1;

  int _confirmButton = -1;

  // function to return the name of the option
  String getSelectedPetName() {
    switch (_selectedButtonIndex) {
      case 0:
        return 'Dog';
      case 1:
        return 'Cat';
      case 2:
        return 'Hamster';
      case 3:
        return 'Snake';
      case 4:
        return 'Bird';
      case 5:
        return 'Rabbit';
      case 6:
        return 'Fish';
      case 7:
        return 'Other';
      default:
        return ''; // You can return a default value or handle it as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Text at the top
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: const Text(
                      'Please choose your pet',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Column 1
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 0 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 0 ? -1 : 0;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 0
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/dog.png', height: 120),
                                const Text(
                                  'Dog',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Column 2
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 1 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 1 ? -1 : 1;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 1
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/cat.png', height: 120),
                                const Text(
                                  'Cat',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Column 1
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 2 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 2 ? -1 : 2;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 2
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/hamster.png', height: 120),
                                const Text(
                                  'Hamster',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Column 2
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 3 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 3 ? -1 : 3;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 3
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/snake1.png', height: 120),
                                const Text(
                                  'Snake',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Row 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Column 1
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 4 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 4 ? -1 : 4;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 4
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/bird.png', height: 120),
                                const Text(
                                  'Bird',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Column 2
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 5 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 5 ? -1 : 5;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 5
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/rabbit.png', height: 120),
                                const Text(
                                  'Rabbit',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Row 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Column 1
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 6 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 6 ? -1 : 6;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 6
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/fish.png', height: 120),
                                const Text(
                                  'Fish',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Column 2
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                // If select again then change to -1 (no border), otherwise set to 7 (with border)
                                _selectedButtonIndex =
                                    _selectedButtonIndex == 7 ? -1 : 7;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: _selectedButtonIndex == 7
                                    ? const BorderSide(
                                        color: Color.fromARGB(
                                            255, 0, 74, 173)) // Selected
                                    : BorderSide.none, // Not selected
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/pet/other.png', height: 120),
                                const Text(
                                  'Other',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
  
                  // Confirm button
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: FilledButton(
                      onPressed: () {
                        setState(() {
                          // If any option is selected (not -1), change the button color to blue, otherwise grey
                          _selectedButtonIndex != -1
                              ? _confirmButton = 0
                              : _selectedButtonIndex = -1;
                        });
                        // function to get the name of the selected pet
                        String selectedPetName = getSelectedPetName();
                        print('Selected Pet: $selectedPetName');
        
                        if (_selectedButtonIndex != -1) {
                          // Navigate to CreatePetProfilePage with the selected pet name
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatePetProfilePage(
                                  selectedPetName: selectedPetName),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: _selectedButtonIndex != -1
                            ? MaterialStateProperty.all(
                                Color.fromARGB(255, 0, 74, 173))
                            : MaterialStateProperty.all(
                                Color.fromARGB(255, 196, 196, 196)),
                        minimumSize: MaterialStateProperty.all(
                          Size(double.infinity, 40.0),
                        ),
                      ),
                      child: const Text('Confirm'),
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
        ));
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
