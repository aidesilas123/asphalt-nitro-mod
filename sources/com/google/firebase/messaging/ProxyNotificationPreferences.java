package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes3.dex */
final class ProxyNotificationPreferences {
    private ProxyNotificationPreferences() {
    }

    private static SharedPreferences a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }

    @WorkerThread
    static boolean b(Context context) {
        return a(context).getBoolean("proxy_notification_initialized", false);
    }

    @WorkerThread
    static void c(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putBoolean("proxy_notification_initialized", z);
        editorEdit.apply();
    }
}
