package com.example.ci_cd

/*import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Firebase.appDistribution.showFeedbackNotification(
            // Text providing notice to your testers about collection and
            // processing of their feedback data
            R.string.additionalFormText,
            // The level of interruption for the notification
            InterruptionLevel.HIGH)
    }

}*/




import androidx.annotation.NonNull
import com.google.firebase.appdistribution.InterruptionLevel
import com.google.firebase.appdistribution.ktx.appDistribution
import com.google.firebase.ktx.Firebase
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            ".../feedback_notification",
        ).setMethodCallHandler { call, result ->
            if (call.method == "show") {
                showFeedbackNotification()
                result.success(null)
            } else {
                result.notImplemented()
            }
        }
    }

    fun showFeedbackNotification() {
        Firebase.appDistribution.showFeedbackNotification(
            "Thanks for your feedback! (islam )",
            InterruptionLevel.HIGH
        )
    }
}
