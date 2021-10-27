class Company {
  final String? companyName;
  final String? type;
  final String? job;
  final String? time;
  final String? city;
  final String? sallary;
  final String? image;
  final String? mainCriteria;
  final String? jobOpportunity;
  final String? employee;
  final List<String>? salaryDetail;
  final List<String>? aboutCompany;
  final List<String>? jobResponsbilities;
  final List<String>? tag;
  Company({
    this.time,
    this.type,
    this.city,
    this.job,
    this.companyName,
    this.sallary,
    this.tag,
    this.image,
    this.mainCriteria,
    this.employee,
    this.salaryDetail,
    this.jobOpportunity,
    this.jobResponsbilities,
    this.aboutCompany,
  });
}

List<Company> companyList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca 1 (7h-15 ngườih), Ca 2 (15 ngườih-23h)",
        "200.000VND/1 ca, 1 ca 8 tiếng",
      ],
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, có thể chọn làm theo giờ hoặc theo ca.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca sáng(6h - 14h) - tối(14h - 22h), mỗi ca 8 tiếng.",
        "15 người0.000VND/1 ca",
      ],
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, siêng năng",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tầm gia sư",
      time: "30 - 12 - 2021",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7tr/Tháng",
      image: "assets/soundcloud-icon.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần dạy học 3 ngày",
        "Một ngày ít nhất 3 tiếng.",
        "100.000VND/1 tiếng.",
      ],
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \n trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];

List<Company> recentList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca 1 (7h-15 ngườih), Ca 2 (15 ngườih-23h)",
        "200.000VND/1 ca, 1 ca 8 tiếng",
      ],
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, có thể chọn làm theo giờ hoặc theo ca.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca sáng(6h - 14h) - tối(14h - 22h), mỗi ca 8 tiếng.",
        "15 người0.000VND/1 ca",
      ],
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, siêng năng",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "4-5Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần dạy học 3 ngày",
        "Một ngày ít nhất 3 tiếng.",
        "100.000VND/1 tiếng.",
      ],
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \n trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];
List<Company> recentHistoryList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      type: "Đang chờ",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca 1 (7h-15 ngườih), Ca 2 (15 ngườih-23h)",
        "200.000VND/1 ca, 1 ca 8 tiếng",
      ],
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, có thể chọn làm theo giờ hoặc theo ca.",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      type: "Thành công",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần làm việc 7 ngày, 1 tháng được một ngày nghỉ",
        "Ca sáng(6h - 14h) - tối(14h - 22h), mỗi ca 8 tiếng.",
        "15 người0.000VND/1 ca",
      ],
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Nhanh nhẹn, siêng năng",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      type: "Đã Hủy",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần dạy học 3 ngày",
        "Một ngày ít nhất 3 tiếng.",
        "100.000VND/1 tiếng.",
      ],
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \n trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      type: "Bị từ chối",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      salaryDetail: [
        "Một tuần dạy học 3 ngày",
        "Một ngày ít nhất 3 tiếng.",
        "100.000VND/1 tiếng.",
      ],
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Đã tiêm 2 mũi vacxin",
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \n trở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];
