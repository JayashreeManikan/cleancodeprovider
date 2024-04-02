import 'package:cleancodeprovider/generated/json/base/json_convert_content.dart';
import 'package:cleancodeprovider/features/auth/domain/models/attraction_detail_entity.dart';

AttractionDetailEntity $AttractionDetailEntityFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailEntity attractionDetailEntity = AttractionDetailEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    attractionDetailEntity.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailEntity.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    attractionDetailEntity.test = test;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailEntity.url = url;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    attractionDetailEntity.locale = locale;
  }
  final AttractionDetailExternalLinks? externalLinks = jsonConvert.convert<
      AttractionDetailExternalLinks>(json['externalLinks']);
  if (externalLinks != null) {
    attractionDetailEntity.externalLinks = externalLinks;
  }
  final List<String>? aliases = (json['aliases'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (aliases != null) {
    attractionDetailEntity.aliases = aliases;
  }
  final List<AttractionDetailImages>? images = (json['images'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailImages>(e) as AttractionDetailImages)
      .toList();
  if (images != null) {
    attractionDetailEntity.images = images;
  }
  final List<
      AttractionDetailClassifications>? classifications = (json['classifications'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailClassifications>(
          e) as AttractionDetailClassifications).toList();
  if (classifications != null) {
    attractionDetailEntity.classifications = classifications;
  }
  final AttractionDetailUpcomingEvents? upcomingEvents = jsonConvert.convert<
      AttractionDetailUpcomingEvents>(json['upcomingEvents']);
  if (upcomingEvents != null) {
    attractionDetailEntity.upcomingEvents = upcomingEvents;
  }
  final AttractionDetailLinks? links = jsonConvert.convert<
      AttractionDetailLinks>(json['_links']);
  if (links != null) {
    attractionDetailEntity.links = links;
  }
  return attractionDetailEntity;
}

Map<String, dynamic> $AttractionDetailEntityToJson(
    AttractionDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['test'] = entity.test;
  data['url'] = entity.url;
  data['locale'] = entity.locale;
  data['externalLinks'] = entity.externalLinks.toJson();
  data['aliases'] = entity.aliases;
  data['images'] = entity.images.map((v) => v.toJson()).toList();
  data['classifications'] =
      entity.classifications.map((v) => v.toJson()).toList();
  data['upcomingEvents'] = entity.upcomingEvents.toJson();
  data['_links'] = entity.links.toJson();
  return data;
}

extension AttractionDetailEntityExtension on AttractionDetailEntity {
  AttractionDetailEntity copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? url,
    String? locale,
    AttractionDetailExternalLinks? externalLinks,
    List<String>? aliases,
    List<AttractionDetailImages>? images,
    List<AttractionDetailClassifications>? classifications,
    AttractionDetailUpcomingEvents? upcomingEvents,
    AttractionDetailLinks? links,
  }) {
    return AttractionDetailEntity()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..id = id ?? this.id
      ..test = test ?? this.test
      ..url = url ?? this.url
      ..locale = locale ?? this.locale
      ..externalLinks = externalLinks ?? this.externalLinks
      ..aliases = aliases ?? this.aliases
      ..images = images ?? this.images
      ..classifications = classifications ?? this.classifications
      ..upcomingEvents = upcomingEvents ?? this.upcomingEvents
      ..links = links ?? this.links;
  }
}

AttractionDetailExternalLinks $AttractionDetailExternalLinksFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinks attractionDetailExternalLinks = AttractionDetailExternalLinks();
  final List<
      AttractionDetailExternalLinksYoutube>? youtube = (json['youtube'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksYoutube>(
          e) as AttractionDetailExternalLinksYoutube).toList();
  if (youtube != null) {
    attractionDetailExternalLinks.youtube = youtube;
  }
  final List<
      AttractionDetailExternalLinksTwitter>? twitter = (json['twitter'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksTwitter>(
          e) as AttractionDetailExternalLinksTwitter).toList();
  if (twitter != null) {
    attractionDetailExternalLinks.twitter = twitter;
  }
  final List<
      AttractionDetailExternalLinksItunes>? itunes = (json['itunes'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksItunes>(
          e) as AttractionDetailExternalLinksItunes).toList();
  if (itunes != null) {
    attractionDetailExternalLinks.itunes = itunes;
  }
  final List<
      AttractionDetailExternalLinksFacebook>? facebook = (json['facebook'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksFacebook>(
          e) as AttractionDetailExternalLinksFacebook).toList();
  if (facebook != null) {
    attractionDetailExternalLinks.facebook = facebook;
  }
  final List<
      AttractionDetailExternalLinksSpotify>? spotify = (json['spotify'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksSpotify>(
          e) as AttractionDetailExternalLinksSpotify).toList();
  if (spotify != null) {
    attractionDetailExternalLinks.spotify = spotify;
  }
  final List<
      AttractionDetailExternalLinksMusicbrainz>? musicbrainz = (json['musicbrainz'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksMusicbrainz>(
          e) as AttractionDetailExternalLinksMusicbrainz).toList();
  if (musicbrainz != null) {
    attractionDetailExternalLinks.musicbrainz = musicbrainz;
  }
  final List<
      AttractionDetailExternalLinksInstagram>? instagram = (json['instagram'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksInstagram>(
          e) as AttractionDetailExternalLinksInstagram).toList();
  if (instagram != null) {
    attractionDetailExternalLinks.instagram = instagram;
  }
  final List<
      AttractionDetailExternalLinksHomepage>? homepage = (json['homepage'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionDetailExternalLinksHomepage>(
          e) as AttractionDetailExternalLinksHomepage).toList();
  if (homepage != null) {
    attractionDetailExternalLinks.homepage = homepage;
  }
  return attractionDetailExternalLinks;
}

Map<String, dynamic> $AttractionDetailExternalLinksToJson(
    AttractionDetailExternalLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['youtube'] = entity.youtube.map((v) => v.toJson()).toList();
  data['twitter'] = entity.twitter.map((v) => v.toJson()).toList();
  data['itunes'] = entity.itunes.map((v) => v.toJson()).toList();
  data['facebook'] = entity.facebook.map((v) => v.toJson()).toList();
  data['spotify'] = entity.spotify.map((v) => v.toJson()).toList();
  data['musicbrainz'] = entity.musicbrainz.map((v) => v.toJson()).toList();
  data['instagram'] = entity.instagram.map((v) => v.toJson()).toList();
  data['homepage'] = entity.homepage.map((v) => v.toJson()).toList();
  return data;
}

extension AttractionDetailExternalLinksExtension on AttractionDetailExternalLinks {
  AttractionDetailExternalLinks copyWith({
    List<AttractionDetailExternalLinksYoutube>? youtube,
    List<AttractionDetailExternalLinksTwitter>? twitter,
    List<AttractionDetailExternalLinksItunes>? itunes,
    List<AttractionDetailExternalLinksFacebook>? facebook,
    List<AttractionDetailExternalLinksSpotify>? spotify,
    List<AttractionDetailExternalLinksMusicbrainz>? musicbrainz,
    List<AttractionDetailExternalLinksInstagram>? instagram,
    List<AttractionDetailExternalLinksHomepage>? homepage,
  }) {
    return AttractionDetailExternalLinks()
      ..youtube = youtube ?? this.youtube
      ..twitter = twitter ?? this.twitter
      ..itunes = itunes ?? this.itunes
      ..facebook = facebook ?? this.facebook
      ..spotify = spotify ?? this.spotify
      ..musicbrainz = musicbrainz ?? this.musicbrainz
      ..instagram = instagram ?? this.instagram
      ..homepage = homepage ?? this.homepage;
  }
}

AttractionDetailExternalLinksYoutube $AttractionDetailExternalLinksYoutubeFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksYoutube attractionDetailExternalLinksYoutube = AttractionDetailExternalLinksYoutube();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksYoutube.url = url;
  }
  return attractionDetailExternalLinksYoutube;
}

Map<String, dynamic> $AttractionDetailExternalLinksYoutubeToJson(
    AttractionDetailExternalLinksYoutube entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksYoutubeExtension on AttractionDetailExternalLinksYoutube {
  AttractionDetailExternalLinksYoutube copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksYoutube()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksTwitter $AttractionDetailExternalLinksTwitterFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksTwitter attractionDetailExternalLinksTwitter = AttractionDetailExternalLinksTwitter();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksTwitter.url = url;
  }
  return attractionDetailExternalLinksTwitter;
}

Map<String, dynamic> $AttractionDetailExternalLinksTwitterToJson(
    AttractionDetailExternalLinksTwitter entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksTwitterExtension on AttractionDetailExternalLinksTwitter {
  AttractionDetailExternalLinksTwitter copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksTwitter()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksItunes $AttractionDetailExternalLinksItunesFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksItunes attractionDetailExternalLinksItunes = AttractionDetailExternalLinksItunes();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksItunes.url = url;
  }
  return attractionDetailExternalLinksItunes;
}

Map<String, dynamic> $AttractionDetailExternalLinksItunesToJson(
    AttractionDetailExternalLinksItunes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksItunesExtension on AttractionDetailExternalLinksItunes {
  AttractionDetailExternalLinksItunes copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksItunes()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksFacebook $AttractionDetailExternalLinksFacebookFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksFacebook attractionDetailExternalLinksFacebook = AttractionDetailExternalLinksFacebook();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksFacebook.url = url;
  }
  return attractionDetailExternalLinksFacebook;
}

Map<String, dynamic> $AttractionDetailExternalLinksFacebookToJson(
    AttractionDetailExternalLinksFacebook entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksFacebookExtension on AttractionDetailExternalLinksFacebook {
  AttractionDetailExternalLinksFacebook copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksFacebook()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksSpotify $AttractionDetailExternalLinksSpotifyFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksSpotify attractionDetailExternalLinksSpotify = AttractionDetailExternalLinksSpotify();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksSpotify.url = url;
  }
  return attractionDetailExternalLinksSpotify;
}

Map<String, dynamic> $AttractionDetailExternalLinksSpotifyToJson(
    AttractionDetailExternalLinksSpotify entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksSpotifyExtension on AttractionDetailExternalLinksSpotify {
  AttractionDetailExternalLinksSpotify copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksSpotify()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksMusicbrainz $AttractionDetailExternalLinksMusicbrainzFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksMusicbrainz attractionDetailExternalLinksMusicbrainz = AttractionDetailExternalLinksMusicbrainz();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailExternalLinksMusicbrainz.id = id;
  }
  return attractionDetailExternalLinksMusicbrainz;
}

Map<String, dynamic> $AttractionDetailExternalLinksMusicbrainzToJson(
    AttractionDetailExternalLinksMusicbrainz entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

extension AttractionDetailExternalLinksMusicbrainzExtension on AttractionDetailExternalLinksMusicbrainz {
  AttractionDetailExternalLinksMusicbrainz copyWith({
    String? id,
  }) {
    return AttractionDetailExternalLinksMusicbrainz()
      ..id = id ?? this.id;
  }
}

AttractionDetailExternalLinksInstagram $AttractionDetailExternalLinksInstagramFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksInstagram attractionDetailExternalLinksInstagram = AttractionDetailExternalLinksInstagram();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksInstagram.url = url;
  }
  return attractionDetailExternalLinksInstagram;
}

Map<String, dynamic> $AttractionDetailExternalLinksInstagramToJson(
    AttractionDetailExternalLinksInstagram entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksInstagramExtension on AttractionDetailExternalLinksInstagram {
  AttractionDetailExternalLinksInstagram copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksInstagram()
      ..url = url ?? this.url;
  }
}

AttractionDetailExternalLinksHomepage $AttractionDetailExternalLinksHomepageFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailExternalLinksHomepage attractionDetailExternalLinksHomepage = AttractionDetailExternalLinksHomepage();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailExternalLinksHomepage.url = url;
  }
  return attractionDetailExternalLinksHomepage;
}

Map<String, dynamic> $AttractionDetailExternalLinksHomepageToJson(
    AttractionDetailExternalLinksHomepage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionDetailExternalLinksHomepageExtension on AttractionDetailExternalLinksHomepage {
  AttractionDetailExternalLinksHomepage copyWith({
    String? url,
  }) {
    return AttractionDetailExternalLinksHomepage()
      ..url = url ?? this.url;
  }
}

AttractionDetailImages $AttractionDetailImagesFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailImages attractionDetailImages = AttractionDetailImages();
  final String? ratio = jsonConvert.convert<String>(json['ratio']);
  if (ratio != null) {
    attractionDetailImages.ratio = ratio;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionDetailImages.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    attractionDetailImages.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    attractionDetailImages.height = height;
  }
  final bool? fallback = jsonConvert.convert<bool>(json['fallback']);
  if (fallback != null) {
    attractionDetailImages.fallback = fallback;
  }
  return attractionDetailImages;
}

Map<String, dynamic> $AttractionDetailImagesToJson(
    AttractionDetailImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ratio'] = entity.ratio;
  data['url'] = entity.url;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['fallback'] = entity.fallback;
  return data;
}

extension AttractionDetailImagesExtension on AttractionDetailImages {
  AttractionDetailImages copyWith({
    String? ratio,
    String? url,
    int? width,
    int? height,
    bool? fallback,
  }) {
    return AttractionDetailImages()
      ..ratio = ratio ?? this.ratio
      ..url = url ?? this.url
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..fallback = fallback ?? this.fallback;
  }
}

AttractionDetailClassifications $AttractionDetailClassificationsFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassifications attractionDetailClassifications = AttractionDetailClassifications();
  final bool? primary = jsonConvert.convert<bool>(json['primary']);
  if (primary != null) {
    attractionDetailClassifications.primary = primary;
  }
  final AttractionDetailClassificationsSegment? segment = jsonConvert.convert<
      AttractionDetailClassificationsSegment>(json['segment']);
  if (segment != null) {
    attractionDetailClassifications.segment = segment;
  }
  final AttractionDetailClassificationsGenre? genre = jsonConvert.convert<
      AttractionDetailClassificationsGenre>(json['genre']);
  if (genre != null) {
    attractionDetailClassifications.genre = genre;
  }
  final AttractionDetailClassificationsSubGenre? subGenre = jsonConvert.convert<
      AttractionDetailClassificationsSubGenre>(json['subGenre']);
  if (subGenre != null) {
    attractionDetailClassifications.subGenre = subGenre;
  }
  final AttractionDetailClassificationsType? type = jsonConvert.convert<
      AttractionDetailClassificationsType>(json['type']);
  if (type != null) {
    attractionDetailClassifications.type = type;
  }
  final AttractionDetailClassificationsSubType? subType = jsonConvert.convert<
      AttractionDetailClassificationsSubType>(json['subType']);
  if (subType != null) {
    attractionDetailClassifications.subType = subType;
  }
  final bool? family = jsonConvert.convert<bool>(json['family']);
  if (family != null) {
    attractionDetailClassifications.family = family;
  }
  return attractionDetailClassifications;
}

Map<String, dynamic> $AttractionDetailClassificationsToJson(
    AttractionDetailClassifications entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['primary'] = entity.primary;
  data['segment'] = entity.segment.toJson();
  data['genre'] = entity.genre.toJson();
  data['subGenre'] = entity.subGenre.toJson();
  data['type'] = entity.type.toJson();
  data['subType'] = entity.subType.toJson();
  data['family'] = entity.family;
  return data;
}

extension AttractionDetailClassificationsExtension on AttractionDetailClassifications {
  AttractionDetailClassifications copyWith({
    bool? primary,
    AttractionDetailClassificationsSegment? segment,
    AttractionDetailClassificationsGenre? genre,
    AttractionDetailClassificationsSubGenre? subGenre,
    AttractionDetailClassificationsType? type,
    AttractionDetailClassificationsSubType? subType,
    bool? family,
  }) {
    return AttractionDetailClassifications()
      ..primary = primary ?? this.primary
      ..segment = segment ?? this.segment
      ..genre = genre ?? this.genre
      ..subGenre = subGenre ?? this.subGenre
      ..type = type ?? this.type
      ..subType = subType ?? this.subType
      ..family = family ?? this.family;
  }
}

AttractionDetailClassificationsSegment $AttractionDetailClassificationsSegmentFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassificationsSegment attractionDetailClassificationsSegment = AttractionDetailClassificationsSegment();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailClassificationsSegment.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailClassificationsSegment.name = name;
  }
  return attractionDetailClassificationsSegment;
}

Map<String, dynamic> $AttractionDetailClassificationsSegmentToJson(
    AttractionDetailClassificationsSegment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionDetailClassificationsSegmentExtension on AttractionDetailClassificationsSegment {
  AttractionDetailClassificationsSegment copyWith({
    String? id,
    String? name,
  }) {
    return AttractionDetailClassificationsSegment()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionDetailClassificationsGenre $AttractionDetailClassificationsGenreFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassificationsGenre attractionDetailClassificationsGenre = AttractionDetailClassificationsGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailClassificationsGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailClassificationsGenre.name = name;
  }
  return attractionDetailClassificationsGenre;
}

Map<String, dynamic> $AttractionDetailClassificationsGenreToJson(
    AttractionDetailClassificationsGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionDetailClassificationsGenreExtension on AttractionDetailClassificationsGenre {
  AttractionDetailClassificationsGenre copyWith({
    String? id,
    String? name,
  }) {
    return AttractionDetailClassificationsGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionDetailClassificationsSubGenre $AttractionDetailClassificationsSubGenreFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassificationsSubGenre attractionDetailClassificationsSubGenre = AttractionDetailClassificationsSubGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailClassificationsSubGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailClassificationsSubGenre.name = name;
  }
  return attractionDetailClassificationsSubGenre;
}

Map<String, dynamic> $AttractionDetailClassificationsSubGenreToJson(
    AttractionDetailClassificationsSubGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionDetailClassificationsSubGenreExtension on AttractionDetailClassificationsSubGenre {
  AttractionDetailClassificationsSubGenre copyWith({
    String? id,
    String? name,
  }) {
    return AttractionDetailClassificationsSubGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionDetailClassificationsType $AttractionDetailClassificationsTypeFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassificationsType attractionDetailClassificationsType = AttractionDetailClassificationsType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailClassificationsType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailClassificationsType.name = name;
  }
  return attractionDetailClassificationsType;
}

Map<String, dynamic> $AttractionDetailClassificationsTypeToJson(
    AttractionDetailClassificationsType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionDetailClassificationsTypeExtension on AttractionDetailClassificationsType {
  AttractionDetailClassificationsType copyWith({
    String? id,
    String? name,
  }) {
    return AttractionDetailClassificationsType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionDetailClassificationsSubType $AttractionDetailClassificationsSubTypeFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailClassificationsSubType attractionDetailClassificationsSubType = AttractionDetailClassificationsSubType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionDetailClassificationsSubType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionDetailClassificationsSubType.name = name;
  }
  return attractionDetailClassificationsSubType;
}

Map<String, dynamic> $AttractionDetailClassificationsSubTypeToJson(
    AttractionDetailClassificationsSubType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionDetailClassificationsSubTypeExtension on AttractionDetailClassificationsSubType {
  AttractionDetailClassificationsSubType copyWith({
    String? id,
    String? name,
  }) {
    return AttractionDetailClassificationsSubType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionDetailUpcomingEvents $AttractionDetailUpcomingEventsFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailUpcomingEvents attractionDetailUpcomingEvents = AttractionDetailUpcomingEvents();
  final int? total = jsonConvert.convert<int>(json['_total']);
  if (total != null) {
    attractionDetailUpcomingEvents.total = total;
  }
  final int? filtered = jsonConvert.convert<int>(json['_filtered']);
  if (filtered != null) {
    attractionDetailUpcomingEvents.filtered = filtered;
  }
  return attractionDetailUpcomingEvents;
}

Map<String, dynamic> $AttractionDetailUpcomingEventsToJson(
    AttractionDetailUpcomingEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['_total'] = entity.total;
  data['_filtered'] = entity.filtered;
  return data;
}

extension AttractionDetailUpcomingEventsExtension on AttractionDetailUpcomingEvents {
  AttractionDetailUpcomingEvents copyWith({
    int? total,
    int? filtered,
  }) {
    return AttractionDetailUpcomingEvents()
      ..total = total ?? this.total
      ..filtered = filtered ?? this.filtered;
  }
}

AttractionDetailLinks $AttractionDetailLinksFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailLinks attractionDetailLinks = AttractionDetailLinks();
  final AttractionDetailLinksSelf? self = jsonConvert.convert<
      AttractionDetailLinksSelf>(json['self']);
  if (self != null) {
    attractionDetailLinks.self = self;
  }
  return attractionDetailLinks;
}

Map<String, dynamic> $AttractionDetailLinksToJson(
    AttractionDetailLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  return data;
}

extension AttractionDetailLinksExtension on AttractionDetailLinks {
  AttractionDetailLinks copyWith({
    AttractionDetailLinksSelf? self,
  }) {
    return AttractionDetailLinks()
      ..self = self ?? this.self;
  }
}

AttractionDetailLinksSelf $AttractionDetailLinksSelfFromJson(
    Map<String, dynamic> json) {
  final AttractionDetailLinksSelf attractionDetailLinksSelf = AttractionDetailLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionDetailLinksSelf.href = href;
  }
  return attractionDetailLinksSelf;
}

Map<String, dynamic> $AttractionDetailLinksSelfToJson(
    AttractionDetailLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionDetailLinksSelfExtension on AttractionDetailLinksSelf {
  AttractionDetailLinksSelf copyWith({
    String? href,
  }) {
    return AttractionDetailLinksSelf()
      ..href = href ?? this.href;
  }
}