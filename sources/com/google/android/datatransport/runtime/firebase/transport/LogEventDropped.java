package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.ProtoEnum;
import com.google.firebase.encoders.proto.Protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class LogEventDropped {
    private static final LogEventDropped a = new a().a();
    private final long b;
    private final Reason c;

    public enum Reason implements ProtoEnum {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int i;

        Reason(int i) {
            this.i = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public int getNumber() {
            return this.i;
        }
    }

    public static final class a {
        private long a = 0;
        private Reason b = Reason.REASON_UNKNOWN;

        a() {
        }

        public LogEventDropped a() {
            return new LogEventDropped(this.a, this.b);
        }

        public a b(long j) {
            this.a = j;
            return this;
        }

        public a c(Reason reason) {
            this.b = reason;
            return this;
        }
    }

    LogEventDropped(long j, Reason reason) {
        this.b = j;
        this.c = reason;
    }

    public static LogEventDropped getDefaultInstance() {
        return a;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.b;
    }

    @Protobuf(tag = 3)
    public Reason b() {
        return this.c;
    }
}
