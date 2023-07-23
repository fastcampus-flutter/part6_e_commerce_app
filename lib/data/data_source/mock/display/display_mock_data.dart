class DisplayMockData {
  static final String menusByMarket =
      '[{"title":"패캠추천","tabId":10001},{"title":"신상품","tabId":10002},{"title":"베스트","tabId":10003},{"title":"알뜰쇼핑","tabId":10004},{"title":"특가/혜택","tabId":10005}]';

  static final String menusByBeauty =
      '[{"title":"패캠추천","tabId":20001},{"title":"페스티벌","tabId":20002},{"title":"신상품","tabId":20003},{"title":"베스트","tabId":20004},{"title":"브랜드관","tabId":20005}]';
  static final String viewModulesByTabIdCaseOne =
      '[{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"}]';
  static final String viewModulesByTabIdCaseTwo =
      '[{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"}]';
  static final String viewModulesByTabIdCaseThree =
      '[{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"}]';
  static final String viewModulesByTabIdCaseFour =
      '[{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"}]';
  static final String viewModulesByTabIdCaseFive =
      '[{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"}]';

  static final String productInfo = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"FastCampus 플러터 강의 샘플 상품의 타이틀 입니다. 긴 문자를 노출했을 시 화면에서는 오버플로우가 발생할 수 있어 반드시 체크를 해야합니다.",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 8000,
        "originalPrice": 10000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';

  static String getViewModules() {
    var viewModules = [];

    final List<String> types = [
      'carousel_view_module',
      'scroll_view_module',
      'special_price_view_module',
      'banner_view_module',
      'category_product_view_module',
      'brand_product_view_module',
    ];

    var products = List.filled(6, productInfo);

    for (var type in types) {
      viewModules.add('''{
            "type" : "${type}",
            "title" : "${type}-title",
            "subtitle": "${type}-subtitle",
            "time": ${DateTime.now().add(Duration(hours: 1)).millisecondsSinceEpoch},
            "imageUrl": "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
            "products":[${products.join(',')}],
            "tabs": ["가전·가구 특가","프리미엄 주방 특가","뷰티 특가","프리미엄 식품 특가"]
          }''');
    }

    return '[${viewModules.join(',')}]';
  }
}
