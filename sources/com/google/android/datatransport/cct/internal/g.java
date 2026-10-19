package com.google.android.datatransport.cct.internal;

/* JADX INFO: compiled from: AutoValue_LogResponse.java */
/* JADX INFO: loaded from: classes2.dex */
final class g extends LogResponse {
    private final long a;

    g(long j) {
        this.a = j;
    }

    @Override // com.google.android.datatransport.cct.internal.LogResponse
    public long b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof LogResponse) && this.a == ((LogResponse) obj).b();
    }

    public int hashCode() {
        long j = this.a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.a + "}";
    }
}
