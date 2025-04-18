import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAABE Sports',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const TicketsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1B26),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black,
              child: const Center(
                child: Text(
                  'A.A.A.B.E',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            // Title
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'INGRESSOS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Tickets List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  TicketCard(
                    title: 'TÍTULO EVENTO',
                    date: 'Data',
                    status: 'Ativo',
                    isActive: true,
                  ),
                  SizedBox(height: 16),
                  TicketCard(
                    title: 'TÍTULO EVENTO',
                    date: 'Data',
                    status: 'Inativo',
                    isActive: false,
                  ),
                  SizedBox(height: 16),
                  TicketCard(
                    title: 'TÍTULO EVENTO',
                    date: 'Data',
                    status: 'Utilizado',
                    isActive: false,
                  ),
                  SizedBox(height: 16),
                  TicketCard(
                    title: 'TÍTULO EVENTO',
                    date: 'Data',
                    status: 'Ativo',
                    isActive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketCard extends StatelessWidget {
  final String title;
  final String date;
  final String status;
  final bool isActive;

  const TicketCard({
    super.key,
    required this.title,
    required this.date,
    required this.status,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? const Color(0xFFFFD700) : Colors.grey,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      color: isActive ? Colors.black : Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: isActive ? Colors.black : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    status,
                    style: TextStyle(
                      color: isActive ? Colors.black : Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 20,
            decoration: BoxDecoration(
              color: isActive ? const Color(0xFFFFD700) : Colors.grey,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}