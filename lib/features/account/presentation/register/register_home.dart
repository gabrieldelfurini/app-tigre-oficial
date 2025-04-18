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
      home: const RegisterAccountScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterAccountScreen extends StatelessWidget {
  const RegisterAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001835),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: [
                  const Divider(
                    color: Color(0xFFFFD700),
                    thickness: 1,
                    indent: 32,
                    endIndent: 32,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'CADASTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Color(0xFFFFD700),
                    thickness: 1,
                    indent: 32,
                    endIndent: 32,
                  ),
                ],
              ),
            ),


            // Register Options
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildRegisterOption(
                      icon: Icons.calendar_today,
                      title: 'Eventos',
                      subtitle: 'Cadastro de Eventos',
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    _buildRegisterOption(
                      icon: Icons.newspaper,
                      title: 'Notícias',
                      subtitle: 'Cadastro de Notícias',
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    _buildRegisterOption(
                      icon: Icons.sports_soccer,
                      title: 'Treinos e Amistosos',
                      subtitle: 'Cadastro de Treinos e Amistosos',
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    _buildRegisterOption(
                      icon: Icons.shopping_bag,
                      title: 'Produtos',
                      subtitle: 'Cadastro de Produtos',
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    _buildRegisterOption(
                      icon: Icons.person,
                      title: 'Perfil',
                      subtitle: 'Cadastro de Perfil',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF10285C),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFFD700)),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFFFFD700),
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 20,
        ),
        onTap: onTap,
      ),
    );
  }
}