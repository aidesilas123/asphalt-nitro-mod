package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.WithinAppServiceBinder;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
public abstract class EnhancedIntentService extends Service {
    private Binder b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4135d;

    @VisibleForTesting
    final ExecutorService a = FcmExecutors.b();
    private final Object c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4136e = 0;

    private void b(Intent intent) {
        if (intent != null) {
            WakeLockHolder.b(intent);
        }
        synchronized (this.c) {
            int i = this.f4136e - 1;
            this.f4136e = i;
            if (i == 0) {
                k(this.f4135d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(Intent intent, Task task) {
        b(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            d(intent);
        } finally {
            taskCompletionSource.setResult(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public Task<Void> j(final Intent intent) {
        if (e(intent)) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.a.execute(new Runnable() { // from class: com.google.firebase.messaging.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.i(intent, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    protected Intent c(Intent intent) {
        return intent;
    }

    public abstract void d(Intent intent);

    public boolean e(Intent intent) {
        return false;
    }

    boolean k(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.b == null) {
            this.b = new WithinAppServiceBinder(new WithinAppServiceBinder.IntentHandler() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                @Override // com.google.firebase.messaging.WithinAppServiceBinder.IntentHandler
                @KeepForSdk
                public Task<Void> a(Intent intent2) {
                    return EnhancedIntentService.this.j(intent2);
                }
            });
        }
        return this.b;
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.a.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.c) {
            this.f4135d = i2;
            this.f4136e++;
        }
        Intent intentC = c(intent);
        if (intentC == null) {
            b(intent);
            return 2;
        }
        Task<Void> taskJ = j(intentC);
        if (taskJ.isComplete()) {
            b(intent);
            return 2;
        }
        taskJ.addOnCompleteListener(t.a, new OnCompleteListener() { // from class: com.google.firebase.messaging.b
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.a.g(intent, task);
            }
        });
        return 3;
    }
}
