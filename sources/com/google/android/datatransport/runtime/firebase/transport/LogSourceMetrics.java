package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LogSourceMetrics {
    private static final LogSourceMetrics a = new a().a();
    private final String b;
    private final List<LogEventDropped> c;

    public static final class a {
        private String a = "";
        private List<LogEventDropped> b = new ArrayList();

        a() {
        }

        public LogSourceMetrics a() {
            return new LogSourceMetrics(this.a, Collections.unmodifiableList(this.b));
        }

        public a b(List<LogEventDropped> list) {
            this.b = list;
            return this;
        }

        public a c(String str) {
            this.a = str;
            return this;
        }
    }

    LogSourceMetrics(String str, List<LogEventDropped> list) {
        this.b = str;
        this.c = list;
    }

    public static LogSourceMetrics getDefaultInstance() {
        return a;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 2)
    @Encodable.Field
    public List<LogEventDropped> a() {
        return this.c;
    }

    @Protobuf(tag = 1)
    public String b() {
        return this.b;
    }
}
