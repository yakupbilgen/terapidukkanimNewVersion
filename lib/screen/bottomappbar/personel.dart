import 'package:flutter/material.dart';

import '../../widgets/personel_widget.dart';

class PersonelScreenBottomBar extends StatelessWidget {
  const PersonelScreenBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String image = 'assets/images/personel/ayse.png';
    const String title = 'Klinik Psikolog';
    const String name = 'Ayşe Refia UYSAL';
    const String desc =
        """    2017 yılında Fatih Sultan Mehmet Vakıf Üniversitesi Edebiyat Fakültesi Psikoloji lisans bölümünden mezun oldum.

    2020 yılında İstanbul Kent Üniversitesi Klinik Psikoloji yüksek lisansını tamamladım.

    Yüksek Lisans bitirme projesini "Metakognitif Terapi" üzerine yazdım.

    Lisans ve Yüksek Lisans eğitimleri dışında; Bilişsel Davranışçı Terapi, Çocuklarda Bilişsel Davranışçı Terapi, Çözüm Odaklı Terapi,  Evlilik ve Çift Terapisi, Oyun Terapisi, Masal Terapisi, EMDR, Temel Hipnoz, Çocuk Resimlerine Klinik Bakış ve Çocuk Testleri, Objektif ve Projektif Testler (CAT-Luise Düss), Beden Dili, Zihin Haritalama Tekniği ve Hafıza Teknikleri eğitimlerini aldım.

    Beşiktaş Rehberlik ve Araştırma Merkezi'nde 16 Haftalık staj programını tamamladım.

    Lisans eğitimim boyunca ileri istatistik ve SPSS üzerine ileri düzey eğitimler aldım ve psikoloji bilimine katkı sağlayacak araştırmalarda yer almaktayım.

    Aile Danışmanlığı, Cinsel Terapi, Kabul ve Kararlılık Terapisi (ACT) eğitimlerine devam etmekteyim.

    Bireysel Terapi, Aile ve Çift Terapisi, Grup Terapisi (Yapılandırılmış Oyun Terapisi Ebeveyn Eğitimi) alanlarında danışan kabul etmekteyim.""";

    return const Scaffold(
      body: PersonelWidget(image: image, title: title, name: name, desc: desc),
    );
  }
}
