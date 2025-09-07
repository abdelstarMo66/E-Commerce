import 'package:flutter/material.dart';
import 'package:shopping/core/helpers/extensions.dart';
import 'package:shopping/core/helpers/spacing.dart';
import 'package:shopping/core/routing/routes.dart';
import 'package:shopping/core/theme/style_manager.dart';
import 'package:shopping/core/utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _moveController;
  late AnimationController _scaleController;
  late Animation<double> _moveAnimation;
  late Animation<double> _scaleAnimation;
  bool _stopped = false;
  bool _showText = false;

  String getNavigationRoute() {
    String? navigationRoute;
    // bool? isOnboarding = SharedPreferencesManager.getData(
    //   key: PrefsManager.onboarding,
    // );
    // String? token = MethodsManager.getNullableToken();

    // if (isOnboarding != null) {
    //   if (token != null) {
    //     navigationRoute = Routes.home;
    //   } else {
    //     navigationRoute = Routes.login;
    //   }
    // } else {
    //   navigationRoute = Routes.onboarding;
    // }

    navigationRoute = Routes.login;

    return navigationRoute;
  }

  @override
  void initState() {
    super.initState();

    _moveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _moveAnimation = Tween<double>(begin: -100, end: 100).animate(
      CurvedAnimation(parent: _moveController, curve: Curves.easeInOut),
    );

    _moveController.repeat(
      period: const Duration(milliseconds: 600),
      reverse: true,
    );

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _scaleAnimation = Tween<double>(begin: 0.7, end: 0.9).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
    );

    Future.delayed(const Duration(seconds: 3), () {
      _moveController.stop();
      setState(() => _stopped = true);
      _scaleController.forward().whenComplete(() {
        setState(() => _showText = true);
        Future.delayed(Duration(milliseconds: 1600), () {
          context.pushNamedAndRemoveUntil(
            getNavigationRoute(),
            predicate: (route) => false,
          );
        });
      }); // Start shrinking
    });
  }

  @override
  void dispose() {
    _moveController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: AnimatedBuilder(
            animation: Listenable.merge([_moveController, _scaleController]),
            builder: (context, child) {
              final offsetY = _stopped ? 0.0 : _moveAnimation.value;

              return Transform.translate(
                offset: Offset(0, offsetY),
                child: Transform.scale(
                  scale: _scaleAnimation.value,
                  child: child,
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: Image.asset(AssetsManager.imgLogo)),
                    AnimatedCrossFade(
                      firstChild: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          end: 18.0,
                          start: 12.0,
                        ),
                        child: AnimatedOpacity(
                          opacity: _showText ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 800),
                          child: AnimatedSlide(
                            offset:
                                _showText ? Offset.zero : const Offset(0.5, 0),
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeOut,
                            child: Text(
                              "MARKETY",
                              style: CustomTextStyleManager.headerSplashScreen,
                            ),
                          ),
                        ),
                      ),
                      secondChild: SizedBox.shrink(),
                      crossFadeState:
                          _stopped
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 600),
                    ),
                  ],
                ),
                verticalSpace(42.0),
                AnimatedCrossFade(
                  firstChild: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 18.0,
                      start: 12.0,
                    ),
                    child: AnimatedOpacity(
                      opacity: _showText ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 800),
                      child: AnimatedSlide(
                        offset: _showText ? Offset.zero : const Offset(-0.5, 0),
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.fastOutSlowIn,
                        child: Text(
                          "Test safasf",
                          style: CustomTextStyleManager.bodySplashScreen,
                        ),
                      ),
                    ),
                  ),
                  secondChild: SizedBox.shrink(),
                  crossFadeState:
                      _stopped
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
