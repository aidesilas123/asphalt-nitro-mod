package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.e;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class LogEvent {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract LogEvent a();

        @NonNull
        public abstract a b(@Nullable Integer num);

        @NonNull
        public abstract a c(long j);

        @NonNull
        public abstract a d(long j);

        @NonNull
        public abstract a e(@Nullable NetworkConnectionInfo networkConnectionInfo);

        @NonNull
        abstract a f(@Nullable byte[] bArr);

        @NonNull
        abstract a g(@Nullable String str);

        @NonNull
        public abstract a h(long j);
    }

    private static a a() {
        return new e.b();
    }

    @NonNull
    public static a jsonBuilder(@NonNull String str) {
        return a().g(str);
    }

    @NonNull
    public static a protoBuilder(@NonNull byte[] bArr) {
        return a().f(bArr);
    }

    @Nullable
    public abstract Integer b();

    public abstract long c();

    public abstract long d();

    @Nullable
    public abstract NetworkConnectionInfo e();

    @Nullable
    public abstract byte[] f();

    @Nullable
    public abstract String g();

    public abstract long h();
}
