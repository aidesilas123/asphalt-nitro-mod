package com.google.android.datatransport.runtime.firebase.transport;

import com.google.android.datatransport.runtime.ProtoEncoderDoNotUse;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ClientMetrics {
    private static final ClientMetrics a = new a().b();
    private final TimeWindow b;
    private final List<LogSourceMetrics> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GlobalMetrics f3033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3034e;

    public static final class a {
        private TimeWindow a = null;
        private List<LogSourceMetrics> b = new ArrayList();
        private GlobalMetrics c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f3035d = "";

        a() {
        }

        public a a(LogSourceMetrics logSourceMetrics) {
            this.b.add(logSourceMetrics);
            return this;
        }

        public ClientMetrics b() {
            return new ClientMetrics(this.a, Collections.unmodifiableList(this.b), this.c, this.f3035d);
        }

        public a c(String str) {
            this.f3035d = str;
            return this;
        }

        public a d(GlobalMetrics globalMetrics) {
            this.c = globalMetrics;
            return this;
        }

        public a e(TimeWindow timeWindow) {
            this.a = timeWindow;
            return this;
        }
    }

    ClientMetrics(TimeWindow timeWindow, List<LogSourceMetrics> list, GlobalMetrics globalMetrics, String str) {
        this.b = timeWindow;
        this.c = list;
        this.f3033d = globalMetrics;
        this.f3034e = str;
    }

    public static ClientMetrics getDefaultInstance() {
        return a;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 4)
    public String a() {
        return this.f3034e;
    }

    @Protobuf(tag = 3)
    @Encodable.Field
    public GlobalMetrics b() {
        return this.f3033d;
    }

    @Protobuf(tag = 2)
    @Encodable.Field
    public List<LogSourceMetrics> c() {
        return this.c;
    }

    @Protobuf(tag = 1)
    @Encodable.Field
    public TimeWindow d() {
        return this.b;
    }

    public byte[] e() {
        return ProtoEncoderDoNotUse.encode(this);
    }
}
