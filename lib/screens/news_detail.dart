import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetail extends StatelessWidget {
  final news;

  // In the constructor, require a Todo.
  NewsDetail({Key key, @required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                // title: Text("Coporate News"),
                elevation: 8,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(""),
                    background: Stack(
                      children: [
                        Container(
                          height: 400,
                          child: Image.network(
                            news['url'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 50,
                                color: Colors.black54,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          MdiIcons.clock,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          news == null ? "xx:xx" : news['time'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15),
                                    Row(
                                      children: [
                                        Icon(
                                          MdiIcons.calendar,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          news == null
                                              ? "xxx/xx/xx"
                                              : news['date'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 8),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    news == null ? "News Title" : news['title'],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    news == null
                        ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                        : news['news'],
                    textAlign: TextAlign.justify,
                    
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
