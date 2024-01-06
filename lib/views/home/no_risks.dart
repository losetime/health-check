import 'package:flutter/material.dart';

class NoRisks extends StatefulWidget {
  const NoRisks({super.key});

  @override
  State<NoRisks> createState() => _NoRisksState();
}

class _NoRisksState extends State<NoRisks> {
  /*
   * @desc 设置
   */
  void handleSetting() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headerLayout(),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home-initial-bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        functionPoint(
                            '心率监测', 'assets/images/heart-monitor.png'),
                        functionPoint(
                            '血压监测', 'assets/images/blood-pressure-monitor.png'),
                        functionPoint('SOS救援', 'assets/images/sos.png'),
                        functionPoint('AI健康分析', 'assets/images/ai-health.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        functionPoint(
                            '血氧监测', 'assets/images/blood-oxygen-monitor.png'),
                        functionPoint(
                            '体温监测', 'assets/images/body-temp-monitor.png'),
                        functionPoint(
                            '7*24小时体征监测', 'assets/images/sign-monitor.png'),
                        functionPoint(
                            '健康画像', 'assets/images/health-portrait.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerLayout() {
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

  Widget functionPoint(name, img) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(29, 44, 77, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 36,
            height: 30,
            image: AssetImage(img),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
