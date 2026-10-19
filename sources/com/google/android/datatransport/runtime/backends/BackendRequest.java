package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.a;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class BackendRequest {

    @AutoValue.Builder
    public static abstract class a {
        public abstract BackendRequest a();

        public abstract a b(Iterable<EventInternal> iterable);

        public abstract a c(@Nullable byte[] bArr);
    }

    public static a builder() {
        return new a.b();
    }

    public static BackendRequest create(Iterable<EventInternal> iterable) {
        return builder().b(iterable).a();
    }

    public abstract Iterable<EventInternal> a();

    @Nullable
    public abstract byte[] b();
}
