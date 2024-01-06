import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_check/views/home/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 控制器
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  /*
   * @desc 登录
   */
  void handleLogin() {
    // 调用登录验证方法
    // bool success = await validateLogin(username, password);
    // if(success) {
    // 登录成功,跳转到主页
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    // } else {
    //   //登录失败提示
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login-bg.png'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              const Text(
                '作业人员职业健康及应急保障平台',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Container(
                width: 360,
                height: 380,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/login-form-bg.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(42, 176, 255, 1),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(24, 144, 255, 1),
                                    Color.fromRGBO(53, 195, 255, 1),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "账号",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CupertinoTextField(
                                controller: usernameController,
                                style: const TextStyle(color: Colors.white),
                                cursorColor:
                                    const Color.fromRGBO(42, 176, 255, 1),
                                decoration: null,
                                placeholder: '请输入账号',
                                placeholderStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.4),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(42, 176, 255, 1),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(24, 144, 255, 1),
                                    Color.fromRGBO(53, 195, 255, 1),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "密码",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: CupertinoTextField(
                                controller: passwordController,
                                style: const TextStyle(color: Colors.white),
                                cursorColor:
                                    const Color.fromRGBO(42, 176, 255, 1),
                                decoration: null,
                                placeholder: '请输入密码',
                                placeholderStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.4),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(24, 144, 255, 1),
                                Color.fromRGBO(53, 195, 255, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: handleLogin,
                            child: const Text(
                              '登录',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
