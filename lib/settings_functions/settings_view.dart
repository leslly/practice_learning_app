import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/settings_functions/email_add_or_change.dart';
import 'package:practice_learning_app/settings_functions/name_change.dart';
import 'package:practice_learning_app/settings_functions/password_change.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import '../theme/theme_switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: GlobalColors.borderGrey,
                ),
              ),
              child: Icon(
                CupertinoIcons.back,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            //color: GlobalColors.bigTextColorBlack,
            fontSize: 24,
            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                Image.asset(
                  'assets/blush_images/cool_kids_on_wheels.png',
                  height: 190,
                  width: 343,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Container(
                  height: 82,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: GlobalColors.profileBorder,
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: GlobalColors.buttonColorwhite,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:
                                'assets/blush_images/Rubik/Rubik-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 110),
                        // Widget buildSwitch() => Switch.adaptive
                        notificationSwitch(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 82,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: GlobalColors.profileBorder,
                          ),
                          child: Icon(
                            Icons.brightness_4_sharp,
                            color: GlobalColors.buttonColorwhite,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'App Theme',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily:
                                'assets/blush_images/Rubik/Rubik-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 130),
                        ThemeSwitch(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account information',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                      fontWeight: FontWeight.bold,
                      //fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                /////NAME
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: const NameChange()));
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.person,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 200),
                          Container(
                              height: 40,
                              width: 40,
                              color: Theme.of(context).colorScheme.surface,
                              child: const Icon(CupertinoIcons.chevron_up))
                        ],
                      ),
                    ),
                  ),
                ),
                /////EMAIL
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => const EmailAddOrChange());
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.mail,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 203),
                          Container(
                              height: 40,
                              width: 40,
                              color: Theme.of(context).colorScheme.surface,
                              child: const Icon(CupertinoIcons.chevron_up))
                        ],
                      ),
                    ),
                  ),
                ),
                /////PASSWORD
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => const PasswordChange());
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 164),
                          Container(
                              height: 40,
                              width: 40,
                              color: Theme.of(context).colorScheme.surface,
                              child: const Icon(CupertinoIcons.chevron_up)),
                          const Spacer(),
                        ],
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

  Widget notificationSwitch() => Switch.adaptive(
        activeColor: Colors.blueAccent,
        activeTrackColor: Colors.blue.withOpacity(0.4),
        value: notificationValue,
        onChanged: (value) => setState(() => notificationValue = value),
      );
  // Widget themeSwitch() => Switch.adaptive(
  //       activeColor: Colors.blueAccent,
  //       activeTrackColor: Colors.blue.withOpacity(0.4),
  //       value: themeValue,
  //       onChanged: (value) => setState(() => themeValue = value),
  //     );
}
