import 'package:get/get.dart';

import '../modules/about_developed/bindings/about_developed_binding.dart';
import '../modules/about_developed/views/about_developed_view.dart';
import '../modules/about_sspi/pages/about_shebapolly.dart';
import '../modules/about_sspi/pages/about_sspi.dart';
import '../modules/about_sspi/pages/administration.dart';
import '../modules/about_sspi/pages/location.dart';
import '../modules/about_sspi/pages/photo_gallery.dart';
import '../modules/about_sspi/views/about_sspi_view.dart';
import '../modules/academies/bindings/academies_binding.dart';
import '../modules/academies/page/academies_system.dart';
import '../modules/academies/views/academies_view.dart';
import '../modules/department/bindings/department_binding.dart';
import '../modules/department/pages/civil_department.dart';
import '../modules/department/pages/computer_department.dart';
import '../modules/department/pages/electrical_department.dart';
import '../modules/department/views/department_view.dart';
import '../modules/exam_result/exam_result.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/nev_bar/nev_bar.dart';
import '../modules/notice/notice.dart';
import '../modules/routine/routine.dart';
import '../modules/trachers/trachers.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: _Paths.ABOUT_DEVELOPED,
      page: () => const AboutDevelopedView(),
      binding: AboutDevelopedBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.NevBar,
      page: () => const NevBar(),
    ),
    GetPage(
      name: _Paths.ABOUT_SSPI,
      page: () => const AboutSspiView(),
    ),
    GetPage(
      name: _Paths.ABOUT_SHEBAPOLLY,
      page: () => const AboutShebapolly(),
    ),
    GetPage(
      name: _Paths.ABOUT_SSPI_PAGE,
      page: () => const AboutSSPI(),
    ),
    GetPage(
      name: _Paths.ADMINISTRATION_PAGE,
      page: () => const AdministrationPage(),
    ),
    GetPage(
      name: _Paths.PHOTO_GALLERY,
      page: () => const PhotoGallery(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => const LocationPage(),
    ),
    GetPage(
      name: _Paths.ACADEMIES,
      page: () => const AcademiesView(),
      binding: AcademiesBinding(),
    ),
    GetPage(
      name: _Paths.ACADEMIES_SYSTEM,
      page: () => const AcademiesSystem(),
    ),
    GetPage(
      name: _Paths.DEPARTMENT,
      page: () => const DepartmentView(),
      binding: DepartmentBinding(),
    ),
    GetPage(
      name: _Paths.COMPUTER_DEPARTMENT,
      page: () => const ComputerDepartment(),
    ),
    GetPage(
      name: _Paths.ELECTRICAL_DEPARTMENT,
      page: () => const ElectricalDepartment(),
    ),
    GetPage(
      name: _Paths.CIVIL_DEPARTMENT,
      page: () => const CivilDepartment(),
    ),
    GetPage(
      name: _Paths.ROUTINE_PAGE,
      page: () => const Routine(),
    ),
    GetPage(
      name: _Paths.EXAM_RESULT,
      page: () => const ExamResult(),
    ),
    GetPage(
      name: _Paths.TEACHER_PAGE,
      page: () => const TeacherPage(),
    ),

    GetPage(
      name: _Paths.NOTICE_PAGE,
      page: () => const Notice(),
    ),
  ];
}
