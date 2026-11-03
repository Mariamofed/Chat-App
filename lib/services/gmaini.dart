import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Gmaini {

static Future<void> sendMessage(String meesages)async{

  final apikye = dotenv.env["Gmanini"];
  final String endpoint = "https://openrouter.ai/api/v1/chat/completions";

  final Map <String ,String> hedeer = {
    "Content-Type": "application/json",
    "Authorization": "Bearer$apikye",
  } ;
final Map <String ,dynamic> body =
{
  "model": "google/gemini-2.5-flash-lite",
  "messages": [
      {
        "role": "user",
        "content": [
          {
            "type": "text",
            "text": "What is in this image, audio and video?"
          }
        ]
      }
    ],
  
};
final uri = Uri.parse(endpoint);
final response = await http.post(
  uri,
  headers: hedeer,
  body: jsonEncode(body)

);
print(response.body);

}

}