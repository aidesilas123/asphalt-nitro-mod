package com.google.firebase.messaging;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
class RequestDeduplicator {
    private final Executor a;

    @GuardedBy("this")
    private final Map<String, Task<String>> b = new ArrayMap();

    interface GetTokenRequest {
        Task<String> start();
    }

    RequestDeduplicator(Executor executor) {
        this.a = executor;
    }

    private /* synthetic */ Task b(String str, Task task) throws Exception {
        synchronized (this) {
            this.b.remove(str);
        }
        return task;
    }

    synchronized Task<String> a(final String str, GetTokenRequest getTokenRequest) {
        Task<String> task = this.b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + str);
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Making new request for: " + str);
        }
        Task taskContinueWithTask = getTokenRequest.start().continueWithTask(this.a, new Continuation() { // from class: com.google.firebase.messaging.v
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) throws Exception {
                this.a.c(str, task2);
                return task2;
            }
        });
        this.b.put(str, (Task<String>) taskContinueWithTask);
        return taskContinueWithTask;
    }

    public /* synthetic */ Task c(String str, Task task) throws Exception {
        b(str, task);
        return task;
    }
}
