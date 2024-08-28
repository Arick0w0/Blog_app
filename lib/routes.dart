import 'package:flutter_provider101/features/auth/presentation/pages/login.dart';
import 'package:flutter_provider101/features/auth/presentation/pages/signup_page.dart';
import 'package:go_router/go_router.dart';

import 'features/blog/presentation/pages/blog_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BlogPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) => const SignUpPage(),
    ),
  ],
);
