package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.d;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class ClientInfo {

    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2961d;

        ClientType(int i) {
            this.f2961d = i;
        }
    }

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract ClientInfo a();

        @NonNull
        public abstract a b(@Nullable AndroidClientInfo androidClientInfo);

        @NonNull
        public abstract a c(@Nullable ClientType clientType);
    }

    @NonNull
    public static a builder() {
        return new d.b();
    }

    @Nullable
    public abstract AndroidClientInfo a();

    @Nullable
    public abstract ClientType b();
}
