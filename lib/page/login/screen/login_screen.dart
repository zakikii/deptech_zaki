import 'package:deptech_zaki/app/config.dart';
import 'package:deptech_zaki/page/home/home_screen.dart';
import 'package:deptech_zaki/page/login/data_access/login.dart';
import 'package:deptech_zaki/shared/widgets/centered_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerWidget {
  static LoginScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LoginScreen();
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    final theme = ref.watch(themeProvider);
    final form = ref.watch(loginProvider);

    ref.listen(authServiceProvider, (_, state) {
      if (state.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error.toString())),
        );
      }
    });

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'To\nDo List.',
                    style: theme.typographyBold.headingLarge
                        .copyWith(color: theme.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'by Alwan Zaki',
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CenteredTextField(
                onChanged: ref.read(loginProvider.notifier).updateUsername,
                hint: 'email',
                value: form.username,
              ),
              const SizedBox(
                height: 10,
              ),
              CenteredTextField(
                onChanged: ref.read(loginProvider.notifier).updatePassword,
                hint: 'password',
                value: form.password,
                isObscure: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    final bool isLoginSuccess =
                        await ref.read(authServiceProvider.notifier).login();

                    if (isLoginSuccess == true) {
                      context.push(RouteLocation.home);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('email atau password salah')),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                  ),
                  child: Text(
                    'login',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
