package com.gorinsystems.test_project.gorin_test_project;


import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.Result;


public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "flutter.native/helper";
    Result result;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        MethodChannel channel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL);

        channel.setMethodCallHandler(
            (methodCall, result) -> {
                this.result = result;
                if ("getFlavor".equals(methodCall.method)) {
                    result.success(BuildConfig.FLAVOR);
                } else {
                    result.notImplemented();
                }
            });
    }

}
