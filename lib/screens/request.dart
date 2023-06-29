import 'package:flutter/material.dart';

class Case {
  final String caseNumber;
  final String clientName;
  final String caseStatus;
  final String clientProfilePicUrl;

  Case({required this.caseNumber, required this.clientName, required this.caseStatus , required this.clientProfilePicUrl
  });
}
class Cases extends StatelessWidget {

  final List<Case> cases = [
    Case(
      clientName: 'John Smith',
      caseNumber: 'C001',
      caseStatus: 'Open',
      clientProfilePicUrl: 'https://example.com/client1_profile.jpg',
    ),
    Case(
      clientName: 'Emily Johnson',
      caseNumber: 'C002',
      caseStatus: 'Closed',
      clientProfilePicUrl: 'https://example.com/client2_profile.jpg',
    ),
    Case(
      clientName: 'Michael Brown',
      caseNumber: 'C003',
      caseStatus: 'Open',
      clientProfilePicUrl: 'https://example.com/client3_profile.jpg',
    ),
    // Add more cases here
  ];

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        itemCount: cases.length,
        itemBuilder: (context, index) {
          final Case currentCase = cases[index];
          return Card(
            child: ListTile(
              leading:  Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(
                    color:  Color(0xFF8A2387),
                    width: 2.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://dailypost.ng/wp-content/uploads/2023/03/Erik-ten-Hag-Man-Utd.jpg',
                    fit: BoxFit.cover,
                  ),
                ),),


              title: Text('Case Number: ${currentCase.caseNumber}'),
              subtitle: Text('Client: ${currentCase.clientName}'),
              trailing: Chip(

                backgroundColor: currentCase.caseStatus == 'Open'
                    ? Colors.green
                    : Colors.red,
                label: Text(
                  currentCase.caseStatus,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                // Handle case item tap
                print('Case tapped: ${currentCase.caseNumber}');
              },
            ),
          );
        },
      );
    //   //ListView.builder(
    //   itemCount: cases.length,
    //   itemBuilder: (context, index) {
    //     return
    //       Card(
    //       child: InkWell(
    //         onTap: (){},
    //         child: ListTile(
    //           leading: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(7.0),
    //               border: Border.all(
    //                 color:  Color(0xFF8A2387),
    //                 width: 2.0,
    //               ),
    //             ),
    //             child: Image.network(
    //               cases[index].imagePath,fit: BoxFit.cover,
    //               width: 50,
    //               height: 50,
    //             ),
    //           ),
    //           title: Text(cases[index].caseTitle),
    //           subtitle: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(cases[index].caseDetails),
    //               Text("11/11/2011")
    //             ],
    //           ),
    //           onTap: () {
    //             // Handle tile tap here
    //             print('Tapped on ${cases[index].caseTitle}');
    //           },
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
