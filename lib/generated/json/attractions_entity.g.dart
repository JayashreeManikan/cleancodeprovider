import 'package:cleancodeprovider/generated/json/base/json_convert_content.dart';
import 'package:cleancodeprovider/features/auth/domain/models/attractions_entity.dart';

AttractionsEntity $AttractionsEntityFromJson(Map<String, dynamic> json) {
  final AttractionsEntity attractionsEntity = AttractionsEntity();
  final AttractionsEmbedded? embedded = jsonConvert.convert<
      AttractionsEmbedded>(json['_embedded']);
  if (embedded != null) {
    attractionsEntity.embedded = embedded;
  }
  final AttractionsLinks? links = jsonConvert.convert<AttractionsLinks>(
      json['_links']);
  if (links != null) {
    attractionsEntity.links = links;
  }
  final AttractionsPage? page = jsonConvert.convert<AttractionsPage>(
      json['page']);
  if (page != null) {
    attractionsEntity.page = page;
  }
  return attractionsEntity;
}

Map<String, dynamic> $AttractionsEntityToJson(AttractionsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['_embedded'] = entity.embedded.toJson();
  data['_links'] = entity.links.toJson();
  data['page'] = entity.page.toJson();
  return data;
}

extension AttractionsEntityExtension on AttractionsEntity {
  AttractionsEntity copyWith({
    AttractionsEmbedded? embedded,
    AttractionsLinks? links,
    AttractionsPage? page,
  }) {
    return AttractionsEntity()
      ..embedded = embedded ?? this.embedded
      ..links = links ?? this.links
      ..page = page ?? this.page;
  }
}

AttractionsEmbedded $AttractionsEmbeddedFromJson(Map<String, dynamic> json) {
  final AttractionsEmbedded attractionsEmbedded = AttractionsEmbedded();
  final List<
      AttractionsEmbeddedAttractions>? attractions = (json['attractions'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionsEmbeddedAttractions>(
          e) as AttractionsEmbeddedAttractions).toList();
  if (attractions != null) {
    attractionsEmbedded.attractions = attractions;
  }
  return attractionsEmbedded;
}

Map<String, dynamic> $AttractionsEmbeddedToJson(AttractionsEmbedded entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['attractions'] = entity.attractions.map((v) => v.toJson()).toList();
  return data;
}

extension AttractionsEmbeddedExtension on AttractionsEmbedded {
  AttractionsEmbedded copyWith({
    List<AttractionsEmbeddedAttractions>? attractions,
  }) {
    return AttractionsEmbedded()
      ..attractions = attractions ?? this.attractions;
  }
}

AttractionsEmbeddedAttractions $AttractionsEmbeddedAttractionsFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractions attractionsEmbeddedAttractions = AttractionsEmbeddedAttractions();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractions.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    attractionsEmbeddedAttractions.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractions.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    attractionsEmbeddedAttractions.test = test;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractions.url = url;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    attractionsEmbeddedAttractions.locale = locale;
  }
  final AttractionsEmbeddedAttractionsExternalLinks? externalLinks = jsonConvert
      .convert<AttractionsEmbeddedAttractionsExternalLinks>(
      json['externalLinks']);
  if (externalLinks != null) {
    attractionsEmbeddedAttractions.externalLinks = externalLinks;
  }
  final List<String>? aliases = (json['aliases'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (aliases != null) {
    attractionsEmbeddedAttractions.aliases = aliases;
  }
  final List<
      AttractionsEmbeddedAttractionsImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AttractionsEmbeddedAttractionsImages>(
          e) as AttractionsEmbeddedAttractionsImages).toList();
  if (images != null) {
    attractionsEmbeddedAttractions.images = images;
  }
  final List<
      AttractionsEmbeddedAttractionsClassifications>? classifications = (json['classifications'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsClassifications>(
          e) as AttractionsEmbeddedAttractionsClassifications).toList();
  if (classifications != null) {
    attractionsEmbeddedAttractions.classifications = classifications;
  }
  final AttractionsEmbeddedAttractionsUpcomingEvents? upcomingEvents = jsonConvert
      .convert<AttractionsEmbeddedAttractionsUpcomingEvents>(
      json['upcomingEvents']);
  if (upcomingEvents != null) {
    attractionsEmbeddedAttractions.upcomingEvents = upcomingEvents;
  }
  final AttractionsEmbeddedAttractionsLinks? links = jsonConvert.convert<
      AttractionsEmbeddedAttractionsLinks>(json['_links']);
  if (links != null) {
    attractionsEmbeddedAttractions.links = links;
  }
  return attractionsEmbeddedAttractions;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsToJson(
    AttractionsEmbeddedAttractions entity) {
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

extension AttractionsEmbeddedAttractionsExtension on AttractionsEmbeddedAttractions {
  AttractionsEmbeddedAttractions copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? url,
    String? locale,
    AttractionsEmbeddedAttractionsExternalLinks? externalLinks,
    List<String>? aliases,
    List<AttractionsEmbeddedAttractionsImages>? images,
    List<AttractionsEmbeddedAttractionsClassifications>? classifications,
    AttractionsEmbeddedAttractionsUpcomingEvents? upcomingEvents,
    AttractionsEmbeddedAttractionsLinks? links,
  }) {
    return AttractionsEmbeddedAttractions()
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

AttractionsEmbeddedAttractionsExternalLinks $AttractionsEmbeddedAttractionsExternalLinksFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinks attractionsEmbeddedAttractionsExternalLinks = AttractionsEmbeddedAttractionsExternalLinks();
  final List<
      AttractionsEmbeddedAttractionsExternalLinksTwitter>? twitter = (json['twitter'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsExternalLinksTwitter>(
          e) as AttractionsEmbeddedAttractionsExternalLinksTwitter).toList();
  if (twitter != null) {
    attractionsEmbeddedAttractionsExternalLinks.twitter = twitter;
  }
  final List<
      AttractionsEmbeddedAttractionsExternalLinksWiki>? wiki = (json['wiki'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsExternalLinksWiki>(
          e) as AttractionsEmbeddedAttractionsExternalLinksWiki).toList();
  if (wiki != null) {
    attractionsEmbeddedAttractionsExternalLinks.wiki = wiki;
  }
  final List<
      AttractionsEmbeddedAttractionsExternalLinksFacebook>? facebook = (json['facebook'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsExternalLinksFacebook>(
          e) as AttractionsEmbeddedAttractionsExternalLinksFacebook).toList();
  if (facebook != null) {
    attractionsEmbeddedAttractionsExternalLinks.facebook = facebook;
  }
  final List<
      AttractionsEmbeddedAttractionsExternalLinksInstagram>? instagram = (json['instagram'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsExternalLinksInstagram>(
          e) as AttractionsEmbeddedAttractionsExternalLinksInstagram).toList();
  if (instagram != null) {
    attractionsEmbeddedAttractionsExternalLinks.instagram = instagram;
  }
  final List<
      AttractionsEmbeddedAttractionsExternalLinksHomepage>? homepage = (json['homepage'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          AttractionsEmbeddedAttractionsExternalLinksHomepage>(
          e) as AttractionsEmbeddedAttractionsExternalLinksHomepage).toList();
  if (homepage != null) {
    attractionsEmbeddedAttractionsExternalLinks.homepage = homepage;
  }
  return attractionsEmbeddedAttractionsExternalLinks;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsExternalLinksToJson(
    AttractionsEmbeddedAttractionsExternalLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['twitter'] = entity.twitter.map((v) => v.toJson()).toList();
  data['wiki'] = entity.wiki.map((v) => v.toJson()).toList();
  data['facebook'] = entity.facebook.map((v) => v.toJson()).toList();
  data['instagram'] = entity.instagram.map((v) => v.toJson()).toList();
  data['homepage'] = entity.homepage.map((v) => v.toJson()).toList();
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksExtension on AttractionsEmbeddedAttractionsExternalLinks {
  AttractionsEmbeddedAttractionsExternalLinks copyWith({
    List<AttractionsEmbeddedAttractionsExternalLinksTwitter>? twitter,
    List<AttractionsEmbeddedAttractionsExternalLinksWiki>? wiki,
    List<AttractionsEmbeddedAttractionsExternalLinksFacebook>? facebook,
    List<AttractionsEmbeddedAttractionsExternalLinksInstagram>? instagram,
    List<AttractionsEmbeddedAttractionsExternalLinksHomepage>? homepage,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinks()
      ..twitter = twitter ?? this.twitter
      ..wiki = wiki ?? this.wiki
      ..facebook = facebook ?? this.facebook
      ..instagram = instagram ?? this.instagram
      ..homepage = homepage ?? this.homepage;
  }
}

AttractionsEmbeddedAttractionsExternalLinksTwitter $AttractionsEmbeddedAttractionsExternalLinksTwitterFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinksTwitter attractionsEmbeddedAttractionsExternalLinksTwitter = AttractionsEmbeddedAttractionsExternalLinksTwitter();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsExternalLinksTwitter.url = url;
  }
  return attractionsEmbeddedAttractionsExternalLinksTwitter;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsExternalLinksTwitterToJson(
    AttractionsEmbeddedAttractionsExternalLinksTwitter entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksTwitterExtension on AttractionsEmbeddedAttractionsExternalLinksTwitter {
  AttractionsEmbeddedAttractionsExternalLinksTwitter copyWith({
    String? url,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinksTwitter()
      ..url = url ?? this.url;
  }
}

AttractionsEmbeddedAttractionsExternalLinksWiki $AttractionsEmbeddedAttractionsExternalLinksWikiFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinksWiki attractionsEmbeddedAttractionsExternalLinksWiki = AttractionsEmbeddedAttractionsExternalLinksWiki();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsExternalLinksWiki.url = url;
  }
  return attractionsEmbeddedAttractionsExternalLinksWiki;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsExternalLinksWikiToJson(
    AttractionsEmbeddedAttractionsExternalLinksWiki entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksWikiExtension on AttractionsEmbeddedAttractionsExternalLinksWiki {
  AttractionsEmbeddedAttractionsExternalLinksWiki copyWith({
    String? url,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinksWiki()
      ..url = url ?? this.url;
  }
}

AttractionsEmbeddedAttractionsExternalLinksFacebook $AttractionsEmbeddedAttractionsExternalLinksFacebookFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinksFacebook attractionsEmbeddedAttractionsExternalLinksFacebook = AttractionsEmbeddedAttractionsExternalLinksFacebook();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsExternalLinksFacebook.url = url;
  }
  return attractionsEmbeddedAttractionsExternalLinksFacebook;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsExternalLinksFacebookToJson(
    AttractionsEmbeddedAttractionsExternalLinksFacebook entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksFacebookExtension on AttractionsEmbeddedAttractionsExternalLinksFacebook {
  AttractionsEmbeddedAttractionsExternalLinksFacebook copyWith({
    String? url,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinksFacebook()
      ..url = url ?? this.url;
  }
}

AttractionsEmbeddedAttractionsExternalLinksInstagram $AttractionsEmbeddedAttractionsExternalLinksInstagramFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinksInstagram attractionsEmbeddedAttractionsExternalLinksInstagram = AttractionsEmbeddedAttractionsExternalLinksInstagram();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsExternalLinksInstagram.url = url;
  }
  return attractionsEmbeddedAttractionsExternalLinksInstagram;
}

Map<String,
    dynamic> $AttractionsEmbeddedAttractionsExternalLinksInstagramToJson(
    AttractionsEmbeddedAttractionsExternalLinksInstagram entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksInstagramExtension on AttractionsEmbeddedAttractionsExternalLinksInstagram {
  AttractionsEmbeddedAttractionsExternalLinksInstagram copyWith({
    String? url,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinksInstagram()
      ..url = url ?? this.url;
  }
}

AttractionsEmbeddedAttractionsExternalLinksHomepage $AttractionsEmbeddedAttractionsExternalLinksHomepageFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsExternalLinksHomepage attractionsEmbeddedAttractionsExternalLinksHomepage = AttractionsEmbeddedAttractionsExternalLinksHomepage();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsExternalLinksHomepage.url = url;
  }
  return attractionsEmbeddedAttractionsExternalLinksHomepage;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsExternalLinksHomepageToJson(
    AttractionsEmbeddedAttractionsExternalLinksHomepage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension AttractionsEmbeddedAttractionsExternalLinksHomepageExtension on AttractionsEmbeddedAttractionsExternalLinksHomepage {
  AttractionsEmbeddedAttractionsExternalLinksHomepage copyWith({
    String? url,
  }) {
    return AttractionsEmbeddedAttractionsExternalLinksHomepage()
      ..url = url ?? this.url;
  }
}

AttractionsEmbeddedAttractionsImages $AttractionsEmbeddedAttractionsImagesFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsImages attractionsEmbeddedAttractionsImages = AttractionsEmbeddedAttractionsImages();
  final String? ratio = jsonConvert.convert<String>(json['ratio']);
  if (ratio != null) {
    attractionsEmbeddedAttractionsImages.ratio = ratio;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    attractionsEmbeddedAttractionsImages.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    attractionsEmbeddedAttractionsImages.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    attractionsEmbeddedAttractionsImages.height = height;
  }
  final bool? fallback = jsonConvert.convert<bool>(json['fallback']);
  if (fallback != null) {
    attractionsEmbeddedAttractionsImages.fallback = fallback;
  }
  return attractionsEmbeddedAttractionsImages;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsImagesToJson(
    AttractionsEmbeddedAttractionsImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ratio'] = entity.ratio;
  data['url'] = entity.url;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['fallback'] = entity.fallback;
  return data;
}

extension AttractionsEmbeddedAttractionsImagesExtension on AttractionsEmbeddedAttractionsImages {
  AttractionsEmbeddedAttractionsImages copyWith({
    String? ratio,
    String? url,
    int? width,
    int? height,
    bool? fallback,
  }) {
    return AttractionsEmbeddedAttractionsImages()
      ..ratio = ratio ?? this.ratio
      ..url = url ?? this.url
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..fallback = fallback ?? this.fallback;
  }
}

AttractionsEmbeddedAttractionsClassifications $AttractionsEmbeddedAttractionsClassificationsFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassifications attractionsEmbeddedAttractionsClassifications = AttractionsEmbeddedAttractionsClassifications();
  final bool? primary = jsonConvert.convert<bool>(json['primary']);
  if (primary != null) {
    attractionsEmbeddedAttractionsClassifications.primary = primary;
  }
  final AttractionsEmbeddedAttractionsClassificationsSegment? segment = jsonConvert
      .convert<AttractionsEmbeddedAttractionsClassificationsSegment>(
      json['segment']);
  if (segment != null) {
    attractionsEmbeddedAttractionsClassifications.segment = segment;
  }
  final AttractionsEmbeddedAttractionsClassificationsGenre? genre = jsonConvert
      .convert<AttractionsEmbeddedAttractionsClassificationsGenre>(
      json['genre']);
  if (genre != null) {
    attractionsEmbeddedAttractionsClassifications.genre = genre;
  }
  final AttractionsEmbeddedAttractionsClassificationsSubGenre? subGenre = jsonConvert
      .convert<AttractionsEmbeddedAttractionsClassificationsSubGenre>(
      json['subGenre']);
  if (subGenre != null) {
    attractionsEmbeddedAttractionsClassifications.subGenre = subGenre;
  }
  final AttractionsEmbeddedAttractionsClassificationsType? type = jsonConvert
      .convert<AttractionsEmbeddedAttractionsClassificationsType>(json['type']);
  if (type != null) {
    attractionsEmbeddedAttractionsClassifications.type = type;
  }
  final AttractionsEmbeddedAttractionsClassificationsSubType? subType = jsonConvert
      .convert<AttractionsEmbeddedAttractionsClassificationsSubType>(
      json['subType']);
  if (subType != null) {
    attractionsEmbeddedAttractionsClassifications.subType = subType;
  }
  final bool? family = jsonConvert.convert<bool>(json['family']);
  if (family != null) {
    attractionsEmbeddedAttractionsClassifications.family = family;
  }
  return attractionsEmbeddedAttractionsClassifications;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsClassificationsToJson(
    AttractionsEmbeddedAttractionsClassifications entity) {
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

extension AttractionsEmbeddedAttractionsClassificationsExtension on AttractionsEmbeddedAttractionsClassifications {
  AttractionsEmbeddedAttractionsClassifications copyWith({
    bool? primary,
    AttractionsEmbeddedAttractionsClassificationsSegment? segment,
    AttractionsEmbeddedAttractionsClassificationsGenre? genre,
    AttractionsEmbeddedAttractionsClassificationsSubGenre? subGenre,
    AttractionsEmbeddedAttractionsClassificationsType? type,
    AttractionsEmbeddedAttractionsClassificationsSubType? subType,
    bool? family,
  }) {
    return AttractionsEmbeddedAttractionsClassifications()
      ..primary = primary ?? this.primary
      ..segment = segment ?? this.segment
      ..genre = genre ?? this.genre
      ..subGenre = subGenre ?? this.subGenre
      ..type = type ?? this.type
      ..subType = subType ?? this.subType
      ..family = family ?? this.family;
  }
}

AttractionsEmbeddedAttractionsClassificationsSegment $AttractionsEmbeddedAttractionsClassificationsSegmentFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassificationsSegment attractionsEmbeddedAttractionsClassificationsSegment = AttractionsEmbeddedAttractionsClassificationsSegment();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractionsClassificationsSegment.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractionsClassificationsSegment.name = name;
  }
  return attractionsEmbeddedAttractionsClassificationsSegment;
}

Map<String,
    dynamic> $AttractionsEmbeddedAttractionsClassificationsSegmentToJson(
    AttractionsEmbeddedAttractionsClassificationsSegment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionsEmbeddedAttractionsClassificationsSegmentExtension on AttractionsEmbeddedAttractionsClassificationsSegment {
  AttractionsEmbeddedAttractionsClassificationsSegment copyWith({
    String? id,
    String? name,
  }) {
    return AttractionsEmbeddedAttractionsClassificationsSegment()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionsEmbeddedAttractionsClassificationsGenre $AttractionsEmbeddedAttractionsClassificationsGenreFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassificationsGenre attractionsEmbeddedAttractionsClassificationsGenre = AttractionsEmbeddedAttractionsClassificationsGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractionsClassificationsGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractionsClassificationsGenre.name = name;
  }
  return attractionsEmbeddedAttractionsClassificationsGenre;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsClassificationsGenreToJson(
    AttractionsEmbeddedAttractionsClassificationsGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionsEmbeddedAttractionsClassificationsGenreExtension on AttractionsEmbeddedAttractionsClassificationsGenre {
  AttractionsEmbeddedAttractionsClassificationsGenre copyWith({
    String? id,
    String? name,
  }) {
    return AttractionsEmbeddedAttractionsClassificationsGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionsEmbeddedAttractionsClassificationsSubGenre $AttractionsEmbeddedAttractionsClassificationsSubGenreFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassificationsSubGenre attractionsEmbeddedAttractionsClassificationsSubGenre = AttractionsEmbeddedAttractionsClassificationsSubGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractionsClassificationsSubGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractionsClassificationsSubGenre.name = name;
  }
  return attractionsEmbeddedAttractionsClassificationsSubGenre;
}

Map<String,
    dynamic> $AttractionsEmbeddedAttractionsClassificationsSubGenreToJson(
    AttractionsEmbeddedAttractionsClassificationsSubGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionsEmbeddedAttractionsClassificationsSubGenreExtension on AttractionsEmbeddedAttractionsClassificationsSubGenre {
  AttractionsEmbeddedAttractionsClassificationsSubGenre copyWith({
    String? id,
    String? name,
  }) {
    return AttractionsEmbeddedAttractionsClassificationsSubGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionsEmbeddedAttractionsClassificationsType $AttractionsEmbeddedAttractionsClassificationsTypeFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassificationsType attractionsEmbeddedAttractionsClassificationsType = AttractionsEmbeddedAttractionsClassificationsType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractionsClassificationsType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractionsClassificationsType.name = name;
  }
  return attractionsEmbeddedAttractionsClassificationsType;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsClassificationsTypeToJson(
    AttractionsEmbeddedAttractionsClassificationsType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionsEmbeddedAttractionsClassificationsTypeExtension on AttractionsEmbeddedAttractionsClassificationsType {
  AttractionsEmbeddedAttractionsClassificationsType copyWith({
    String? id,
    String? name,
  }) {
    return AttractionsEmbeddedAttractionsClassificationsType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionsEmbeddedAttractionsClassificationsSubType $AttractionsEmbeddedAttractionsClassificationsSubTypeFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsClassificationsSubType attractionsEmbeddedAttractionsClassificationsSubType = AttractionsEmbeddedAttractionsClassificationsSubType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    attractionsEmbeddedAttractionsClassificationsSubType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    attractionsEmbeddedAttractionsClassificationsSubType.name = name;
  }
  return attractionsEmbeddedAttractionsClassificationsSubType;
}

Map<String,
    dynamic> $AttractionsEmbeddedAttractionsClassificationsSubTypeToJson(
    AttractionsEmbeddedAttractionsClassificationsSubType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension AttractionsEmbeddedAttractionsClassificationsSubTypeExtension on AttractionsEmbeddedAttractionsClassificationsSubType {
  AttractionsEmbeddedAttractionsClassificationsSubType copyWith({
    String? id,
    String? name,
  }) {
    return AttractionsEmbeddedAttractionsClassificationsSubType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

AttractionsEmbeddedAttractionsUpcomingEvents $AttractionsEmbeddedAttractionsUpcomingEventsFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsUpcomingEvents attractionsEmbeddedAttractionsUpcomingEvents = AttractionsEmbeddedAttractionsUpcomingEvents();
  final int? tmr = jsonConvert.convert<int>(json['tmr']);
  if (tmr != null) {
    attractionsEmbeddedAttractionsUpcomingEvents.tmr = tmr;
  }
  final int? ticketmaster = jsonConvert.convert<int>(json['ticketmaster']);
  if (ticketmaster != null) {
    attractionsEmbeddedAttractionsUpcomingEvents.ticketmaster = ticketmaster;
  }
  final int? total = jsonConvert.convert<int>(json['_total']);
  if (total != null) {
    attractionsEmbeddedAttractionsUpcomingEvents.total = total;
  }
  final int? filtered = jsonConvert.convert<int>(json['_filtered']);
  if (filtered != null) {
    attractionsEmbeddedAttractionsUpcomingEvents.filtered = filtered;
  }
  return attractionsEmbeddedAttractionsUpcomingEvents;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsUpcomingEventsToJson(
    AttractionsEmbeddedAttractionsUpcomingEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tmr'] = entity.tmr;
  data['ticketmaster'] = entity.ticketmaster;
  data['_total'] = entity.total;
  data['_filtered'] = entity.filtered;
  return data;
}

extension AttractionsEmbeddedAttractionsUpcomingEventsExtension on AttractionsEmbeddedAttractionsUpcomingEvents {
  AttractionsEmbeddedAttractionsUpcomingEvents copyWith({
    int? tmr,
    int? ticketmaster,
    int? total,
    int? filtered,
  }) {
    return AttractionsEmbeddedAttractionsUpcomingEvents()
      ..tmr = tmr ?? this.tmr
      ..ticketmaster = ticketmaster ?? this.ticketmaster
      ..total = total ?? this.total
      ..filtered = filtered ?? this.filtered;
  }
}

AttractionsEmbeddedAttractionsLinks $AttractionsEmbeddedAttractionsLinksFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsLinks attractionsEmbeddedAttractionsLinks = AttractionsEmbeddedAttractionsLinks();
  final AttractionsEmbeddedAttractionsLinksSelf? self = jsonConvert.convert<
      AttractionsEmbeddedAttractionsLinksSelf>(json['self']);
  if (self != null) {
    attractionsEmbeddedAttractionsLinks.self = self;
  }
  return attractionsEmbeddedAttractionsLinks;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsLinksToJson(
    AttractionsEmbeddedAttractionsLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  return data;
}

extension AttractionsEmbeddedAttractionsLinksExtension on AttractionsEmbeddedAttractionsLinks {
  AttractionsEmbeddedAttractionsLinks copyWith({
    AttractionsEmbeddedAttractionsLinksSelf? self,
  }) {
    return AttractionsEmbeddedAttractionsLinks()
      ..self = self ?? this.self;
  }
}

AttractionsEmbeddedAttractionsLinksSelf $AttractionsEmbeddedAttractionsLinksSelfFromJson(
    Map<String, dynamic> json) {
  final AttractionsEmbeddedAttractionsLinksSelf attractionsEmbeddedAttractionsLinksSelf = AttractionsEmbeddedAttractionsLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionsEmbeddedAttractionsLinksSelf.href = href;
  }
  return attractionsEmbeddedAttractionsLinksSelf;
}

Map<String, dynamic> $AttractionsEmbeddedAttractionsLinksSelfToJson(
    AttractionsEmbeddedAttractionsLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionsEmbeddedAttractionsLinksSelfExtension on AttractionsEmbeddedAttractionsLinksSelf {
  AttractionsEmbeddedAttractionsLinksSelf copyWith({
    String? href,
  }) {
    return AttractionsEmbeddedAttractionsLinksSelf()
      ..href = href ?? this.href;
  }
}

AttractionsLinks $AttractionsLinksFromJson(Map<String, dynamic> json) {
  final AttractionsLinks attractionsLinks = AttractionsLinks();
  final AttractionsLinksFirst? first = jsonConvert.convert<
      AttractionsLinksFirst>(json['first']);
  if (first != null) {
    attractionsLinks.first = first;
  }
  final AttractionsLinksSelf? self = jsonConvert.convert<AttractionsLinksSelf>(
      json['self']);
  if (self != null) {
    attractionsLinks.self = self;
  }
  final AttractionsLinksNext? next = jsonConvert.convert<AttractionsLinksNext>(
      json['next']);
  if (next != null) {
    attractionsLinks.next = next;
  }
  final AttractionsLinksLast? last = jsonConvert.convert<AttractionsLinksLast>(
      json['last']);
  if (last != null) {
    attractionsLinks.last = last;
  }
  return attractionsLinks;
}

Map<String, dynamic> $AttractionsLinksToJson(AttractionsLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['first'] = entity.first.toJson();
  data['self'] = entity.self.toJson();
  data['next'] = entity.next.toJson();
  data['last'] = entity.last.toJson();
  return data;
}

extension AttractionsLinksExtension on AttractionsLinks {
  AttractionsLinks copyWith({
    AttractionsLinksFirst? first,
    AttractionsLinksSelf? self,
    AttractionsLinksNext? next,
    AttractionsLinksLast? last,
  }) {
    return AttractionsLinks()
      ..first = first ?? this.first
      ..self = self ?? this.self
      ..next = next ?? this.next
      ..last = last ?? this.last;
  }
}

AttractionsLinksFirst $AttractionsLinksFirstFromJson(
    Map<String, dynamic> json) {
  final AttractionsLinksFirst attractionsLinksFirst = AttractionsLinksFirst();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionsLinksFirst.href = href;
  }
  return attractionsLinksFirst;
}

Map<String, dynamic> $AttractionsLinksFirstToJson(
    AttractionsLinksFirst entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionsLinksFirstExtension on AttractionsLinksFirst {
  AttractionsLinksFirst copyWith({
    String? href,
  }) {
    return AttractionsLinksFirst()
      ..href = href ?? this.href;
  }
}

AttractionsLinksSelf $AttractionsLinksSelfFromJson(Map<String, dynamic> json) {
  final AttractionsLinksSelf attractionsLinksSelf = AttractionsLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionsLinksSelf.href = href;
  }
  return attractionsLinksSelf;
}

Map<String, dynamic> $AttractionsLinksSelfToJson(AttractionsLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionsLinksSelfExtension on AttractionsLinksSelf {
  AttractionsLinksSelf copyWith({
    String? href,
  }) {
    return AttractionsLinksSelf()
      ..href = href ?? this.href;
  }
}

AttractionsLinksNext $AttractionsLinksNextFromJson(Map<String, dynamic> json) {
  final AttractionsLinksNext attractionsLinksNext = AttractionsLinksNext();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionsLinksNext.href = href;
  }
  return attractionsLinksNext;
}

Map<String, dynamic> $AttractionsLinksNextToJson(AttractionsLinksNext entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionsLinksNextExtension on AttractionsLinksNext {
  AttractionsLinksNext copyWith({
    String? href,
  }) {
    return AttractionsLinksNext()
      ..href = href ?? this.href;
  }
}

AttractionsLinksLast $AttractionsLinksLastFromJson(Map<String, dynamic> json) {
  final AttractionsLinksLast attractionsLinksLast = AttractionsLinksLast();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    attractionsLinksLast.href = href;
  }
  return attractionsLinksLast;
}

Map<String, dynamic> $AttractionsLinksLastToJson(AttractionsLinksLast entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension AttractionsLinksLastExtension on AttractionsLinksLast {
  AttractionsLinksLast copyWith({
    String? href,
  }) {
    return AttractionsLinksLast()
      ..href = href ?? this.href;
  }
}

AttractionsPage $AttractionsPageFromJson(Map<String, dynamic> json) {
  final AttractionsPage attractionsPage = AttractionsPage();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    attractionsPage.size = size;
  }
  final int? totalElements = jsonConvert.convert<int>(json['totalElements']);
  if (totalElements != null) {
    attractionsPage.totalElements = totalElements;
  }
  final int? totalPages = jsonConvert.convert<int>(json['totalPages']);
  if (totalPages != null) {
    attractionsPage.totalPages = totalPages;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    attractionsPage.number = number;
  }
  return attractionsPage;
}

Map<String, dynamic> $AttractionsPageToJson(AttractionsPage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['totalElements'] = entity.totalElements;
  data['totalPages'] = entity.totalPages;
  data['number'] = entity.number;
  return data;
}

extension AttractionsPageExtension on AttractionsPage {
  AttractionsPage copyWith({
    int? size,
    int? totalElements,
    int? totalPages,
    int? number,
  }) {
    return AttractionsPage()
      ..size = size ?? this.size
      ..totalElements = totalElements ?? this.totalElements
      ..totalPages = totalPages ?? this.totalPages
      ..number = number ?? this.number;
  }
}