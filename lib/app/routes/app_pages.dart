// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/detail_banner/bindings/detail_banner_binding.dart';
import '../modules/detail_banner/views/detail_banner_view.dart';
import '../modules/detail_product/bindings/detail_product_binding.dart';
import '../modules/detail_product/views/detail_product_view.dart';
import '../modules/detail_store/bindings/detail_store_binding.dart';
import '../modules/detail_store/views/detail_store_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/search_result/bindings/search_result_binding.dart';
import '../modules/search_result/views/search_result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_RESULT,
      page: () => const SearchResultView(),
      binding: SearchResultBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BANNER,
      page: () => const DetailBannerView(),
      binding: DetailBannerBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_STORE,
      page: () => const DetailStoreView(),
      binding: DetailStoreBinding(),
    ),
  ];
}
