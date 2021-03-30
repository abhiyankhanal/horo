class CaroSlide {
  final String id;
  final String imgUrl;

  CaroSlide({this.imgUrl, this.id});
  Map<String, dynamic> toMap() {
    return {"id": id, "imgUrl": imgUrl};
  }

  CaroSlide.fromMap(Map<String, dynamic> data)
      : id = data["id"],
        imgUrl = data["imgUrl"];
}
