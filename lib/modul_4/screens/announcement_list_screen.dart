late Future<List<Announcement>> _futurePengumuman;

@override
void initState() {
  super.initState();
  _futurePengumuman = _api.ambilPengumuman(); // sekali saja, saat layar dibuat
}

Future<void> _muatUlang() async {
  final futureBaru = _api.ambilPengumuman();
  setState(() {
    _futurePengumuman = futureBaru; // inilah satu-satunya tempat penggantian
  });
  try {
    await futureBaru;
  } catch (_) {
    // Error sudah ditangani FutureBuilder lewat snapshot.hasError.
  }
}
