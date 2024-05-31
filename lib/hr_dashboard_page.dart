import 'package:flutter/material.dart';

class HRDashboardPage extends StatefulWidget {
  const HRDashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HRDashboardPageState createState() => _HRDashboardPageState();
}

class _HRDashboardPageState extends State<HRDashboardPage> {
  List<Employee> employees = [
    // Example employees; replace with actual data source
    Employee(
      id: '001',
      name: 'John Doe',
      email: 'john.doe@example.com',
      phone: '123-456-7890',
      department: 'Engineering',
      designation: 'Software Engineer',
      paygroup: 'Monthly',
      paySubgroup: 'Group A',
      bonus: 5000,
      joiningDate: DateTime(2020, 1, 10),
      exitDate: null,
      status: 'Active',
    ),
    Employee(
      id: '002',
      name: 'Jane Smith',
      email: 'jane.smith@example.com',
      phone: '098-765-4321',
      department: 'HR',
      designation: 'HR Manager',
      paygroup: 'Monthly',
      paySubgroup: 'Group B',
      bonus: 7000,
      joiningDate: DateTime(2019, 3, 5),
      exitDate: null,
      status: 'Active',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HR Dashboard'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    employee.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('ID: ${employee.id}'),
                  Text('Email: ${employee.email}'),
                  Text('Phone: ${employee.phone}'),
                  Text('Department: ${employee.department}'),
                  Text('Designation: ${employee.designation}'),
                  Text('Paygroup: ${employee.paygroup}'),
                  Text('Pay Subgroup: ${employee.paySubgroup}'),
                  Text('Bonus: \$${employee.bonus}'),
                  Text('Joining Date: ${employee.joiningDate.toLocal()}'.split(' ')[0]),
                  Text('Exit Date: ${employee.exitDate?.toLocal()}'.split(' ')[0]),
                  Text('Status: ${employee.status}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement profile approval logic here
                        },
                        child: const Text('Approve'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement profile rejection logic here
                        },
                        child: const Text('Reject'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement profile editing logic here
                          _editEmployee(context, employee);
                        },
                        child: const Text('Edit'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _editEmployee(BuildContext context, Employee employee) {
    // Implement employee editing dialog/form
  }
}

class Employee {
  String id;
  String name;
  String email;
  String phone;
  String department;
  String designation;
  String paygroup;
  String paySubgroup;
  double bonus;
  DateTime joiningDate;
  DateTime? exitDate;
  String status;

  Employee({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.department,
    required this.designation,
    required this.paygroup,
    required this.paySubgroup,
    required this.bonus,
    required this.joiningDate,
    this.exitDate,
    required this.status,
  });
}
