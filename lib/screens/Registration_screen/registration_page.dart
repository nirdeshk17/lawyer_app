import 'package:flutter/material.dart';
import 'package:untitled10/screens/home_screen.dart';
class LawyerRegistrationForm extends StatefulWidget {
  @override
  _LawyerRegistrationFormState createState() => _LawyerRegistrationFormState();
}

class _LawyerRegistrationFormState extends State<LawyerRegistrationForm> {
  final List<String> specializations = [
    'Civil Law',
    'Criminal Law',
    'Corporate Law',
    'Family Law',
    'Intellectual Property Law',
    'Immigration Law',
    // Add more specializations as needed
  ];

  // File? qualificationAttachment;
  //
  // void _attachQualification(File file) {
  //   setState(() {
  //     qualificationAttachment = file;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF8A2387),
        title: Text('Lawyer Registration'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,

            ),
            CircleAvatar(
              backgroundImage: NetworkImage("https://www.novelsuspects.com/wp-content/uploads/2022/05/michael-connelly-the-lincoln-lawyer-netflix.png?fit=1200%2C600"),
              backgroundColor: Colors.orangeAccent,
              radius: 60,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                fillColor:  Color(0xFF8A2387),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Address',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'City',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'State',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Zip Code',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Country',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Law Firm Name',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Law Firm Address',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Specialization',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
              items: specializations.map((specialization) {
                return DropdownMenuItem<String>(
                  value: specialization,
                  child: Text(specialization),
                );
              }).toList(),
              onChanged: (value) {
                // Handle specialization selection
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Bar Association Membership Number',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Years of Experience',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Education',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )
              ),
            ),
            SizedBox(height: 16),
            // TextFormField(
            //   decoration: InputDecoration(
            //     labelText: 'Professional Affiliations',
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //             color:  Color(0xFF8A2387),
            //           )
            //       )
            //   ),
            // ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Languages Spoken',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFF8A2387),
                      )
                  )

              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'About Me',
                border: OutlineInputBorder(
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  Color(0xFF8A2387),
                  )
                )
              ),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Attach Educational Certificates: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary:  Color(0xFF8A2387),),
                  onPressed: () {
                    // Implement file picker or image picker to attach qualification document
                    // Update the 'qualificationAttachment' variable with the selected file
                    // You can use plugins like 'file_picker' or 'image_picker' to implement this functionality.
                  },
                  child: Text('Attach'),
                ),
                SizedBox(width: 8),
                // Text(
                //   qualificationAttachment != null
                //       ? 'Attached: ${qualificationAttachment!.path}'
                //       : 'No attachment',
                // ),

              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Text('I agree to the terms and conditions'),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary:  Color(0xFF8A2387),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home_page()));
                // Handle form submission
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}