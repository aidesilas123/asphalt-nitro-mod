package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* JADX INFO: compiled from: AutoValue_LogRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class f extends LogRequest {
    private final long a;
    private final long b;
    private final ClientInfo c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f3002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<LogEvent> f3004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final QosTier f3005g;

    /* JADX INFO: compiled from: AutoValue_LogRequest.java */
    static final class b extends LogRequest.a {
        private Long a;
        private Long b;
        private ClientInfo c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f3006d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f3007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<LogEvent> f3008f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private QosTier f3009g;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest a() {
            String str = "";
            if (this.a == null) {
                str = " requestTimeMs";
            }
            if (this.b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new f(this.a.longValue(), this.b.longValue(), this.c, this.f3006d, this.f3007e, this.f3008f, this.f3009g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest.a b(@Nullable ClientInfo clientInfo) {
            this.c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest.a c(@Nullable List<LogEvent> list) {
            this.f3008f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        LogRequest.a d(@Nullable Integer num) {
            this.f3006d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        LogRequest.a e(@Nullable String str) {
            this.f3007e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest.a f(@Nullable QosTier qosTier) {
            this.f3009g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest.a g(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.a
        public LogRequest.a h(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    private f(long j, long j2, @Nullable ClientInfo clientInfo, @Nullable Integer num, @Nullable String str, @Nullable List<LogEvent> list, @Nullable QosTier qosTier) {
        this.a = j;
        this.b = j2;
        this.c = clientInfo;
        this.f3002d = num;
        this.f3003e = str;
        this.f3004f = list;
        this.f3005g = qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public ClientInfo a() {
        return this.c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    @Encodable.Field
    public List<LogEvent> b() {
        return this.f3004f;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public Integer c() {
        return this.f3002d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public String d() {
        return this.f3003e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public QosTier e() {
        return this.f3005g;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<LogEvent> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogRequest)) {
            return false;
        }
        LogRequest logRequest = (LogRequest) obj;
        if (this.a == logRequest.f() && this.b == logRequest.g() && ((clientInfo = this.c) != null ? clientInfo.equals(logRequest.a()) : logRequest.a() == null) && ((num = this.f3002d) != null ? num.equals(logRequest.c()) : logRequest.c() == null) && ((str = this.f3003e) != null ? str.equals(logRequest.d()) : logRequest.d() == null) && ((list = this.f3004f) != null ? list.equals(logRequest.b()) : logRequest.b() == null)) {
            QosTier qosTier = this.f3005g;
            if (qosTier == null) {
                if (logRequest.e() == null) {
                    return true;
                }
            } else if (qosTier.equals(logRequest.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long f() {
        return this.a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long g() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        ClientInfo clientInfo = this.c;
        int iHashCode = (i ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f3002d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f3003e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<LogEvent> list = this.f3004f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f3005g;
        return iHashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.c + ", logSource=" + this.f3002d + ", logSourceName=" + this.f3003e + ", logEvents=" + this.f3004f + ", qosTier=" + this.f3005g + "}";
    }
}
