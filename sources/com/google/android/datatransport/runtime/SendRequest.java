package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.runtime.d;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
abstract class SendRequest {

    @AutoValue.Builder
    public static abstract class a {
        public abstract SendRequest a();

        abstract a b(Encoding encoding);

        abstract a c(Event<?> event);

        abstract a d(com.google.android.datatransport.b<?, byte[]> bVar);

        public abstract a e(TransportContext transportContext);

        public abstract a f(String str);
    }

    SendRequest() {
    }

    public static a builder() {
        return new d.b();
    }

    public abstract Encoding a();

    abstract Event<?> b();

    public byte[] c() {
        return d().apply(b().b());
    }

    abstract com.google.android.datatransport.b<?, byte[]> d();

    public abstract TransportContext e();

    public abstract String f();
}
