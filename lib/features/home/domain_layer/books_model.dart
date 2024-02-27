/*


class BooksModel {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;
  final SearchInfo searchInfo;

  BooksModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
    kind: json['kind'],
    id: json['id'],
    etag: json['etag'],
    selfLink: json['selfLink'],
    volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
    saleInfo: SaleInfo.fromJson(json['saleInfo']),
    accessInfo: AccessInfo.fromJson(json['accessInfo']),
    searchInfo: SearchInfo.fromJson(json['searchInfo']),
  );
}

class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final bool text;
  final bool image;
  final int pageCount;
  final String printType;
  final String maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final PanelizationSummary panelizationSummary;
  final ImageLinks imageLinks;
  final String language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.text,
    required this.image,
    required this.pageCount,
    required this.printType,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json['title'],
    authors: List<String>.from(json['authors']),
    publisher: json['publisher'],
    publishedDate: json['publishedDate'],
    description: json['description'],
    industryIdentifiers: List<IndustryIdentifier>.from(json['industryIdentifiers'].map((x) => IndustryIdentifier.fromJson(x))),
    text: json['readingModes']['text'],
    image: json['readingModes']['image'],
    pageCount: json['pageCount'],
    printType: json['printType'],
    maturityRating: json['maturityRating'],
    allowAnonLogging: json['allowAnonLogging'],
    contentVersion: json['contentVersion'],
    panelizationSummary: PanelizationSummary.fromJson(json['panelizationSummary']),
    imageLinks: ImageLinks.fromJson(json['imageLinks']),
    language: json['language'],
    previewLink: json['previewLink'],
    infoLink: json['infoLink'],
    canonicalVolumeLink: json['canonicalVolumeLink'],
  );
}

class IndustryIdentifier {
  final String type;
  final String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
    type: json['type'],
    identifier: json['identifier'],
  );
}

class PanelizationSummary {
  final bool containsEpubBubbles;
  final bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json['containsEpubBubbles'],
    containsImageBubbles: json['containsImageBubbles'],
  );
}

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json['smallThumbnail'],
    thumbnail: json['thumbnail'],
  );
}

class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json['country'],
    saleability: json['saleability'],
    isEbook: json['isEbook'],
  );
}

class AccessInfo {
  final String country;
  final String viewability;
  final bool embeddable;
  final bool publicDomain;
  final String textToSpeechPermission;
  final EPub epub;
  final Pdf pdf;
  final String webReaderLink;
  final String accessViewStatus;
  final bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json['country'],
    viewability: json['viewability'],
    embeddable: json['embeddable'],
    publicDomain: json['publicDomain'],
    textToSpeechPermission: json['textToSpeechPermission'],
    epub: EPub.fromJson(json['epub']),
    pdf: Pdf.fromJson(json['pdf']),
    webReaderLink: json['webReaderLink'],
    accessViewStatus: json['accessViewStatus'],
    quoteSharingAllowed: json['quoteSharingAllowed'],
  );
}

class EPub {
  final bool isAvailable;

  EPub({required this.isAvailable});

  factory EPub.fromJson(Map<String, dynamic> json) => EPub(
    isAvailable: json['isAvailable'],
  );
}

class Pdf {
  final bool isAvailable;

  Pdf({required this.isAvailable});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    isAvailable: json['isAvailable'],
  );
}

class SearchInfo {
  final String textSnippet;

  SearchInfo({required this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json['textSnippet'],
  );
}
*/
