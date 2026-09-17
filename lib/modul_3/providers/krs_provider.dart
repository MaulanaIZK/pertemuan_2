import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/krs_course.dart';

class KsrNontifier extends Notifier<List<KrsCourse>> {
  @override
  List<KrsCourse> build() => KrsCourse.getInitialCourses();

  bool tambahMataKuliah(KrsCourse course) {
    final exist = state.any(
      (c) => c.kode.toUpperCase() == course.kode.toUpperCase(),
    );
    if (exist) return false;

    if (totalSks + course.sks > 34) return false;

    state = [...state, course];
    return true;
  }

  void mataKuliahHapus(String code) {
    state = state.where((c) => c.kode != code).toList();
  }

  int get totalSks => state.fold(0, (sum, c) => sum + c.sks);
}

final krsProvider = NotifierProvider<KsrNontifier, List<KrsCourse>>(
  KsrNontifier.new,
);

final totalSksProvider = Provider<int>((ref) {
  final courses = ref.watch(krsProvider);
  return courses.fold(0, (sum, c) => sum + c.sks);
});
