import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Row(
                          children: [
                            Expanded(child:
                            Row(
                              children: [
                                Container(
                                  width: 130,
                                  child:Image(
                                    image: AssetImage("img/instagram.png.png"),
                                  ),
                                ),
                              ],
                            ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.add_box,
                                  size:32,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.favorite_border,
                                  size:32,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.send,
                                  size:32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      StoryListView(),
                      PostGroup(),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}

class StoryListView extends StatelessWidget {
  const StoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:100,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryItem(),
          StoryItem(),
          StoryItem(),
        ],
      ),
    );
  }
}
class StoryItem extends StatelessWidget {
  const StoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:13.5),
      child:Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(bottom:5),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border:Border.all(
                color: Colors.purpleAccent,
                width:1.5,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://t1.daumcdn.net/cfile/tistory/99731A375ED0FB6B0F"),
            ),
          ),
          Text("Instagram"),
        ],
      ),
    );
  }
}
class PostGroup extends StatelessWidget {
  const PostGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
      ],
    );
  }
}
class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right:10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://t1.daumcdn.net/cfile/tistory/99731A375ED0FB6B0F"),
                ),
              ),
              Expanded(child:Text("netflix_in",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16),)),
              GestureDetector(
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Container(
          child: ImageSlideshow(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
              Image.network("https://images.blz-contentstack.com/v3/assets/bltc965041283bac56c/blt25d472f4aa3951e6/5eebd59169a03212218fdc2e/logo.png"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
              Image.network("https://images.blz-contentstack.com/v3/assets/bltc965041283bac56c/blt25d472f4aa3951e6/5eebd59169a03212218fdc2e/logo.png"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwkabEOUB1Tr_dNRtks1tOMiFuXhDIGy25XA&usqp=CAU"),
            ],
          ),
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.favorite_border,size: 32,),

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.chat_bubble_outline,size: 32,),

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.send,size: 32,),

                ),
              ),
              Expanded(
                child:Container(

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.bookmark_border,size: 32,),

                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:Text("좋아요 80,547개",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text("netflix_in ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16),),
                    Container(
                      child: Expanded(
                        child: Text("it hasn't been our week, our month, or even kdf klajl fkdf lsald flldfk",
                          overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

