import 'package:flutter/material.dart';

class CaseRequest {
  final String requesterName;
  final String caseTitle;

  CaseRequest({required this.requesterName, required this.caseTitle});
}

class CaseRequestListTile extends StatelessWidget {
  final CaseRequest caseRequest;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  CaseRequestListTile({
    required this.caseRequest,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(caseRequest.requesterName[0]),
      ),
      title: Text('${caseRequest.requesterName} requested a case:'),
      subtitle: Text(caseRequest.caseTitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: onAccept,
            color: Colors.green,
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: onReject,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

// Usage Example
class req extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          CaseRequestListTile(
            caseRequest: CaseRequest(
              requesterName: 'John Doe',
              caseTitle: 'Case 1',
            ),
            onAccept: () {
              // Handle accept action here
              print('Accepted case request for Case 1');
            },
            onReject: () {
              // Handle reject action here
              print('Rejected case request for Case 1');
            },
          ),
          CaseRequestListTile(
            caseRequest: CaseRequest(
              requesterName: 'Jane Smith',
              caseTitle: 'Case 2',
            ),
            onAccept: () {
              // Handle accept action here
              print('Accepted case request for Case 2');
            },
            onReject: () {
              // Handle reject action here
              print('Rejected case request for Case 2');
            },
          ),
          // Add more case request list tiles here...
        ],

    );
  }
}
