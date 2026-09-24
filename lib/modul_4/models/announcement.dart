class KrsCourse {
  final String kode;
  final String nama;
  final String dosen;
  final int sks;
  final String deskripsi;

  const KrsCourse({
    required this.kode,
    required this.nama,
    required this.dosen,
    required this.sks,
    this.deskripsi = '',
  });

  static List<KrsCourse> getInitialCourses() {
    return const [
      KrsCourse(
        kode: 'TRPL501',
        nama: 'Pemrograman Perangkat Bergerak',
        dosen: 'Sepyan Purnama Kristanto, M.Kom.',
        sks: 3,
        deskripsi: 'Membangun aplikasi mobile cross-platform modern dengan Flutter dan Riverpod.',
      ),
      KrsCourse(
        kode: 'TRPL502',
        nama: 'Rekayasa Perangkat Lunak Lanjut',
        dosen: 'Tim Dosen TRPL',
        sks: 3,
        deskripsi: 'Penerapan Clean Architecture, Design Patterns, dan CI/CD pipeline.',
      ),
      KrsCourse(
        kode: 'TRPL503',
        nama: 'Manajemen Basis Data Terdistribusi',
        dosen: 'Tim Dosen TRPL',
        sks: 3,
        deskripsi:
            'Pengelolaan basis data NoSQL dan relasional berskala besar.',
      ),
    ];
  }
}
