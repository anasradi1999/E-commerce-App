import 'package:ecommerce_app/views/widget/main_button.dart';
import 'package:flutter/material.dart';

import '../../helper/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 32,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: Theme.of(context).textTheme.headlineLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 100),

                          TextFormField(
                            controller: _emailController,
                            validator: (value) =>
                                value!.isEmpty ? 'Email is required' : null,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusColor: Theme.of(context).primaryColor,
                              labelText: 'Email',
                            ),
                          ),

                          const SizedBox(height: 30),

                          TextFormField(
                            controller: _passwordController,
                            validator: (value) =>
                                value!.isEmpty ? 'Password is required' : null,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusColor: Theme.of(context).primaryColor,
                              labelText: 'Password',
                            ),
                            obscureText: true,
                          ),

                          const SizedBox(height: 30),

                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {},
                              child: Text('Forgot Password?'),
                            ),
                          ),

                          const SizedBox(height: 30),

                          MainButton(text: 'LOGIN', onTap: () {
                          }),

                          const SizedBox(height: 20),

                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, AppRouters.registerPageRoutes);
                            },
                            child: Center(
                              child: Text('Don\'t have an account? Register now'),
                            ),
                          ),

                          const Spacer(),

                          Center(
                            child: Text(
                              'Or Login with social account',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),

                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.facebook, size: 34),
                              SizedBox(width: 16),
                              Icon(Icons.g_mobiledata, size: 46),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
