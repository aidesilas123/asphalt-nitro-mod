package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class StorageMetrics {
    private static final StorageMetrics a = new a().a();
    private final long b;
    private final long c;

    public static final class a {
        private long a = 0;
        private long b = 0;

        a() {
        }

        public StorageMetrics a() {
            return new StorageMetrics(this.a, this.b);
        }

        public a b(long j) {
            this.a = j;
            return this;
        }

        public a c(long j) {
            this.b = j;
            return this;
        }
    }

    StorageMetrics(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    public static StorageMetrics getDefaultInstance() {
        return a;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.b;
    }

    @Protobuf(tag = 2)
    public long b() {
        return this.c;
    }
}
