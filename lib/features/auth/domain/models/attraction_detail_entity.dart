import 'package:cleancodeprovider/generated/json/base/json_field.dart';
import 'package:cleancodeprovider/generated/json/attraction_detail_entity.g.dart';
import 'dart:convert';
export 'package:cleancodeprovider/generated/json/attraction_detail_entity.g.dart';

@JsonSerializable()
class AttractionDetailEntity {
	late String name='';
	late String type='';
	late String id='';
	late bool test;
	late String url='';
	late String locale;
	late AttractionDetailExternalLinks externalLinks;
	late List<String> aliases;
	late List<AttractionDetailImages> images=[];
	late List<AttractionDetailClassifications> classifications;
	late AttractionDetailUpcomingEvents upcomingEvents=AttractionDetailUpcomingEvents();
	@JSONField(name: "_links")
	late AttractionDetailLinks links;

	AttractionDetailEntity({required this.name, required this.url, required this.type, required images});

	factory AttractionDetailEntity.fromJson(Map<String, dynamic> json) {
	return AttractionDetailEntity(
	name: json['name'],
			url: json['url'],
			type: json['type'],
			images:json['images'],
	// Map other properties here
	);
}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		data['name'] = this.name;
		data['url']   = this.name;
		data['type']  = this.type;
		data['images']=this.images;
		// Add other properties to the map
		return data;
	}

}

@JsonSerializable()
class AttractionDetailExternalLinks {
	late List<AttractionDetailExternalLinksYoutube> youtube;
	late List<AttractionDetailExternalLinksTwitter> twitter;
	late List<AttractionDetailExternalLinksItunes> itunes;
	late List<AttractionDetailExternalLinksFacebook> facebook;
	late List<AttractionDetailExternalLinksSpotify> spotify;
	late List<AttractionDetailExternalLinksMusicbrainz> musicbrainz;
	late List<AttractionDetailExternalLinksInstagram> instagram;
	late List<AttractionDetailExternalLinksHomepage> homepage;

	AttractionDetailExternalLinks();

	factory AttractionDetailExternalLinks.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksYoutube {
	late String url;

	AttractionDetailExternalLinksYoutube();

	factory AttractionDetailExternalLinksYoutube.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksYoutubeFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksYoutubeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksTwitter {
	late String url;

	AttractionDetailExternalLinksTwitter();

	factory AttractionDetailExternalLinksTwitter.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksTwitterFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksTwitterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksItunes {
	late String url;

	AttractionDetailExternalLinksItunes();

	factory AttractionDetailExternalLinksItunes.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksItunesFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksItunesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksFacebook {
	late String url;

	AttractionDetailExternalLinksFacebook();

	factory AttractionDetailExternalLinksFacebook.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksFacebookFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksFacebookToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksSpotify {
	late String url;

	AttractionDetailExternalLinksSpotify();

	factory AttractionDetailExternalLinksSpotify.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksSpotifyFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksSpotifyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksMusicbrainz {
	late String id;

	AttractionDetailExternalLinksMusicbrainz();

	factory AttractionDetailExternalLinksMusicbrainz.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksMusicbrainzFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksMusicbrainzToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksInstagram {
	late String url;

	AttractionDetailExternalLinksInstagram();

	factory AttractionDetailExternalLinksInstagram.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksInstagramFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksInstagramToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailExternalLinksHomepage {
	late String url;

	AttractionDetailExternalLinksHomepage();

	factory AttractionDetailExternalLinksHomepage.fromJson(Map<String, dynamic> json) => $AttractionDetailExternalLinksHomepageFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailExternalLinksHomepageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailImages {
	late String ratio;
	late String url='';
	late int width;
	late int height;
	late bool fallback;

	AttractionDetailImages();

	factory AttractionDetailImages.fromJson(Map<String, dynamic> json) => $AttractionDetailImagesFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassifications {
	late bool primary;
	late AttractionDetailClassificationsSegment segment;
	late AttractionDetailClassificationsGenre genre;
	late AttractionDetailClassificationsSubGenre subGenre;
	late AttractionDetailClassificationsType type;
	late AttractionDetailClassificationsSubType subType;
	late bool family;

	AttractionDetailClassifications();

	factory AttractionDetailClassifications.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassificationsSegment {
	late String id;
	late String name;

	AttractionDetailClassificationsSegment();

	factory AttractionDetailClassificationsSegment.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsSegmentFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsSegmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassificationsGenre {
	late String id;
	late String name;

	AttractionDetailClassificationsGenre();

	factory AttractionDetailClassificationsGenre.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsGenreFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassificationsSubGenre {
	late String id;
	late String name;

	AttractionDetailClassificationsSubGenre();

	factory AttractionDetailClassificationsSubGenre.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsSubGenreFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsSubGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassificationsType {
	late String id;
	late String name;

	AttractionDetailClassificationsType();

	factory AttractionDetailClassificationsType.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsTypeFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailClassificationsSubType {
	late String id;
	late String name;

	AttractionDetailClassificationsSubType();

	factory AttractionDetailClassificationsSubType.fromJson(Map<String, dynamic> json) => $AttractionDetailClassificationsSubTypeFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailClassificationsSubTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailUpcomingEvents {
	@JSONField(name: "_total")
	late int total;
	@JSONField(name: "_filtered")
	late int filtered;

	AttractionDetailUpcomingEvents();

	factory AttractionDetailUpcomingEvents.fromJson(Map<String, dynamic> json) => $AttractionDetailUpcomingEventsFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailUpcomingEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailLinks {
	late AttractionDetailLinksSelf self;

	AttractionDetailLinks();

	factory AttractionDetailLinks.fromJson(Map<String, dynamic> json) => $AttractionDetailLinksFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionDetailLinksSelf {
	late String href;

	AttractionDetailLinksSelf();

	factory AttractionDetailLinksSelf.fromJson(Map<String, dynamic> json) => $AttractionDetailLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $AttractionDetailLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}