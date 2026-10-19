package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public class FirebaseMessagingService extends EnhancedIntentService {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Queue<String> f4144f = new ArrayDeque(10);

    private boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = f4144f;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        }
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        Log.d("FirebaseMessaging", "Received duplicate message: " + str);
        return true;
    }

    private void m(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (NotificationParams.isNotification(extras)) {
            NotificationParams notificationParams = new NotificationParams(extras);
            ExecutorService executorServiceC = FcmExecutors.c();
            try {
                if (new DisplayNotification(this, notificationParams, executorServiceC).a()) {
                    return;
                }
                executorServiceC.shutdown();
                if (MessagingAnalytics.shouldUploadScionMetrics(intent)) {
                    MessagingAnalytics.logNotificationForeground(intent);
                }
            } finally {
                executorServiceC.shutdown();
            }
        }
        q(new RemoteMessage(extras));
    }

    private String n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    private void o(Intent intent) {
        if (l(intent.getStringExtra("google.message_id"))) {
            return;
        }
        u(intent);
    }

    private void u(Intent intent) {
        String stringExtra;
        stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        switch (stringExtra) {
            case "deleted_messages":
                p();
                break;
            case "gcm":
                MessagingAnalytics.logNotificationReceived(intent);
                m(intent);
                break;
            case "send_error":
                t(n(intent), new SendException(intent.getStringExtra("error")));
                break;
            case "send_event":
                r(intent.getStringExtra("google.message_id"));
                break;
            default:
                Log.w("FirebaseMessaging", "Received message with unknown type: " + stringExtra);
                break;
        }
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    protected Intent c(Intent intent) {
        return ServiceStarter.b().c();
    }

    @Override // com.google.firebase.messaging.EnhancedIntentService
    public void d(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            o(intent);
            return;
        }
        if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            s(intent.getStringExtra("token"));
            return;
        }
        Log.d("FirebaseMessaging", "Unknown intent action: " + intent.getAction());
    }

    @WorkerThread
    public void p() {
    }

    @WorkerThread
    public void q(@NonNull RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void r(@NonNull String str) {
    }

    @WorkerThread
    public void s(@NonNull String str) {
    }

    @WorkerThread
    public void t(@NonNull String str, @NonNull Exception exc) {
    }
}
