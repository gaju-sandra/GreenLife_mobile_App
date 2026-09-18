import 'package:flutter/material.dart';
import '../widgets/green_header.dart';
import '../widgets/green_footer.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  // Used to control and validate the form
  final _formKey = GlobalKey<FormState>();

  // Controllers store what the user types
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _messageController = TextEditingController();

  String? _selectedCountry;
  // This function runs when the Send Message button is clicked
  void _submitForm() {
    // Check whether all fields are valid
    if (_formKey.currentState!.validate()) {
      
      // Clear all input fields after successful validation
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _messageController.clear();


setState(() {
  _selectedCountry = null;
});
      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Form submitted successfully!'),
        ),
      );
    }
  }

  @override
  void dispose() {
    // Remove the controllers when the page is destroyed
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _messageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // =========================
            // HEADER
            // =========================

            const GreenHeader(),

            // =========================
            // CONTACT SECTION
            // =========================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    'CONTACT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'If you have any questions or would like to '
                    'learn more about The Green Life, please contact us.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // =========================
                  // FORM
                  // =========================

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        // FULL NAME
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Full Name',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty) {
                              return 'Please enter your full name';
                            }

                            if (value.trim().length < 2) {
                              return 'Name must be at least 2 characters';
                            }

                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // EMAIL
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty) {
                              return 'Please enter your email';
                            }

                            final email = value.trim();

                            if (!RegExp(
                              r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                            ).hasMatch(email)) {
                              return 'Please enter a valid email';
                            }

                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

DropdownButtonFormField<String>(
  
  decoration: const InputDecoration(
    labelText: 'Select a country',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.public),
  ),
  items: const [
    DropdownMenuItem(
      value: 'Rwanda',
      child: Text('Rwanda'),
    ),
    DropdownMenuItem(
      value: 'Uganda',
      child: Text('Uganda'),
    ),
    DropdownMenuItem(
      value: 'Kenya',
      child: Text('Kenya'),
    ),
    DropdownMenuItem(
      value: 'Tanzania',
      child: Text('Tanzania'),
    ),
  ],
  onChanged: (value) {
    setState(() {
      _selectedCountry = value;
    });
  },
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please select your country';
    }

    return null;
  },
),

const SizedBox(height: 20),

                        // PASSWORD
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return 'Please enter your password';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }

                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        // MESSAGE
                        TextFormField(
                          controller: _messageController,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            labelText: 'Message',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.message),
                            alignLabelWithHint: true,
                          ),
                          
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // SEND BUTTON
                        // =========================

                        ElevatedButton(
                          onPressed: _submitForm,
                          child: const Text(
                            'Send Message',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // FOOTER
            // =========================

            const GreenFooter(),
          ],
        ),
      ),
    );
  }
}