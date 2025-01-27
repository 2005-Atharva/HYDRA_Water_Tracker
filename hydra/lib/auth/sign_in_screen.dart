import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydra/auth/auth_screen.dart';
import 'package:hydra/auth/forget_password_screen.dart';
import 'package:hydra/services/functions/auth_function.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordVisible = true;
  bool rememberMe = false;
  final AuthFunction _authService = AuthFunction();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Email Validation
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required"; // Checks if the email is empty
    }
    final emailRegex = RegExp('@');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email"; // Ensures email format is valid
    }
    return null;
  }

  // Password Validation
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required"; // Checks if the password is empty
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters long"; // Enforces minimum password length
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sign in to your account to continue your journey toward a healther you',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _emailController,
                  validator: _validateEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(201, 238, 238, 238),
                    hintText: ' Email',
                    hintStyle: GoogleFonts.poppins(fontSize: 17),
                    prefixIcon: Image.asset(
                      'assets/icons/ic_mail.png',
                      color: Colors.grey[700],
                      scale: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  validator: _validatePassword,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(201, 238, 238, 238),
                    hintText: ' Password',
                    hintStyle: GoogleFonts.poppins(fontSize: 17),
                    prefixIcon: Image.asset(
                      'assets/icons/ic_password.png',
                      color: Colors.grey[700],
                      scale: 1.2,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        isPasswordVisible = !isPasswordVisible;
                        setState(() {});
                      },
                      child: isPasswordVisible
                          ? Image.asset(
                              'assets/icons/eye_close.png',
                              scale: 1.2,
                            )
                          : Image.asset(
                              'assets/icons/eye_open.png',
                              scale: 1.2,
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          // fillColor: WidgetStatePropertyAll(Colors.blue),
                          activeColor: Colors.blue,
                          value: rememberMe,
                          splashRadius: 20,

                          onChanged: (value) {
                            rememberMe = !rememberMe;
                            setState(() {});
                          },
                        ),
                        Text(
                          'Remember me',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPasswordScreen()));
                          },
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 22),
                const Divider(
                  thickness: 1,
                  height: 1,
                ),
                const SizedBox(height: 32),
                google_auth_widget(
                  onTap: () {},
                ),
                const SizedBox(height: 32),
                //sign in
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      // Validates form
                      if (rememberMe == true) {
                        // Checks Terms & Conditions
                        // _authService.signIn(
                        //   _emailController.text.trim(),
                        //   _passwordController.text.trim(),
                        // );
                        try {
                          await _authService.signIn(
                            _emailController.text.trim(),
                            _passwordController.text.trim(),
                          );
                          Navigator.pop(context);
                        } on FirebaseAuthException catch (e) {
                          // Catch Firebase authentication errors
                          String errorMessage =
                              "An error occurred. Please try again.";
                          if (e.code == 'user-not-found') {
                            errorMessage = "No account found with this email.";
                          } else if (e.code == 'wrong-password') {
                            errorMessage =
                                "Incorrect password. Please try again.";
                          }
                          // Display error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(errorMessage)),
                          );
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "Something went wrong. Please try again.")),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Please check remember your Account!')));
                      }
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
