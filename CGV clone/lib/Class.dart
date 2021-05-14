import 'package:flutter/material.dart';

class MyCard
{
  String ImgPath;
  MyCard({this.ImgPath});
}


class Poster
{
  String imgPath;
  String title;
  String length;
  Poster({this.imgPath, this.length, this.title});
}


class News{
  String imgPath;
  String title;
  News({this.title, this.imgPath});
}

class Database
{
  List<MyCard> mCard = [];
  List<Poster> mPoster= [];
  List<News> mNews= [];
  Database(){
    mCard.add(new MyCard( ImgPath : "assets/images/card5.png"));
    mCard.add(new MyCard( ImgPath : "assets/images/card6.jpg"));
    mCard.add(new MyCard( ImgPath : "assets/images/card7.jpg"));
    mCard.add(new MyCard( ImgPath : "assets/images/card8.jpg"));
    mCard.add(new MyCard( ImgPath : "assets/images/card1.png"));
    mCard.add(new MyCard( ImgPath : "assets/images/card2.png"));
    mCard.add(new MyCard( ImgPath : "assets/images/card3.jpg"));
    mCard.add(new MyCard( ImgPath : "assets/images/card4.jpg"));



    mPoster.add(new Poster(imgPath: "assets/images/poster1.jpg", length: "1h 36p", title: "Lật mặt 48h"));
    mPoster.add(new Poster(imgPath: "assets/images/poster2.jpg", length: "1h 38p", title: "Bàn tay diệt quỷ"));
    mPoster.add(new Poster(imgPath: "assets/images/poster3.jpg", length: "2h 05p", title: "Cục nợ hóa cục cưng"));
    mPoster.add(new Poster(imgPath: "assets/images/poster4.jpg", length: "1h 43p", title: "Điệp viên siêu quậy"));
    mPoster.add(new Poster(imgPath: "assets/images/poster5.jpg", length: "1h 25p", title: "Chiến binh cuối cùng"));
    mPoster.add(new Poster(imgPath: "assets/images/poster6.jpg", length: "1h 10p", title: "Conan - Viên đạn bạc"));

    mNews.add(new News(imgPath: "assets/images/news1.jpg", title: "An toàn cùng CGV Tissue Panama Overnight"));
    mNews.add(new News(imgPath: "assets/images/news2.jpg", title: "VIP - mua vé online - nhận quà hấp dẫn"));
    mNews.add(new News(imgPath: "assets/images/news3.jpg", title: "Mua 2 vé tặng 1 CGV thanh toán bằng thẻ MasterCard"));
    mNews.add(new News(imgPath: "assets/images/news4.jpg", title: "Ưu đãi giảm tới 40% cho dịch vụ thuê phòng chiếu"));
    mNews.add(new News(imgPath: "assets/images/news5.jpg", title: "Mua vé xem phim 2D tại CGV với giá chỉ 19k"));
    mNews.add(new News(imgPath: "assets/images/news6.jpg", title: "Chương trình an toàn cùng CGV"));


  }
}