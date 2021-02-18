final List<FeedData> feedData = [
  FeedData(
      "_schotti1_",
      "https://scontent-muc2-1.cdninstagram.com/v/t51.2885-19/s150x150/80874731_172087167362304_6118887306423173120_n.jpg?_nc_ht=scontent-muc2-1.cdninstagram.com&_nc_ohc=1gymsceW9dcAX_2W84R&tp=1&oh=d8739624bcea06ad897e2d68f48afe25&oe=6055D8DF",
      "https://i.ibb.co/kxhpWZT/2577.jpg",
      "Beach Lloret de Mare",
      300),
  FeedData(
      "coreytaylor",
      "https://pbs.twimg.com/profile_images/1312096067970764800/GdxYWptv_400x400.jpg",
      "https://apps-cloud.n-tv.de/img/22071971-1601550480000/16-9/750/corey-taylor-cmft-13825.jpg",
      "Extremely limited number of VIP Meet & Greet packages are still available. Packages include....",
      58014),
  FeedData(
      "tomorrowland",
      "https://pbs.twimg.com/profile_images/1326165874013851649/A5YG4b9C_400x400.jpg",
      "https://www.tomorrowland.com/src/Frontend/Themes/tomorrowland/Core/Layout/images/timeline/2019-9.jpg",
      "Pure energy...",
      20000),
  FeedData(
      "oktoberfest",
      "https://image.freepik.com/vektoren-kostenlos/oktoberfest-bier-logo_96485-128.jpg",
      "https://cdn.oktoberfest.de/assets/files/1/home-hero.-landscape.jpg",
      "Oktoberfest München",
      5000),
  FeedData(
      "rockimparkofficial",
      "https://www.energy.de/sites/default/files/Nuernberg/RiP2017_Banner_944x450_00.png",
      "https://stagr.de/app/uploads/2020/06/Rock-im-Park-2021-1-622x415.jpg",
      "Flashback to better times...",
      2130),
  FeedData(
      "metallica",
      "https://logosmarken.com/wp-content/uploads/2020/10/Metallica-Logo-650x366.png",
      "https://berlin.capribyfraser.com/d/capriberlin/media/Images/Blog_images/__thumbs_1050_567_crop/Metallica_in_berlin.jpg",
      "New Band Picture",
      5000)
];

class FeedData {
  final String profileName;
  final String profilePicture;
  final String pictureUrl;
  final String picutreText;
  final int likes;

  FeedData(this.profileName, this.profilePicture, this.pictureUrl,
      this.picutreText, this.likes);
}
