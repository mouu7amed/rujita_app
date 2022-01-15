class DoctorItem {
  final String title;
  final String specialty;

  DoctorItem({this.title, this.specialty});
}

List<DoctorItem> loadDoctorItem() {
  var di = <DoctorItem>[
    DoctorItem(title: 'Diaa Ahmed Ramadan Ahmed', specialty: 'Dental Specialist'),
    DoctorItem(title: 'Essam Mahmoud Saied', specialty: 'Dental Specialist'),
    DoctorItem(title: 'Mona Hassan Dwam', specialty: 'Dermatologist Specialist'),
    DoctorItem(title: 'Ahmed Abd el-wahab Saleh', specialty: 'Dermatologist Specialist'),
    DoctorItem(title: 'Mohamed Samy Abd el-azeez', specialty: 'Eye Specialist'),
    DoctorItem(title: 'Hatem Mohamed Mar\'i', specialty: 'Eye Specialist'),
    DoctorItem(title: 'Farid Mohamed Wagdy', specialty: 'Eye Specialist'),
    DoctorItem(title: 'Hasan Gamal el-din Farhat el-ashkar', specialty: 'Eye Specialist'),
    DoctorItem(title: 'Mohamed Ga\'far', specialty: 'Eye Specialist'),
    DoctorItem(title: 'Alaa el-sisi', specialty: 'General Surgery'),
    DoctorItem(title: 'Fouad Zinaty', specialty: 'General Surgery'),
    DoctorItem(title: 'Hatem Mahmoud Sultan', specialty: 'General Surgery'),
    DoctorItem(title: 'Mahmoud Hagag', specialty: 'General Surgery'),
    DoctorItem(title: 'Faisal Mohamed Gooda', specialty: 'General Surgery'),
    DoctorItem(title: 'Sabry Abdullah el-melegy', specialty: 'Obstetrician and gynecologist'),
    DoctorItem(title: 'Hamed el-sayed el-laqwa', specialty: 'Obstetrician and gynecologist'),
    DoctorItem(title: 'Dalia Salah Sabahy', specialty: 'Obstetrician and gynecologist'),
    DoctorItem(title: 'Mohamed Assem Allam', specialty: 'Heart Specialist'),
    DoctorItem(title: 'Ehab Kamal el-melegy', specialty: 'Heart Specialist'),
    DoctorItem(title: 'Rehab Ibrahem Yassin', specialty: 'Heart Specialist'),
    DoctorItem(title: 'Tamer el-ashqar', specialty: 'Heart Specialist'),
    DoctorItem(title: 'Sheed Abd el-khalek', specialty: 'Internal Specialist'),
    DoctorItem(title: 'Ibrahem Shehata el-madbouh', specialty: 'Internal Specialist'),
    DoctorItem(title: 'Ali Mohamed el-khouly', specialty: 'Internal Specialist'),
    DoctorItem(title: 'Shereef el-shaf\'y', specialty: 'Internal Specialist'),
    DoctorItem(title: 'Mohamed Gamal el-nazer', specialty: 'Internal Specialist'),
    DoctorItem(title: 'Ahmed Fathi Sheha', specialty: 'Neurosurgery Specialist'),
    DoctorItem(title: 'Mohamed Nabil el-marawany', specialty: 'Neurosurgery Specialist'),
    DoctorItem(title: 'Hytham el-beltagy', specialty: 'Neurosurgery Specialist'),
    DoctorItem(title: 'Hany el-sayed', specialty: 'Orthopedist Specialist'),
    DoctorItem(title: 'Ahmed Nada', specialty: 'Orthopedist Specialist'),
    DoctorItem(title: 'Abd el-rahman Afifi', specialty: 'Orthopedist Specialist'),
    DoctorItem(title: 'Doaa Samir Motawe\'', specialty: 'Psychiatry Specialist'),
    DoctorItem(title: 'Mostafa Melik', specialty: 'Psychiatry Specialist'),
    DoctorItem(title: 'Badr Abbas Rashid', specialty: 'Psychiatry Specialist'),
    DoctorItem(title: 'Mohamed Mas\'oud Hegazy', specialty: 'Psychiatry Specialist'),
    DoctorItem(title: 'Mohamed Salah Abd el-Shafy', specialty: 'Psychiatry Specialist'),
    DoctorItem(title: 'Mohamed Kamal Omar', specialty: 'Urologist Specialist'),

  ];
  return di;
}
