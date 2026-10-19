package com.google.android.datatransport.runtime;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.e;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class TransportContext {

    @AutoValue.Builder
    public static abstract class a {
        public abstract TransportContext a();

        public abstract a b(String str);

        public abstract a c(@Nullable byte[] bArr);

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public abstract a d(Priority priority);
    }

    public static a builder() {
        return new e.b().d(Priority.DEFAULT);
    }

    public abstract String a();

    @Nullable
    public abstract byte[] b();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract Priority c();

    public boolean d() {
        return b() != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public TransportContext e(Priority priority) {
        return builder().b(a()).d(priority).c(b()).a();
    }

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = a();
        objArr[1] = c();
        objArr[2] = b() == null ? "" : Base64.encodeToString(b(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
