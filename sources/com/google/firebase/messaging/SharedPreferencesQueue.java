package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
final class SharedPreferencesQueue {
    private final SharedPreferences a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f4157e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("internalQueue")
    @VisibleForTesting
    final ArrayDeque<String> f4156d = new ArrayDeque<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("internalQueue")
    private boolean f4158f = false;

    private SharedPreferencesQueue(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.a = sharedPreferences;
        this.b = str;
        this.c = str2;
        this.f4157e = executor;
    }

    @GuardedBy("internalQueue")
    private boolean a(boolean z) {
        if (z && !this.f4158f) {
            i();
        }
        return z;
    }

    @WorkerThread
    static SharedPreferencesQueue b(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        SharedPreferencesQueue sharedPreferencesQueue = new SharedPreferencesQueue(sharedPreferences, str, str2, executor);
        sharedPreferencesQueue.c();
        return sharedPreferencesQueue;
    }

    @WorkerThread
    private void c() {
        synchronized (this.f4156d) {
            this.f4156d.clear();
            String string = this.a.getString(this.b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.c)) {
                String[] strArrSplit = string.split(this.c, -1);
                if (strArrSplit.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : strArrSplit) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f4156d.add(str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void h() {
        synchronized (this.f4156d) {
            this.a.edit().putString(this.b, g()).commit();
        }
    }

    private void i() {
        this.f4157e.execute(new Runnable() { // from class: com.google.firebase.messaging.w
            @Override // java.lang.Runnable
            public final void run() {
                this.a.h();
            }
        });
    }

    @Nullable
    public String e() {
        String strPeek;
        synchronized (this.f4156d) {
            strPeek = this.f4156d.peek();
        }
        return strPeek;
    }

    public boolean f(@Nullable Object obj) {
        boolean zA;
        synchronized (this.f4156d) {
            zA = a(this.f4156d.remove(obj));
        }
        return zA;
    }

    @NonNull
    @GuardedBy("internalQueue")
    public String g() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f4156d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.c);
        }
        return sb.toString();
    }
}
