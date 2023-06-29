import 'package:flutter/material.dart';

class CaseRequestDetailView extends StatelessWidget {
  const CaseRequestDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Case Request Detail',style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white),
            onPressed: (){
              Navigator.pop(context);
            },
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Case Details',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow('Case Title', 'John Doe vs. ABC Corp'),
                    const SizedBox(height: 16.0),
                    _buildDetailRow(
                        'Case Description',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                    const SizedBox(height: 16.0),
                    _buildDetailRow('Start Date', '2023-06-01'),
                    const SizedBox(height: 16.0),
                    _buildDetailRow('Next Hearing Date', '2023-06-15'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Attachments',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAttachmentItem('Attachment 1'),
                    const SizedBox(height: 8.0),
                    _buildAttachmentItem('Attachment 2'),
                    const SizedBox(height: 8.0),
                    _buildAttachmentItem('Attachment 3'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Perform cancel action
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

                child: const Text('Cancel Case',style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          value,
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }

  Widget _buildAttachmentItem(String attachmentName) {
    return Row(
      children: [
        const Icon(Icons.attachment),
        const SizedBox(width: 8.0),
        Text(
          attachmentName,
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }
}