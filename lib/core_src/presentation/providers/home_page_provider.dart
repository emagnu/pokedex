//  //  ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../../domain_models/home_page_data.dart';
//  PARTS
part 'home_page_provider.g.dart';
//  //  ///

//  homePageControllerProvider
@riverpod
class HomePageController extends _$HomePageController {
  @override
  HomePageData build() {
    return HomePageData.initial();
  }
}
