import 'dart:convert';

import 'package:google_places_rest_api/src/model/results/address_component.dart';
import 'package:google_places_rest_api/src/model/results/geometry.dart';
import 'package:google_places_rest_api/src/model/results/place_editorial_summary.dart';
import 'package:google_places_rest_api/src/model/results/place_opening_hours/place_opening_hours.dart';
import 'package:google_places_rest_api/src/model/results/place_photo.dart';
import 'package:google_places_rest_api/src/model/results/place_review.dart';
import 'package:google_places_rest_api/src/model/results/plus_code.dart';

class Place {
  List<AddressComponent>? addressComponents;
  String? adrAddress;
  String? businessStatus;
  bool? curbsidePickup;
  PlaceOpeningHours? currentOpeningHours;
  bool? delivery;
  bool? dineIn;
  PlaceEditorialSummary? editorialSummary;
  String? formattedAddress;
  String? formattedPhoneNumber;
  Geometry? geometry;
  String? icon;
  String? iconBackgroundColor;
  String? iconMaskBaseUri;
  String? internationalPhoneNumber;
  String? name;
  PlaceOpeningHours? openingHours;
  bool? permanentlyClosed;
  List<PlacePhoto>? photos;
  String? placeId;
  PlusCode? plusCode;
  double? priceLevel;
  double? rating;
  String? reference;
  bool? reservable;
  List<PlaceReview>? reviews;
  String? scope;
  List<PlaceOpeningHours>? secondaryOpeningHours;
  bool? servesBeer;
  bool? servesBreakfast;
  bool? servesBrunch;
  bool? servesDinner;
  bool? servesLunch;
  bool? servesVegetarianFood;
  bool? servesWine;
  bool? takeout;
  List<String>? types;
  String? url;
  double? userRatingsTotal;
  double? utcOffset;
  String? vicinity;
  String? website;
  bool? wheelchairAccessibleEntrance;
  Place({
    this.addressComponents,
    this.adrAddress,
    this.businessStatus,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.delivery,
    this.dineIn,
    this.editorialSummary,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.internationalPhoneNumber,
    this.name,
    this.openingHours,
    this.permanentlyClosed,
    this.photos,
    this.placeId,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reference,
    this.reservable,
    this.reviews,
    this.scope,
    this.secondaryOpeningHours,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.takeout,
    this.types,
    this.url,
    this.userRatingsTotal,
    this.utcOffset,
    this.vicinity,
    this.website,
    this.wheelchairAccessibleEntrance,
  });

  Map<String, dynamic> toMap() {
    return {
      'address_components': addressComponents?.map((x) => x.toMap()).toList(),
      'adr_address': adrAddress,
      'business_status': businessStatus,
      'curbside_pickup': curbsidePickup,
      "current_opening_hours": currentOpeningHours?.toMap(),
      'delivery': delivery,
      'dine_in': dineIn,
      "editorial_summary": editorialSummary?.toMap(),
      'formatted_address': formattedAddress,
      'formatted_phone_number': formattedPhoneNumber,
      'geometry': geometry?.toMap(),
      'icon': icon,
      'icon_background_color': iconBackgroundColor,
      'icon_mask_base_uri': iconMaskBaseUri,
      'international_phone_number': internationalPhoneNumber,
      'name': name,
      'opening_hours': openingHours?.toMap(),
      'permanently_closed': permanentlyClosed,
      'photos': photos?.map((x) => x.toMap()).toList(),
      'place_id': placeId,
      'plus_code': plusCode?.toMap(),
      'price_level': priceLevel,
      'rating': rating,
      'reference': reference,
      'reservable': reservable,
      'reviews': reviews?.map((x) => x.toMap()).toList(),
      'scope': scope,
      'secondary_opening_hours':
          secondaryOpeningHours?.map((x) => x.toMap()).toList(),
      'serves_beer': servesBeer,
      'serves_breakfast': servesBreakfast,
      'serves_brunch': servesBrunch,
      'serves_dinner': servesDinner,
      'serves_lunch': servesLunch,
      'serves_vegetarian_food': servesVegetarianFood,
      'serves_wine': servesWine,
      'takeout': takeout,
      'types': types,
      'url': url,
      'user_ratings_total': userRatingsTotal,
      'utc_offset': utcOffset,
      'vicinity': vicinity,
      'website': website,
      'wheelchair_accessible_entrance': wheelchairAccessibleEntrance,
    };
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
      addressComponents: map['address_components'] != null
          ? List<AddressComponent>.from(map['address_components']
              ?.map((x) => AddressComponent.fromMap(x)))
          : null,
      adrAddress: map['adr_address'],
      businessStatus: map['business_status'],
      curbsidePickup: map['curbside_pickup'],
      currentOpeningHours: map["current_opening_hours"] != null
          ? PlaceOpeningHours.fromMap(map["current_opening_hours"])
          : null,
      delivery: map['delivery'],
      dineIn: map['dine_in'],
      editorialSummary: map["editorial_summary"] != null
          ? PlaceEditorialSummary.fromMap(map["editorial_summary"])
          : null,
      formattedAddress: map['formatted_address'],
      formattedPhoneNumber: map['formatted_phone_number'],
      geometry:
          map['geometry'] != null ? Geometry.fromMap(map['geometry']) : null,
      icon: map['icon'],
      iconBackgroundColor: map['icon_background_color'],
      iconMaskBaseUri: map['icon_mask_base_uri'],
      internationalPhoneNumber: map['international_phone_number'],
      name: map['name'],
      openingHours: map["opening_hours"] != null
          ? PlaceOpeningHours.fromMap(map["opening_hours"])
          : null,
      permanentlyClosed: map['permanently_closed'],
      photos: map['photos'] != null
          ? List<PlacePhoto>.from(
              map['photos']?.map((x) => PlacePhoto.fromMap(x)))
          : null,
      placeId: map['place_id'],
      plusCode:
          map['plus_code'] != null ? PlusCode.fromMap(map['plus_code']) : null,
      priceLevel: map['price_level']?.toDouble(),
      rating: map['rating']?.toDouble(),
      reference: map['reference'],
      reservable: map['reservable'],
      reviews: map['reviews'] != null
          ? List<PlaceReview>.from(
              map['reviews']?.map((x) => PlaceReview.fromMap(x)))
          : null,
      scope: map['scope'],
      secondaryOpeningHours: map['secondary_opening_hours'] != null
          ? List<PlaceOpeningHours>.from(map['secondary_opening_hours']
              ?.map((x) => PlaceOpeningHours.fromMap(x)))
          : null,
      servesBeer: map['serves_beer'],
      servesBreakfast: map['serves_breakfast'],
      servesBrunch: map['serves_brunch'],
      servesDinner: map['serves_dinner'],
      servesLunch: map['serves_lunch'],
      servesVegetarianFood: map['serves_vegetarian_food'],
      servesWine: map['serves_wine'],
      takeout: map['takeout'],
      types: List<String>.from(map['types']),
      url: map['url'],
      userRatingsTotal: map['user_ratings_total']?.toDouble(),
      utcOffset: map['utc_offset']?.toDouble(),
      vicinity: map['vicinity'],
      website: map['website'],
      wheelchairAccessibleEntrance: map['wheelchair_accessible_entrance'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) => Place.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Place(addressComponents: $addressComponents, adrAddress: $adrAddress, businessStatus: $businessStatus, curbsidePickup: $curbsidePickup, currentOpeningHours $currentOpeningHours.  delivery: $delivery, dineIn: $dineIn, editorialSummary $editorialSummary, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, openingHours: $openingHours, permanentlyClosed: $permanentlyClosed, photos: $photos, placeId: $placeId, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, reference: $reference, reservable: $reservable, reviews: $reviews, scope: $scope, secondaryOpeningHours: $secondaryOpeningHours, servesBeer: $servesBeer, servesBreakfast: $servesBreakfast, servesBrunch: $servesBrunch, servesDinner: $servesDinner, servesLunch: $servesLunch, servesVegetarianFood: $servesVegetarianFood, servesWine: $servesWine, takeout: $takeout, types: $types, url: $url, userRatingsTotal: $userRatingsTotal, utcOffset: $utcOffset, vicinity: $vicinity, website: $website, wheelchairAccessibleEntrance: $wheelchairAccessibleEntrance,)';
  }
}
