package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_EventInternal.java */
/* JADX INFO: loaded from: classes2.dex */
final class c extends EventInternal {
    private final String a;
    private final Integer b;
    private final h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, String> f3025f;

    /* JADX INFO: compiled from: AutoValue_EventInternal.java */
    static final class b extends EventInternal.a {
        private String a;
        private Integer b;
        private h c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f3026d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f3027e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Map<String, String> f3028f;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal d() {
            String str = "";
            if (this.a == null) {
                str = " transportName";
            }
            if (this.c == null) {
                str = str + " encodedPayload";
            }
            if (this.f3026d == null) {
                str = str + " eventMillis";
            }
            if (this.f3027e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f3028f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new c(this.a, this.b, this.c, this.f3026d.longValue(), this.f3027e.longValue(), this.f3028f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        protected Map<String, String> e() {
            Map<String, String> map = this.f3028f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        protected EventInternal.a f(Map<String, String> map) {
            Objects.requireNonNull(map, "Null autoMetadata");
            this.f3028f = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal.a g(Integer num) {
            this.b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal.a h(h hVar) {
            Objects.requireNonNull(hVar, "Null encodedPayload");
            this.c = hVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal.a i(long j) {
            this.f3026d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal.a j(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.a
        public EventInternal.a k(long j) {
            this.f3027e = Long.valueOf(j);
            return this;
        }
    }

    private c(String str, @Nullable Integer num, h hVar, long j, long j2, Map<String, String> map) {
        this.a = str;
        this.b = num;
        this.c = hVar;
        this.f3023d = j;
        this.f3024e = j2;
        this.f3025f = map;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    protected Map<String, String> b() {
        return this.f3025f;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    @Nullable
    public Integer c() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public h d() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public long e() {
        return this.f3023d;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventInternal)) {
            return false;
        }
        EventInternal eventInternal = (EventInternal) obj;
        return this.a.equals(eventInternal.i()) && ((num = this.b) != null ? num.equals(eventInternal.c()) : eventInternal.c() == null) && this.c.equals(eventInternal.d()) && this.f3023d == eventInternal.e() && this.f3024e == eventInternal.j() && this.f3025f.equals(eventInternal.b());
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j = this.f3023d;
        int i = (iHashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f3024e;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f3025f.hashCode();
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public String i() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public long j() {
        return this.f3024e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.a + ", code=" + this.b + ", encodedPayload=" + this.c + ", eventMillis=" + this.f3023d + ", uptimeMillis=" + this.f3024e + ", autoMetadata=" + this.f3025f + "}";
    }
}
