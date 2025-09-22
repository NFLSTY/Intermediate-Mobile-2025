import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  GenerativeModel? _model;
  ChatSession? _chatSession;
  GeminiService(){
    final apiKey = dotenv.env['GEMINI_API_KEY'];
    if (apiKey == null) {
      throw Exception("GEMINI_API_KEY not found in .env file");
    }
    _model = GenerativeModel(
      model: 'gemini-1-5-flash', 
      apiKey: apiKey, 
      systemInstruction: Content.text(
          "Kamu adalah Serene, seorang teman AI yang empatik dan suportif dari aplikasi Serene. "
          "Tugasmu adalah menjadi pendengar yang baik, memberikan dukungan emosional, "
          "dan membantu pengguna merenungkan perasaan mereka. Jangan pernah memberikan nasihat medis atau diagnosis. "
          "Gunakan bahasa yang hangat, ramah, dan tidak menghakimi. Selalu validasi perasaan pengguna. "
          "Ketika pengguna mengirimkan gambar, berikan respons yang empati dan suportif sesuai dengan konteks gambar tersebut. "
          "Sapa pengguna saat pertama kali memulai percakapan."
    ));
    _chatSession = _model?.startChat();
  }

  // --- FUNGSI UNTUK STREAMING TEXT MESSAGE ---
  Stream<String?> sendMessageStream(String message) {
    if (_chatSession == null) {
      return Stream.error("Sesi chat belum terinisialisasi.");
    }

    try {
      final content = Content.text(message);
      return _chatSession!.sendMessageStream(content).map((response) {
        return response.text;
      });
    } catch (e) {
      // ignore: avoid_print
      print("Error sending message stream: $e");
      return Stream.error("Gagal mengirim pesan.");
    }
  }

  // --- FUNGSI BARU UNTUK STREAMING DENGAN GAMBAR ---
  Stream<String?> sendMessageWithImageStream(String message, File imageFile) {
    if (_chatSession == null) {
      return Stream.error("Sesi chat belum terinisialisasi.");
    }

    try {
      return imageFile.readAsBytes().asStream().asyncExpand((imageBytes) {
        final textPart = TextPart(message);
        final imagePart = DataPart('image/jpeg', imageBytes);
        final content = Content.multi([textPart, imagePart]);
        
        return _chatSession!.sendMessageStream(content).map((response) {
          return response.text;
        });
      });
    } catch (e) {
      // ignore: avoid_print
      print("Error sending image message stream: $e");
      return Stream.error("Gagal mengirim pesan dengan gambar.");
    }
  }

  // --- FUNGSI UNTUK MENGIRIM PESAN DENGAN GAMBAR (NON-STREAMING) ---
  Future<String?> sendMessageWithImage(String message, File imageFile) async {
    if (_chatSession == null) {
      throw Exception("Sesi chat belum terinisialisasi.");
    }

    try {
      final imageBytes = await imageFile.readAsBytes();
      final textPart = TextPart(message);
      final imagePart = DataPart('image/jpeg', imageBytes);
      final content = Content.multi([textPart, imagePart]);
      
      final response = await _chatSession!.sendMessage(content);
      return response.text;
    } catch (e) {
      // ignore: avoid_print
      print("Error sending image message: $e");
      throw Exception("Gagal mengirim pesan dengan gambar.");
    }
  }
}