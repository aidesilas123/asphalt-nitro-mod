package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
class TopicsSubscriber {
    private static final long a = TimeUnit.HOURS.toSeconds(8);
    private final Context b;
    private final Metadata c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GmsRpc f4163d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FirebaseMessaging f4164e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ScheduledExecutorService f4166g;
    private final TopicsStore i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("pendingOperations")
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> f4165f = new ArrayMap();

    @GuardedBy("this")
    private boolean h = false;

    private TopicsSubscriber(FirebaseMessaging firebaseMessaging, Metadata metadata, TopicsStore topicsStore, GmsRpc gmsRpc, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f4164e = firebaseMessaging;
        this.c = metadata;
        this.i = topicsStore;
        this.f4163d = gmsRpc;
        this.b = context;
        this.f4166g = scheduledExecutorService;
    }

    @WorkerThread
    private static <T> void a(Task<T> task) throws IOException {
        try {
            Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e3);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    @WorkerThread
    private void b(String str) throws IOException {
        a(this.f4163d.k(this.f4164e.c(), str));
    }

    @WorkerThread
    private void c(String str) throws IOException {
        a(this.f4163d.l(this.f4164e.c(), str));
    }

    @VisibleForTesting
    static Task<TopicsSubscriber> d(final FirebaseMessaging firebaseMessaging, final Metadata metadata, final GmsRpc gmsRpc, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TopicsSubscriber.h(context, scheduledExecutorService, firebaseMessaging, metadata, gmsRpc);
            }
        });
    }

    static boolean f() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    static /* synthetic */ TopicsSubscriber h(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, Metadata metadata, GmsRpc gmsRpc) throws Exception {
        return new TopicsSubscriber(firebaseMessaging, metadata, TopicsStore.getInstance(context, scheduledExecutorService), gmsRpc, context, scheduledExecutorService);
    }

    private void i(TopicOperation topicOperation) {
        synchronized (this.f4165f) {
            String strE = topicOperation.e();
            if (this.f4165f.containsKey(strE)) {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.f4165f.get(strE);
                TaskCompletionSource<Void> taskCompletionSourcePoll = arrayDeque.poll();
                if (taskCompletionSourcePoll != null) {
                    taskCompletionSourcePoll.setResult(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f4165f.remove(strE);
                }
            }
        }
    }

    private void m() {
        if (g()) {
            return;
        }
        p(0L);
    }

    boolean e() {
        return this.i.a() != null;
    }

    synchronized boolean g() {
        return this.h;
    }

    @WorkerThread
    boolean j(TopicOperation topicOperation) throws IOException {
        try {
            String strB = topicOperation.b();
            byte b = -1;
            int iHashCode = strB.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && strB.equals("U")) {
                    b = 1;
                }
            } else if (strB.equals("S")) {
                b = 0;
            }
            if (b == 0) {
                b(topicOperation.c());
                if (f()) {
                    Log.d("FirebaseMessaging", "Subscribe to topic: " + topicOperation.c() + " succeeded.");
                }
            } else if (b == 1) {
                c(topicOperation.c());
                if (f()) {
                    Log.d("FirebaseMessaging", "Unsubscribe from topic: " + topicOperation.c() + " succeeded.");
                }
            } else if (f()) {
                Log.d("FirebaseMessaging", "Unknown topic operation" + topicOperation + ".");
            }
            return true;
        } catch (IOException e2) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e2.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e2.getMessage())) {
                if (e2.getMessage() != null) {
                    throw e2;
                }
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            Log.e("FirebaseMessaging", "Topic operation failed: " + e2.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    void k(Runnable runnable, long j) {
        this.f4166g.schedule(runnable, j, TimeUnit.SECONDS);
    }

    synchronized void l(boolean z) {
        this.h = z;
    }

    void n() {
        if (e()) {
            m();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (f() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean o() throws java.io.IOException {
        /*
            r2 = this;
        L0:
            monitor-enter(r2)
            com.google.firebase.messaging.TopicsStore r0 = r2.i     // Catch: java.lang.Throwable -> L2b
            com.google.firebase.messaging.TopicOperation r0 = r0.a()     // Catch: java.lang.Throwable -> L2b
            if (r0 != 0) goto L19
            boolean r0 = f()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L16
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L2b
        L16:
            r0 = 1
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            return r0
        L19:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r2.j(r0)
            if (r1 != 0) goto L22
            r0 = 0
            return r0
        L22:
            com.google.firebase.messaging.TopicsStore r1 = r2.i
            r1.c(r0)
            r2.i(r0)
            goto L0
        L2b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.TopicsSubscriber.o():boolean");
    }

    void p(long j) {
        k(new TopicsSyncTask(this, this.b, this.c, Math.min(Math.max(30L, 2 * j), a)), j);
        l(true);
    }
}
