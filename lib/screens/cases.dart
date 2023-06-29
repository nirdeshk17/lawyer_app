import 'package:flutter/material.dart';

class Case {
  final String caseTitle;
  final String caseDetails;
  final String imagePath;

  Case({required this.caseTitle, required this.caseDetails, required this.imagePath});
}
class Request extends StatelessWidget {

  final List<Case> cases = [
    Case(
      caseTitle: 'Case 1',
      caseDetails: 'Details of Case 1',
      imagePath: 'https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg',
    ),
    Case(
      caseTitle: 'Case 2',
      caseDetails: 'Details of Case 2',
      imagePath: 'https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg',
    ),
    Case(
      caseTitle: 'Case 1',
      caseDetails: 'Details of Case 1',
      imagePath: 'https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg',
    ),
    Case(
      caseTitle: 'Case 2',
      caseDetails: 'Details of Case 2',
      imagePath: 'https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg',
    ),
    // Add more cases here...
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: cases.length,
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            onTap: (){},
            child: ListTile(
              leading: Container(
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
                    'https://media.istockphoto.com/id/1040308104/photo/mature-handsome-business-man.jpg?s=612x612&w=0&k=20&c=QbyH3XFmLOoy8NESjLQC8PYsm6g3UBL6COFaF-Qnnbk=',
                    fit: BoxFit.cover,
                  ),
                ),),

              title: Text(cases[index].caseTitle),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cases[index].caseDetails),
                  Text("18/03/2000")
                ],
              ),
              onTap: () {
                // Handle tile tap here
                print('Tapped on ${cases[index].caseTitle}');
              },
            ),
          ),
        );
      },
    );
  }
}
