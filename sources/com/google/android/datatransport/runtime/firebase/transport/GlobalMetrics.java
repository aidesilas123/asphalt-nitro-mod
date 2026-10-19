package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalMetrics {
    private static final GlobalMetrics a = new a().a();
    private final StorageMetrics b;

    public static final class a {
        private StorageMetrics a = null;

        a() {
        }

        public GlobalMetrics a() {
            return new GlobalMetrics(this.a);
        }

        public a b(StorageMetrics storageMetrics) {
            this.a = storageMetrics;
            return this;
        }
    }

    GlobalMetrics(StorageMetrics storageMetrics) {
        this.b = storageMetrics;
    }

    public static GlobalMetrics getDefaultInstance() {
        return a;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 1)
    @Encodable.Field
    public StorageMetrics a() {
        return this.b;
    }
}
