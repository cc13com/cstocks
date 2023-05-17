import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import '../api/api_key.dart';
import '../models/cc13_stockslist.dart';

class MyOAuth2Client extends OAuth2Client {
  MyOAuth2Client({required String redirectUri, required String customUriScheme})
      : super(
            authorizeUrl: stocksListURL, //Your service's authorization url
            tokenUrl: accessTokenURL, //Your service access token url
            redirectUri: redirectUri,
            customUriScheme: customUriScheme);
}

OAuth2Client client = MyOAuth2Client(redirectUri: '', customUriScheme: '');

OAuth2Helper oAuth2Helper = OAuth2Helper(client,
    clientId: clientID,
    clientSecret: clientSecret,
    grantType: OAuth2Helper.clientCredentials);

class CC13Services {
  Future<List<Items>> getList() async {
    Response response = await oAuth2Helper.get(stocksListURL);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['items'];
      return result.map((e) => Items.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final itemsProvider = Provider<CC13Services>((ref) => CC13Services());
