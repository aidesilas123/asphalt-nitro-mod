package com.google.firebase.analytics.connector;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface AnalyticsConnector {

    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public interface AnalyticsConnectorHandle {
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public interface AnalyticsConnectorListener {
        @KeepForSdk
        void a(int i, @Nullable Bundle bundle);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public static class ConditionalUserProperty {

        @NonNull
        @KeepForSdk
        public String a;

        @NonNull
        @KeepForSdk
        public String b;

        @Nullable
        @KeepForSdk
        public Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        @KeepForSdk
        public String f4035d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @KeepForSdk
        public long f4036e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        @KeepForSdk
        public String f4037f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        @KeepForSdk
        public Bundle f4038g;

        @Nullable
        @KeepForSdk
        public String h;

        @Nullable
        @KeepForSdk
        public Bundle i;

        @KeepForSdk
        public long j;

        @Nullable
        @KeepForSdk
        public String k;

        @Nullable
        @KeepForSdk
        public Bundle l;

        @KeepForSdk
        public long m;

        @KeepForSdk
        public boolean n;

        @KeepForSdk
        public long o;
    }

    @KeepForSdk
    void a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle);

    @KeepForSdk
    void b(@NonNull String str, @NonNull String str2, @NonNull Object obj);
}
