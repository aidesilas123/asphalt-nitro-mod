package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_BackendRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends BackendRequest {
    private final Iterable<EventInternal> a;
    private final byte[] b;

    /* JADX INFO: compiled from: AutoValue_BackendRequest.java */
    static final class b extends BackendRequest.a {
        private Iterable<EventInternal> a;
        private byte[] b;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.a
        public BackendRequest a() {
            String str = "";
            if (this.a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.a, this.b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.a
        public BackendRequest.a b(Iterable<EventInternal> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.a
        public BackendRequest.a c(@Nullable byte[] bArr) {
            this.b = bArr;
            return this;
        }
    }

    private a(Iterable<EventInternal> iterable, @Nullable byte[] bArr) {
        this.a = iterable;
        this.b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public Iterable<EventInternal> a() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    @Nullable
    public byte[] b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendRequest)) {
            return false;
        }
        BackendRequest backendRequest = (BackendRequest) obj;
        if (this.a.equals(backendRequest.a())) {
            if (Arrays.equals(this.b, backendRequest instanceof a ? ((a) backendRequest).b : backendRequest.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.a + ", extras=" + Arrays.toString(this.b) + "}";
    }
}
