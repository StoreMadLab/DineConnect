import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/services/job_posting.dart';
import 'package:flutter/material.dart';

class JobItemWidget extends StatelessWidget {
  final String jobRole;
  final String salary;
  final String workHours;
  final VoidCallback onTapEdit;

  JobItemWidget({
    required this.jobRole,
    required this.salary,
    required this.workHours,
    required this.onTapEdit, required JobPosting jobPosting,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Job Role: $jobRole',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text('Salary: $salary'),
          SizedBox(height: 8.0),
          Text('Work Hours: $workHours'),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: onTapEdit,
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }
}
