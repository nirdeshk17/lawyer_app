import 'package:flutter/material.dart';

class CauseQuatation extends StatefulWidget {
  const CauseQuatation({super.key});

  @override
  State<CauseQuatation> createState() => _CauseQuatationState();
}

class _CauseQuatationState extends State<CauseQuatation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        backgroundColor: Colors.blue[800],
        elevation: 0,
        centerTitle: true,
        title: const Text("Case Quotation", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: 3, // Replace with the actual number of quotations
        itemBuilder: (context, index) {
          return _buildQuotationCard(context, index);
        },
      ),
    );
  }

  // Widget _buildQuotationCard(BuildContext context, int index) {
  //   return Card(
  //     margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  //     elevation: 4.0,
  //     child: Padding(
  //       padding: EdgeInsets.all(16.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text('Case ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold)),
  //           SizedBox(height: 8.0),
  //           Text('Lawyer Name'),
  //           Text('Quotation Details'),
  //           SizedBox(height: 8.0),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('Status: Pending'),
  //               Text('Amount: \$1000'), // Replace with actual quotation amount
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget _buildQuotationCard(BuildContext context, int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Case ${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8.0),
            const Text('Jane Smith vs. XYZ Inc'),
            const SizedBox(height: 8.0),
            const Text('Quotation Details'),
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Status: Pending'),
                Text('Amount: \$1000'), // Replace with actual quotation amount
              ],
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green[400]),
                child: const Text(
                  'View Quotation',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
