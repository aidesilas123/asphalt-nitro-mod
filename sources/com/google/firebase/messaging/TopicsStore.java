package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
final class TopicsStore {

    @GuardedBy("TopicsStore.class")
    private static WeakReference<TopicsStore> a;
    private final SharedPreferences b;
    private SharedPreferencesQueue c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f4162d;

    private TopicsStore(SharedPreferences sharedPreferences, Executor executor) {
        this.f4162d = executor;
        this.b = sharedPreferences;
    }

    @WorkerThread
    private synchronized void b() {
        this.c = SharedPreferencesQueue.b(this.b, "topic_operation_queue", ",", this.f4162d);
    }

    @WorkerThread
    public static synchronized TopicsStore getInstance(Context context, Executor executor) {
        TopicsStore topicsStore;
        WeakReference<TopicsStore> weakReference = a;
        topicsStore = weakReference != null ? weakReference.get() : null;
        if (topicsStore == null) {
            topicsStore = new TopicsStore(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
            topicsStore.b();
            a = new WeakReference<>(topicsStore);
        }
        return topicsStore;
    }

    @Nullable
    synchronized TopicOperation a() {
        return TopicOperation.a(this.c.e());
    }

    synchronized boolean c(TopicOperation topicOperation) {
        return this.c.f(topicOperation.e());
    }
}
