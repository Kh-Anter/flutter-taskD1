class Myfavourit {
  var p1 = [
    Room(
        id: 1,
        title: "room 1",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/1.jpeg"),
    Room(
        id: 2,
        title: "room 2",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/2.jpeg"),
    Room(
        id: 3,
        title: "room 3",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/3.jpeg"),
    Room(
        id: 4,
        title: "room 4",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/4.jpeg"),
    Room(
        id: 5,
        title: "room 5",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/5.jpeg"),
    Room(
        id: 6,
        title: "room 6",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/6.jpeg")
  ];
  var p2 = [
    Room(
        id: 7,
        title: "room 7",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/7.jpeg"),
    Room(
        id: 8,
        title: "room 8",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/8.jpeg"),
    Room(
        id: 9,
        title: "room 9",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/9.jpeg"),
    Room(
        id: 10,
        title: "room 10",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/10.jpeg"),
    Room(
        id: 11,
        title: "room 11",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/11.jpeg"),
    Room(
        id: 12,
        title: "room 12",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/12.jpeg")
  ];
  var p3 = [
    Room(
        id: 13,
        title: "room 13",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/13.jpeg"),
    Room(
        id: 14,
        title: "room 14",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/14.jpeg"),
    Room(
        id: 15,
        title: "room 15",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/15.jpeg"),
    Room(
        id: 16,
        title: "room 16",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/16.jpeg"),
    Room(
        id: 17,
        title: "room 17",
        sutitle: "wwdwedsad",
        url: "assets/images/rooms/17.jpeg")
  ];

  getFavList(int currentPage) {
    switch (currentPage) {
      case 1:
        return p1;
      case 2:
        return p2;
      case 3:
        return p3;
    }
  }
}

class Room {
  int? id;
  String? title, sutitle, url;
  Room({this.id, this.title, this.sutitle, this.url});
}
