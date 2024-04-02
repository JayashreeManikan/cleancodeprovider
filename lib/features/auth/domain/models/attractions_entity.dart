import 'package:cleancodeprovider/generated/json/base/json_field.dart';
import 'package:cleancodeprovider/generated/json/attractions_entity.g.dart';
import 'dart:convert';
export 'package:cleancodeprovider/generated/json/attractions_entity.g.dart';

@JsonSerializable()
class AttractionsEntity {
	@JSONField(name: "_embedded")
	late AttractionsEmbedded embedded=AttractionsEmbedded();
	@JSONField(name: "_links")
	late AttractionsLinks links;
	late AttractionsPage page;

	AttractionsEntity();

	factory AttractionsEntity.fromJson(Map<String, dynamic> json) => $AttractionsEntityFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbedded {
	late List<AttractionsEmbeddedAttractions> attractions=[];

	AttractionsEmbedded();

	factory AttractionsEmbedded.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractions {
	late String name;
	late String type;
	late String id;
	late bool test;
	late String url;
	late String locale;
	late AttractionsEmbeddedAttractionsExternalLinks externalLinks;
	late List<String> aliases;
	late List<AttractionsEmbeddedAttractionsImages> images;
	late List<AttractionsEmbeddedAttractionsClassifications> classifications;
	late AttractionsEmbeddedAttractionsUpcomingEvents upcomingEvents;
	@JSONField(name: "_links")
	late AttractionsEmbeddedAttractionsLinks links;

	AttractionsEmbeddedAttractions();

	factory AttractionsEmbeddedAttractions.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinks {
	late List<AttractionsEmbeddedAttractionsExternalLinksTwitter> twitter;
	late List<AttractionsEmbeddedAttractionsExternalLinksWiki> wiki;
	late List<AttractionsEmbeddedAttractionsExternalLinksFacebook> facebook;
	late List<AttractionsEmbeddedAttractionsExternalLinksInstagram> instagram;
	late List<AttractionsEmbeddedAttractionsExternalLinksHomepage> homepage;

	AttractionsEmbeddedAttractionsExternalLinks();

	factory AttractionsEmbeddedAttractionsExternalLinks.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinksTwitter {
	late String url;

	AttractionsEmbeddedAttractionsExternalLinksTwitter();

	factory AttractionsEmbeddedAttractionsExternalLinksTwitter.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksTwitterFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksTwitterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinksWiki {
	late String url;

	AttractionsEmbeddedAttractionsExternalLinksWiki();

	factory AttractionsEmbeddedAttractionsExternalLinksWiki.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksWikiFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksWikiToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinksFacebook {
	late String url;

	AttractionsEmbeddedAttractionsExternalLinksFacebook();

	factory AttractionsEmbeddedAttractionsExternalLinksFacebook.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksFacebookFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksFacebookToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinksInstagram {
	late String url;

	AttractionsEmbeddedAttractionsExternalLinksInstagram();

	factory AttractionsEmbeddedAttractionsExternalLinksInstagram.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksInstagramFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksInstagramToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsExternalLinksHomepage {
	late String url;

	AttractionsEmbeddedAttractionsExternalLinksHomepage();

	factory AttractionsEmbeddedAttractionsExternalLinksHomepage.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsExternalLinksHomepageFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsExternalLinksHomepageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsImages {
	late String ratio;
	late String url;
	late int width;
	late int height;
	late bool fallback;

	AttractionsEmbeddedAttractionsImages();

	factory AttractionsEmbeddedAttractionsImages.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsImagesFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassifications {
	late bool primary;
	late AttractionsEmbeddedAttractionsClassificationsSegment segment;
	late AttractionsEmbeddedAttractionsClassificationsGenre genre;
	late AttractionsEmbeddedAttractionsClassificationsSubGenre subGenre;
	late AttractionsEmbeddedAttractionsClassificationsType type;
	late AttractionsEmbeddedAttractionsClassificationsSubType subType;
	late bool family;

	AttractionsEmbeddedAttractionsClassifications();

	factory AttractionsEmbeddedAttractionsClassifications.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassificationsSegment {
	late String id;
	late String name;

	AttractionsEmbeddedAttractionsClassificationsSegment();

	factory AttractionsEmbeddedAttractionsClassificationsSegment.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsSegmentFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsSegmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassificationsGenre {
	late String id;
	late String name;

	AttractionsEmbeddedAttractionsClassificationsGenre();

	factory AttractionsEmbeddedAttractionsClassificationsGenre.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsGenreFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassificationsSubGenre {
	late String id;
	late String name;

	AttractionsEmbeddedAttractionsClassificationsSubGenre();

	factory AttractionsEmbeddedAttractionsClassificationsSubGenre.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsSubGenreFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsSubGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassificationsType {
	late String id;
	late String name;

	AttractionsEmbeddedAttractionsClassificationsType();

	factory AttractionsEmbeddedAttractionsClassificationsType.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsTypeFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsClassificationsSubType {
	late String id;
	late String name;

	AttractionsEmbeddedAttractionsClassificationsSubType();

	factory AttractionsEmbeddedAttractionsClassificationsSubType.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsClassificationsSubTypeFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsClassificationsSubTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsUpcomingEvents {
	late int tmr;
	late int ticketmaster;
	@JSONField(name: "_total")
	late int total;
	@JSONField(name: "_filtered")
	late int filtered;

	AttractionsEmbeddedAttractionsUpcomingEvents();

	factory AttractionsEmbeddedAttractionsUpcomingEvents.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsUpcomingEventsFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsUpcomingEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsLinks {
	late AttractionsEmbeddedAttractionsLinksSelf self;

	AttractionsEmbeddedAttractionsLinks();

	factory AttractionsEmbeddedAttractionsLinks.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsLinksFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsEmbeddedAttractionsLinksSelf {
	late String href;

	AttractionsEmbeddedAttractionsLinksSelf();

	factory AttractionsEmbeddedAttractionsLinksSelf.fromJson(Map<String, dynamic> json) => $AttractionsEmbeddedAttractionsLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsEmbeddedAttractionsLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsLinks {
	late AttractionsLinksFirst first;
	late AttractionsLinksSelf self;
	late AttractionsLinksNext next;
	late AttractionsLinksLast last;

	AttractionsLinks();

	factory AttractionsLinks.fromJson(Map<String, dynamic> json) => $AttractionsLinksFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsLinksFirst {
	late String href;

	AttractionsLinksFirst();

	factory AttractionsLinksFirst.fromJson(Map<String, dynamic> json) => $AttractionsLinksFirstFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsLinksFirstToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsLinksSelf {
	late String href;

	AttractionsLinksSelf();

	factory AttractionsLinksSelf.fromJson(Map<String, dynamic> json) => $AttractionsLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsLinksNext {
	late String href;

	AttractionsLinksNext();

	factory AttractionsLinksNext.fromJson(Map<String, dynamic> json) => $AttractionsLinksNextFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsLinksNextToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsLinksLast {
	late String href;

	AttractionsLinksLast();

	factory AttractionsLinksLast.fromJson(Map<String, dynamic> json) => $AttractionsLinksLastFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsLinksLastToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AttractionsPage {
	late int size;
	late int totalElements;
	late int totalPages;
	late int number;

	AttractionsPage();

	factory AttractionsPage.fromJson(Map<String, dynamic> json) => $AttractionsPageFromJson(json);

	Map<String, dynamic> toJson() => $AttractionsPageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}