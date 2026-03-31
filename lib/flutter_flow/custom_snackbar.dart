import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FFSnackbar {
  static OverlayEntry? _currentEntry;

  static void show(
    BuildContext context, 
    String message, {
    Color? backgroundColor, 
    Color? textColor,
    bool isLoading = false,
    Duration duration = const Duration(seconds: 4),
  }) {
    final overlay = Overlay.of(context);
    
    // Remove current if exists
    hide();

    _currentEntry = OverlayEntry(
      builder: (context) => _SnackbarWidget(
        message: message,
        backgroundColor: backgroundColor,
        textColor: textColor,
        isLoading: isLoading,
      ),
    );

    overlay.insert(_currentEntry!);
    
    if (!isLoading) {
      Future.delayed(duration, () {
        hide();
      });
    }
  }

  static void hide() {
    if (_currentEntry != null) {
      _currentEntry!.remove();
      _currentEntry = null;
    }
  }
}

class _SnackbarWidget extends StatelessWidget {
  final String message;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;

  const _SnackbarWidget({
    required this.message,
    this.backgroundColor,
    this.textColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.0,
      left: 20.0,
      right: 20.0,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? Color(0xFF333333),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              if (isLoading)
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: SizedBox(
                    width: 18.0,
                    height: 18.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                      color: textColor ?? Colors.white,
                    ),
                  ),
                ),
              Expanded(
                child: Text(
                  message,
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: textColor ?? Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (!isLoading)
                GestureDetector(
                  onTap: () => FFSnackbar.hide(),
                  child: Icon(
                    Icons.close,
                    color: (textColor ?? Colors.white).withOpacity(0.7),
                    size: 18.0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
