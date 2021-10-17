class Company {
  final String? companyName;
  final String? job;
  final String? city;
  final String? sallary;
  final String? image;
  final String? mainCriteria;
  final String? jobOpportunity;
  final List<String>? aboutCompany;
  final List<String>? jobResponsbilities;
  final List<String>? tag;
  Company({
    this.city,
    this.job,
    this.companyName,
    this.sallary,
    this.tag,
    this.image,
    this.mainCriteria,
    this.jobOpportunity,
    this.jobResponsbilities,
    this.aboutCompany,
  });
}

List<Company> companyList = [
  Company(
      companyName: "Cafe ABC",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, có thể chọn làm theo giờ hoặc theo ca.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Uư tiên nữ"
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      jobOpportunity:
          "Giữ xe cho khách của quán, có thể làm theo ca sáng(6h - 14h) - tối(14h - 22h), mỗi ca 8h.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, siêng năng",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5Tr/Tháng",
      image: "assets/soundcloud-icon.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];

List<Company> recentList = [
  Company(
      companyName: "Cafe ABC",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, có thể chọn làm theo giờ hoặc theo ca.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Uư tiên nữ"
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      jobOpportunity:
          "Giữ xe cho khách của quán, có thể làm theo ca sáng(6h - 14h) - tối(14h - 22h), mỗi ca 8h.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, siêng năng",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quân 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];
