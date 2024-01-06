import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  /*
   * @desc 设置
   */
  void handleSetting() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 28),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home-header-bg.png'),
          fit: BoxFit.contain,
        ),
        color: Color.fromRGBO(17, 20, 36, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color.fromRGBO(70, 159, 247, 1),
                  Color.fromRGBO(150, 230, 255, 1),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ).createShader(bounds);
            },
            child: const Text(
              '作业人员职业健康及应急保障平台',
              style: TextStyle(
                // 设置渐变，这个颜色很重要
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Row(
            children: [
              const Image(
                image: AssetImage('assets/images/setting.png'),
              ),
              SizedBox(
                height: 35,
                width: 50,
                child: TextButton(
                  onPressed: handleSetting,
                  child: const Text(
                    '设置',
                    style: TextStyle(
                      // 设置渐变，这个颜色很重要
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
