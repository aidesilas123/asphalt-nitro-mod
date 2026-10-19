package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.runtime.SendRequest;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_SendRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class d extends SendRequest {
    private final TransportContext a;
    private final String b;
    private final Event<?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.b<?, byte[]> f3029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Encoding f3030e;

    /* JADX INFO: compiled from: AutoValue_SendRequest.java */
    static final class b extends SendRequest.a {
        private TransportContext a;
        private String b;
        private Event<?> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.datatransport.b<?, byte[]> f3031d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Encoding f3032e;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        public SendRequest a() {
            String str = "";
            if (this.a == null) {
                str = " transportContext";
            }
            if (this.b == null) {
                str = str + " transportName";
            }
            if (this.c == null) {
                str = str + " event";
            }
            if (this.f3031d == null) {
                str = str + " transformer";
            }
            if (this.f3032e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new d(this.a, this.b, this.c, this.f3031d, this.f3032e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        SendRequest.a b(Encoding encoding) {
            Objects.requireNonNull(encoding, "Null encoding");
            this.f3032e = encoding;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        SendRequest.a c(Event<?> event) {
            Objects.requireNonNull(event, "Null event");
            this.c = event;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        SendRequest.a d(com.google.android.datatransport.b<?, byte[]> bVar) {
            Objects.requireNonNull(bVar, "Null transformer");
            this.f3031d = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        public SendRequest.a e(TransportContext transportContext) {
            Objects.requireNonNull(transportContext, "Null transportContext");
            this.a = transportContext;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.a
        public SendRequest.a f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.b = str;
            return this;
        }
    }

    private d(TransportContext transportContext, String str, Event<?> event, com.google.android.datatransport.b<?, byte[]> bVar, Encoding encoding) {
        this.a = transportContext;
        this.b = str;
        this.c = event;
        this.f3029d = bVar;
        this.f3030e = encoding;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public Encoding a() {
        return this.f3030e;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    Event<?> b() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    com.google.android.datatransport.b<?, byte[]> d() {
        return this.f3029d;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public TransportContext e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SendRequest)) {
            return false;
        }
        SendRequest sendRequest = (SendRequest) obj;
        return this.a.equals(sendRequest.e()) && this.b.equals(sendRequest.f()) && this.c.equals(sendRequest.b()) && this.f3029d.equals(sendRequest.d()) && this.f3030e.equals(sendRequest.a());
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public String f() {
        return this.b;
    }

    public int hashCode() {
        return ((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.f3029d.hashCode()) * 1000003) ^ this.f3030e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.a + ", transportName=" + this.b + ", event=" + this.c + ", transformer=" + this.f3029d + ", encoding=" + this.f3030e + "}";
    }
}
