// ignore_for_file: file_names, avoid_web_libraries_in_flutter, unused_import, unused_local_variable, library_private_types_in_public_api
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:photo_memory/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _serverController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _serverController.dispose();
    super.dispose();
  }

  void _signIn() {
    String username = _usernameController.text;
    String password_ = _passwordController.text;
    String server = _serverController.text;

    // Hiển thị dữ liệu nhập vào (có thể thay bằng xử lý đăng nhập)
    if ((username == "Phuc") & (password_ == "123") ){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
    } else {
      ScaffoldMessenger.of(context,).showSnackBar(const SnackBar(content: Text('Sai tên đăng nhập hoặc mật khẩu')));
    // Hiển thị thông báo lỗi
    }

    // Chuyển đến trang HomePage nếu cần
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _serverController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Server name',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signIn,
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
