class SeputarInfo {
  final int position;
  final String name;
  final String description;

  SeputarInfo(
    this.position, {
    required this.name,
    required this.description,
  });
}

List<SeputarInfo> info = [
  SeputarInfo(1,
      name: 'Sampah Organik',
      description:
          "Penting bagi kita untuk mengetahui jenis-jenis sampah sebelum mengelolanya. sampah organik adalah sampah yang dikategorikan bisa membusuk atau terurai dengan sendirinya. Sampah jenis ini terdiri dari bahan basah yang tidak tahan lama dan cepat membusuk. Biasanya, sampah organik berasal dari sisa makanan, daun kering, sayuran, kotoran hewan, dan masih banyak lainnya. Sampah organik dikatakan sebagai sampah ramah lingkungan dan dapat bermanfaat untuk bahan pembuatan pupuk tanaman, seperti pupuk kompos dan pupuk kandang. Umumnya, jenis sampah organik ditandai dengan tempat sampah yang berwarna hijau.",),
  SeputarInfo(2,
      name: 'Sampah Anorganik',
      description:
          "sampah anorganik diartikan sebagai bahan tidak terpakai yang sukar membusuk. Misalnya, botol kaca, plastik kemasan, kaleng bekas, besi berkarat, dan lain sebagainya. Apabila tertimbun di tanah dalam waktu yang lama, berpotensi menyebabkan kerusakan unsur-unsur tanah tersebut. Sehingga, hewan atau tumbuhan yang notabene bertempat tinggal di dalam tanah, lama-kelamaan akan hilang. Hal ini memicu terjadinya lapisan tanah yang gersang, bahkan tidak subur.",),
  SeputarInfo(3,
      name: 'Sampah B3',
      description:
          "klasifikasi sampah yang lain, yakni sampah dari Bahan Berbahaya dan Beracun (B3). Jenis sampah B3 diantaranya cairan pembersih kaca/jendela, pembersih lantai, pengkilap kayu, pengharum ruangan, pemutih pakaian, deterjen pakaian, pembasmi serangga, batu baterai, dan lain-lain. B3 merupakan sampah yang mengandung zat beracun, oleh karena itu sampah jenis ini sangat berbahaya dan secara langsung maupun tidak dapat merusak kesehatan dan lingkungan.",),
];

class AppAssets {
  static final String background = "assets/bg.png";
  static final String forground = "assets/forground.png";
}