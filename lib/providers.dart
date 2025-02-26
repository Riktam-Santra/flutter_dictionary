import 'package:flutter_dictionary/controllers/custom_drop_down_controller.dart';
import 'package:flutter_dictionary/controllers/fetch_words_repository_controller.dart';
import 'package:flutter_dictionary/controllers/package_info_repository_controller.dart';
import 'package:flutter_dictionary/controllers/primary_view_controller.dart';
import 'package:flutter_dictionary/controllers/tab_controller.dart';
import 'package:flutter_dictionary/controllers/random_words_repository_controller.dart';
import 'package:flutter_dictionary/controllers/words_repository_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final saveWordFutureProvider = FutureProvider.autoDispose(
    (ref) => ref.watch(wordsRepositoryController.notifier).getSavedWords());

final fetchWordProvider = FutureProvider.family.autoDispose(
    (ref, WidgetRef n) =>
        ref.watch(fetchWordsRepositoryController.notifier).fetchMeaning(n));

final randomWordsFutureProvider = FutureProvider.autoDispose(
    (ref) => ref.watch(randomWordsRepositoryController.notifier).getWord(ref));

final packageInfoFutureProvider = FutureProvider.autoDispose((ref) =>
    ref.watch(packageInfoRepositoryController.notifier).getPackageInfo(ref));

final customDropDownProvider =
    Provider.autoDispose((ref) => ref.watch(customDropDownController.notifier));

final primaryViewProvider =
    Provider.autoDispose((ref) => ref.watch(primaryViewController.notifier));
final navController = StateProvider.autoDispose((ref) => 0);
