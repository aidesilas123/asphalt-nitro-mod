package com.google.common.cache;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.json.b4;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class CacheBuilderSpec {
    private static final Splitter a = Splitter.on(',').k();
    private static final Splitter b = Splitter.on(b4.R).k();
    private static final ImmutableMap<String, m> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Integer f3511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Long f3512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Long f3513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Integer f3514g;
    LocalCache$Strength h;
    LocalCache$Strength i;
    Boolean j;
    long k;
    TimeUnit l;
    long m;
    TimeUnit n;
    long o;
    TimeUnit p;
    private final String q;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LocalCache$Strength.values().length];
            a = iArr;
            try {
                iArr[LocalCache$Strength.WEAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[LocalCache$Strength.SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static class b extends d {
        b() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.d
        protected void b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.n == null, "expireAfterAccess already set");
            cacheBuilderSpec.m = j;
            cacheBuilderSpec.n = timeUnit;
        }
    }

    static class c extends f {
        c() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.f
        protected void b(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f3514g;
            Preconditions.checkArgument(num == null, "concurrency level was already set to ", num);
            cacheBuilderSpec.f3514g = Integer.valueOf(i);
        }
    }

    static abstract class d implements m {
        d() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            TimeUnit timeUnit;
            if (Strings.isNullOrEmpty(str2)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
            try {
                char cCharAt = str2.charAt(str2.length() - 1);
                if (cCharAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (cCharAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (cCharAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else {
                    if (cCharAt != 's') {
                        throw new IllegalArgumentException(CacheBuilderSpec.c("key %s invalid unit: was %s, must end with one of [dhms]", str, str2));
                    }
                    timeUnit = TimeUnit.SECONDS;
                }
                b(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(CacheBuilderSpec.c("key %s value set to %s, must be integer", str, str2));
            }
        }

        protected abstract void b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);
    }

    static class e extends f {
        e() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.f
        protected void b(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f3511d;
            Preconditions.checkArgument(num == null, "initial capacity was already set to ", num);
            cacheBuilderSpec.f3511d = Integer.valueOf(i);
        }
    }

    static abstract class f implements m {
        f() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    b(cacheBuilderSpec, Integer.parseInt(str2));
                } catch (NumberFormatException e2) {
                    throw new IllegalArgumentException(CacheBuilderSpec.c("key %s value set to %s, must be integer", str, str2), e2);
                }
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        protected abstract void b(CacheBuilderSpec cacheBuilderSpec, int i);
    }

    static class g implements m {
        private final LocalCache$Strength a;

        public g(LocalCache$Strength localCache$Strength) {
            this.a = localCache$Strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            LocalCache$Strength localCache$Strength = cacheBuilderSpec.h;
            Preconditions.checkArgument(localCache$Strength == null, "%s was already set to %s", str, localCache$Strength);
            cacheBuilderSpec.h = this.a;
        }
    }

    static abstract class h implements m {
        h() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    b(cacheBuilderSpec, Long.parseLong(str2));
                } catch (NumberFormatException e2) {
                    throw new IllegalArgumentException(CacheBuilderSpec.c("key %s value set to %s, must be integer", str, str2), e2);
                }
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        protected abstract void b(CacheBuilderSpec cacheBuilderSpec, long j);
    }

    static class i extends h {
        i() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.h
        protected void b(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f3512e;
            Preconditions.checkArgument(l == null, "maximum size was already set to ", l);
            Long l2 = cacheBuilderSpec.f3513f;
            Preconditions.checkArgument(l2 == null, "maximum weight was already set to ", l2);
            cacheBuilderSpec.f3512e = Long.valueOf(j);
        }
    }

    static class j extends h {
        j() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.h
        protected void b(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f3513f;
            Preconditions.checkArgument(l == null, "maximum weight was already set to ", l);
            Long l2 = cacheBuilderSpec.f3512e;
            Preconditions.checkArgument(l2 == null, "maximum size was already set to ", l2);
            cacheBuilderSpec.f3513f = Long.valueOf(j);
        }
    }

    static class k implements m {
        k() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument(str2 == null, "recordStats does not take values");
            Preconditions.checkArgument(cacheBuilderSpec.j == null, "recordStats already set");
            cacheBuilderSpec.j = Boolean.TRUE;
        }
    }

    static class l extends d {
        l() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.d
        protected void b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.p == null, "refreshAfterWrite already set");
            cacheBuilderSpec.o = j;
            cacheBuilderSpec.p = timeUnit;
        }
    }

    private interface m {
        void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2);
    }

    static class n implements m {
        private final LocalCache$Strength a;

        public n(LocalCache$Strength localCache$Strength) {
            this.a = localCache$Strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.m
        public void a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            LocalCache$Strength localCache$Strength = cacheBuilderSpec.i;
            Preconditions.checkArgument(localCache$Strength == null, "%s was already set to %s", str, localCache$Strength);
            cacheBuilderSpec.i = this.a;
        }
    }

    static class o extends d {
        o() {
        }

        @Override // com.google.common.cache.CacheBuilderSpec.d
        protected void b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.l == null, "expireAfterWrite already set");
            cacheBuilderSpec.k = j;
            cacheBuilderSpec.l = timeUnit;
        }
    }

    static {
        ImmutableMap.b bVarG = ImmutableMap.builder().g("initialCapacity", new e()).g("maximumSize", new i()).g("maximumWeight", new j()).g("concurrencyLevel", new c());
        LocalCache$Strength localCache$Strength = LocalCache$Strength.WEAK;
        c = bVarG.g("weakKeys", new g(localCache$Strength)).g("softValues", new n(LocalCache$Strength.SOFT)).g("weakValues", new n(localCache$Strength)).g("recordStats", new k()).g("expireAfterAccess", new b()).g("expireAfterWrite", new o()).g("refreshAfterWrite", new l()).g("refreshInterval", new l()).d();
    }

    private CacheBuilderSpec(String str) {
        this.q = str;
    }

    private static Long b(long j2, TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static CacheBuilderSpec disableCaching() {
        return parse("maximumSize=0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CacheBuilderSpec parse(String str) {
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str2 : a.h(str)) {
                ImmutableList immutableListCopyOf = ImmutableList.copyOf(b.h(str2));
                Preconditions.checkArgument(!immutableListCopyOf.isEmpty(), "blank key-value pair");
                Preconditions.checkArgument(immutableListCopyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) immutableListCopyOf.get(0);
                m mVar = c.get(str3);
                Preconditions.checkArgument(mVar != null, "unknown key %s", str3);
                mVar.a(cacheBuilderSpec, str3, immutableListCopyOf.size() == 1 ? null : (String) immutableListCopyOf.get(1));
            }
        }
        return cacheBuilderSpec;
    }

    CacheBuilder<Object, Object> d() {
        CacheBuilder<Object, Object> cacheBuilderNewBuilder = CacheBuilder.newBuilder();
        Integer num = this.f3511d;
        if (num != null) {
            cacheBuilderNewBuilder.d(num.intValue());
        }
        Long l2 = this.f3512e;
        if (l2 != null) {
            cacheBuilderNewBuilder.f(l2.longValue());
        }
        Long l3 = this.f3513f;
        if (l3 != null) {
            cacheBuilderNewBuilder.g(l3.longValue());
        }
        Integer num2 = this.f3514g;
        if (num2 != null) {
            cacheBuilderNewBuilder.a(num2.intValue());
        }
        LocalCache$Strength localCache$Strength = this.h;
        if (localCache$Strength != null) {
            if (a.a[localCache$Strength.ordinal()] != 1) {
                throw new AssertionError();
            }
            cacheBuilderNewBuilder.m();
        }
        LocalCache$Strength localCache$Strength2 = this.i;
        if (localCache$Strength2 != null) {
            int i2 = a.a[localCache$Strength2.ordinal()];
            if (i2 == 1) {
                cacheBuilderNewBuilder.n();
            } else {
                if (i2 != 2) {
                    throw new AssertionError();
                }
                cacheBuilderNewBuilder.l();
            }
        }
        Boolean bool = this.j;
        if (bool != null && bool.booleanValue()) {
            cacheBuilderNewBuilder.h();
        }
        TimeUnit timeUnit = this.l;
        if (timeUnit != null) {
            cacheBuilderNewBuilder.c(this.k, timeUnit);
        }
        TimeUnit timeUnit2 = this.n;
        if (timeUnit2 != null) {
            cacheBuilderNewBuilder.b(this.m, timeUnit2);
        }
        TimeUnit timeUnit3 = this.p;
        if (timeUnit3 != null) {
            cacheBuilderNewBuilder.i(this.o, timeUnit3);
        }
        return cacheBuilderNewBuilder;
    }

    public String e() {
        return this.q;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        return Objects.equal(this.f3511d, cacheBuilderSpec.f3511d) && Objects.equal(this.f3512e, cacheBuilderSpec.f3512e) && Objects.equal(this.f3513f, cacheBuilderSpec.f3513f) && Objects.equal(this.f3514g, cacheBuilderSpec.f3514g) && Objects.equal(this.h, cacheBuilderSpec.h) && Objects.equal(this.i, cacheBuilderSpec.i) && Objects.equal(this.j, cacheBuilderSpec.j) && Objects.equal(b(this.k, this.l), b(cacheBuilderSpec.k, cacheBuilderSpec.l)) && Objects.equal(b(this.m, this.n), b(cacheBuilderSpec.m, cacheBuilderSpec.n)) && Objects.equal(b(this.o, this.p), b(cacheBuilderSpec.o, cacheBuilderSpec.p));
    }

    public int hashCode() {
        return Objects.hashCode(this.f3511d, this.f3512e, this.f3513f, this.f3514g, this.h, this.i, this.j, b(this.k, this.l), b(this.m, this.n), b(this.o, this.p));
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).j(e()).toString();
    }
}
