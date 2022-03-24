import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:key/logic/controller/route_controller.dart';
import 'package:key/logic/state/common/firebase_user_state.dart';
import 'package:key/logic/state/common/login_user_state.dart';
import 'package:key/view/util/theme.dart';

final List<Widget> pages = [];

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.width;
    final textColor = AppColor.textColor;
    final loginUser = ref.watch(loginUserState);

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: Color(0xFFDDDDDD), height: 0),
              GestureDetector(
                onTap: () =>
                    ref.read(routeController).push(AppRoute.editProfile),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '名前',
                          style: TextStyle(
                            fontSize: 15,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      loginUser?.name ?? "未設定",
                      style: TextStyle(fontSize: 14, color: textColor),
                      // ),
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFDDDDDD),
                height: 0,
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xFFDDDDDD), height: 0),
              TextButton(
                onPressed: () => ref.read(routeController).push(AppRoute.registerStore),
                child: const Text(
                  '加盟店登録はこちら',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF955513),
                  ),
                ),
              ),
              Divider(color: Color(0xFFDDDDDD), height: 0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'プロフィール'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'プロフィール'),
          // BottomNavigationBarItem(icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
