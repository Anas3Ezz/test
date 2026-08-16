import 'package:flutter/material.dart';
import 'package:test_project/screens/home_screen/home.dart';
import 'package:test_project/validators.dart';
import 'package:test_project/widgets/custom_textformfeild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
   bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF4CAF7D);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 32),
            
                  // Username
                  
                  CustomTextField(
                    
                    keyboardType: TextInputType.phone,
                    hintText: 'user name',
                     controller: _usernameController
                     ),
                  const SizedBox(height: 24),
            
                  // Email
                  const Text('Email', style: TextStyle(color: Colors.grey)),
                  TextFormField(
                    controller: _emailController,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      isDense: true,
                      border: UnderlineInputBorder(),
                      
                    ),
                   validator: AppValidators.email,
                  ),
                  const SizedBox(height: 24),
            
                  // Password
                  const Text('Password', style: TextStyle(color: Colors.grey)),
                  TextFormField(
                    
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                      isDense: true,
                      border: const UnderlineInputBorder(),
                      suffixIcon: IconButton(
                        icon:
                        _obscurePassword?
                         Icon(
                          Icons.visibility_off_outlined,
                       
                          color: Colors.grey[600],
                        ):Icon(
                          Icons.
                          visibility_outlined,
                       
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                        },
                      ),
                    ),
                      validator: AppValidators.password,
                  ),
                  const SizedBox(height: 24),
            
                  // Terms
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      children: const [
                        TextSpan(text: 'By continuing you agree to our '),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(color: green),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(color: green),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 32),
            
                  // Sign Up button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
            
                  const SizedBox(height: 16),
            
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: [
                          TextSpan(text: 'Already have an account? '),
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(color: green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
