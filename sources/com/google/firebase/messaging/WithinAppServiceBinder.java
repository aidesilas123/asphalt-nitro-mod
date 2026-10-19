package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.WithinAppServiceConnection;

/* JADX INFO: loaded from: classes3.dex */
class WithinAppServiceBinder extends Binder {
    private final IntentHandler a;

    interface IntentHandler {
        Task<Void> a(Intent intent);
    }

    WithinAppServiceBinder(IntentHandler intentHandler) {
        this.a = intentHandler;
    }

    void b(final WithinAppServiceConnection.BindRequest bindRequest) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        this.a.a(bindRequest.a).addOnCompleteListener(t.a, new OnCompleteListener() { // from class: com.google.firebase.messaging.y
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                bindRequest.b();
            }
        });
    }
}
