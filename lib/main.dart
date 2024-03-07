

import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10,),
      
            const TextField(
              decoration: InputDecoration(
                hintText: 'Full Name',
                icon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                )
              ),
            ),

            const SizedBox(height: 10,),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                
                icon: Icon(Icons.password),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            ElevatedButton(
              
              onPressed: (){
                showDialog(
                  context: context, 
                  builder: (BuildContext context){
                    return Dialog(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: const Center(
                          child: Text('Successfully Signed Up'),
                        ),
                      ),
                    );
                  }
                );
              }, 
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('Sign Up'),
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('If you have an account.'),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const LogIn()
                      )
                    );
                  }, 
                  child: const Text(
                    'Log in here',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Log In',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10,),

            const SizedBox(height: 10,),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                
                icon: Icon(Icons.password),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            ElevatedButton(
              
              onPressed: (){
                showDialog(
                  context: context, 
                  builder: (BuildContext context){
                    return Dialog(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: const Center(
                          child: Text('Successfully Logged In'),
                        ),
                      ),
                    );
                  }
                );
              }, 
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('Log in'),
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If you don't have an account."),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) =>const SignUp()
                      )
                    );
                  }, 
                  child: const Text(
                    'Sign up here',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}