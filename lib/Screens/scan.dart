import 'package:flutter/material.dart';
import 'package:flutter_cookin/App_color/app_color.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  bool isScanning = false;

  void startScan() {
    setState(() {
      isScanning = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isScanning = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0426),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: AppColor.textColor,),
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(height: 50),

              Center(
                child: GestureDetector(
                  onTap: startScan,
                  child: Container(
                    width: 310,
                    height: 303,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF1D1A3D), Color(0xFF28204D)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: isScanning
                          ? CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColor.textColor,
                              ),
                            )
                          : Icon(
                              Icons.camera_alt_rounded,
                              size: 150,
                              color: AppColor.textColor,
                            ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Center(
                child: Text(
                  isScanning ? 'Scanning...' : 'Tap to Scan',
                  style: TextStyle(
                    color:Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6A5AE0),
                    minimumSize: Size(357, 57),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: isScanning ? null : () {},
                  child: Text(
                    'Generate Your Recipe',
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
