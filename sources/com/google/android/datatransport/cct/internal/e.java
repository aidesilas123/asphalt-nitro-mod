package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.LogEvent;
import java.util.Arrays;

/* JADX INFO: compiled from: AutoValue_LogEvent.java */
/* JADX INFO: loaded from: classes2.dex */
final class e extends LogEvent {
    private final long a;
    private final Integer b;
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f2994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f2996f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final NetworkConnectionInfo f2997g;

    /* JADX INFO: compiled from: AutoValue_LogEvent.java */
    static final class b extends LogEvent.a {
        private Long a;
        private Integer b;
        private Long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f2998d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2999e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f3000f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private NetworkConnectionInfo f3001g;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent a() {
            String str = "";
            if (this.a == null) {
                str = " eventTimeMs";
            }
            if (this.c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f3000f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new e(this.a.longValue(), this.b, this.c.longValue(), this.f2998d, this.f2999e, this.f3000f.longValue(), this.f3001g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent.a b(@Nullable Integer num) {
            this.b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent.a c(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent.a d(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent.a e(@Nullable NetworkConnectionInfo networkConnectionInfo) {
            this.f3001g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        LogEvent.a f(@Nullable byte[] bArr) {
            this.f2998d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        LogEvent.a g(@Nullable String str) {
            this.f2999e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.a
        public LogEvent.a h(long j) {
            this.f3000f = Long.valueOf(j);
            return this;
        }
    }

    private e(long j, @Nullable Integer num, long j2, @Nullable byte[] bArr, @Nullable String str, long j3, @Nullable NetworkConnectionInfo networkConnectionInfo) {
        this.a = j;
        this.b = num;
        this.c = j2;
        this.f2994d = bArr;
        this.f2995e = str;
        this.f2996f = j3;
        this.f2997g = networkConnectionInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public Integer b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long c() {
        return this.a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long d() {
        return this.c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public NetworkConnectionInfo e() {
        return this.f2997g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogEvent)) {
            return false;
        }
        LogEvent logEvent = (LogEvent) obj;
        if (this.a == logEvent.c() && ((num = this.b) != null ? num.equals(logEvent.b()) : logEvent.b() == null) && this.c == logEvent.d()) {
            if (Arrays.equals(this.f2994d, logEvent instanceof e ? ((e) logEvent).f2994d : logEvent.f()) && ((str = this.f2995e) != null ? str.equals(logEvent.g()) : logEvent.g() == null) && this.f2996f == logEvent.h()) {
                NetworkConnectionInfo networkConnectionInfo = this.f2997g;
                if (networkConnectionInfo == null) {
                    if (logEvent.e() == null) {
                        return true;
                    }
                } else if (networkConnectionInfo.equals(logEvent.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public byte[] f() {
        return this.f2994d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public String g() {
        return this.f2995e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long h() {
        return this.f2996f;
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j2 = this.c;
        int iHashCode2 = (((((i ^ iHashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f2994d)) * 1000003;
        String str = this.f2995e;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f2996f;
        int i2 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f2997g;
        return i2 ^ (networkConnectionInfo != null ? networkConnectionInfo.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", eventUptimeMs=" + this.c + ", sourceExtension=" + Arrays.toString(this.f2994d) + ", sourceExtensionJsonProto3=" + this.f2995e + ", timezoneOffsetSeconds=" + this.f2996f + ", networkConnectionInfo=" + this.f2997g + "}";
    }
}
