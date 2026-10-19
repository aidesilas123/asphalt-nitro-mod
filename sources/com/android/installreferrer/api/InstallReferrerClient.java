package com.android.installreferrer.api;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

/* JADX INFO: loaded from: classes.dex */
public abstract class InstallReferrerClient {

    public static final class b {
        private final Context a;

        private b(Context context) {
            this.a = context;
        }

        @UiThread
        public InstallReferrerClient a() {
            Context context = this.a;
            if (context != null) {
                return new com.android.installreferrer.api.a(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    @UiThread
    public static b newBuilder(@NonNull Context context) {
        return new b(context);
    }

    @UiThread
    public abstract void a();

    @UiThread
    public abstract ReferrerDetails b() throws RemoteException;

    @UiThread
    public abstract void c(@NonNull InstallReferrerStateListener installReferrerStateListener);
}
