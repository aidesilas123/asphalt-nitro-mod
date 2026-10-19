package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
class RequestDeduplicator {
    private final Executor a;
    private final Map<Pair<String, String>, Task<InstanceIdResult>> b = new ArrayMap();

    /* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
    interface GetTokenRequest {
        Task<InstanceIdResult> start();
    }

    RequestDeduplicator(Executor executor) {
        this.a = executor;
    }

    synchronized Task<InstanceIdResult> a(String str, String str2, GetTokenRequest getTokenRequest) {
        final Pair<String, String> pair = new Pair<>(str, str2);
        Task<InstanceIdResult> task = this.b.get(pair);
        if (task != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(pair);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 29);
                sb.append("Joining ongoing request for: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            return task;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf2 = String.valueOf(pair);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 24);
            sb2.append("Making new request for: ");
            sb2.append(strValueOf2);
            Log.d("FirebaseInstanceId", sb2.toString());
        }
        Task taskContinueWithTask = getTokenRequest.start().continueWithTask(this.a, new Continuation(this, pair) { // from class: com.google.firebase.iid.RequestDeduplicator$$Lambda$0
            private final RequestDeduplicator a;
            private final Pair b;

            {
                this.a = this;
                this.b = pair;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public Object then(Task task2) throws Exception {
                this.a.b(this.b, task2);
                return task2;
            }
        });
        this.b.put(pair, (Task<InstanceIdResult>) taskContinueWithTask);
        return taskContinueWithTask;
    }

    final /* synthetic */ Task b(Pair pair, Task task) throws Exception {
        synchronized (this) {
            this.b.remove(pair);
        }
        return task;
    }
}
