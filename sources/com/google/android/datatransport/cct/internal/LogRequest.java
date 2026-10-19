package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.f;
import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class LogRequest {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract LogRequest a();

        @NonNull
        public abstract a b(@Nullable ClientInfo clientInfo);

        @NonNull
        public abstract a c(@Nullable List<LogEvent> list);

        @NonNull
        abstract a d(@Nullable Integer num);

        @NonNull
        abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable QosTier qosTier);

        @NonNull
        public abstract a g(long j);

        @NonNull
        public abstract a h(long j);

        @NonNull
        public a i(int i) {
            return d(Integer.valueOf(i));
        }

        @NonNull
        public a j(@NonNull String str) {
            return e(str);
        }
    }

    @NonNull
    public static a builder() {
        return new f.b();
    }

    @Nullable
    public abstract ClientInfo a();

    @Nullable
    @Encodable.Field
    public abstract List<LogEvent> b();

    @Nullable
    public abstract Integer c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract QosTier e();

    public abstract long f();

    public abstract long g();
}
