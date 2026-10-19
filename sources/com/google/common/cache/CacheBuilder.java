package com.google.common.cache;

import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.base.m;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class CacheBuilder<K, V> {
    static final m<? extends com.google.common.cache.c> a = Suppliers.ofInstance(new a());
    static final d b = new d(0, 0, 0, 0, 0, 0);
    static final m<com.google.common.cache.c> c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Ticker f3507d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Logger f3508e = Logger.getLogger(CacheBuilder.class.getName());
    j<? super K, ? super V> k;
    LocalCache$Strength l;
    LocalCache$Strength m;
    Equivalence<Object> q;
    Equivalence<Object> r;
    h<? super K, ? super V> s;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f3509f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3510g = -1;
    int h = -1;
    long i = -1;
    long j = -1;
    long n = -1;
    long o = -1;
    long p = -1;
    m<? extends com.google.common.cache.c> t = a;

    enum NullListener implements h<Object, Object> {
        INSTANCE
    }

    enum OneWeigher implements j<Object, Object> {
        INSTANCE
    }

    class a implements com.google.common.cache.c {
        a() {
        }
    }

    class b implements m<com.google.common.cache.c> {
        b() {
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.google.common.cache.c get() {
            return new com.google.common.cache.b();
        }
    }

    class c extends Ticker {
        c() {
        }

        @Override // com.google.common.base.Ticker
        public long a() {
            return 0L;
        }
    }

    private CacheBuilder() {
    }

    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.d().e();
    }

    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    public CacheBuilder<K, V> a(int i) {
        int i2 = this.h;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.h = i;
        return this;
    }

    public CacheBuilder<K, V> b(long j, TimeUnit timeUnit) {
        long j2 = this.o;
        Preconditions.checkState(j2 == -1, "expireAfterAccess was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.o = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> c(long j, TimeUnit timeUnit) {
        long j2 = this.n;
        Preconditions.checkState(j2 == -1, "expireAfterWrite was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.n = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> d(int i) {
        int i2 = this.f3510g;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.f3510g = i;
        return this;
    }

    CacheBuilder<K, V> e() {
        this.f3509f = false;
        return this;
    }

    public CacheBuilder<K, V> f(long j) {
        long j2 = this.i;
        Preconditions.checkState(j2 == -1, "maximum size was already set to %s", j2);
        long j3 = this.j;
        Preconditions.checkState(j3 == -1, "maximum weight was already set to %s", j3);
        Preconditions.checkState(this.k == null, "maximum size can not be combined with weigher");
        Preconditions.checkArgument(j >= 0, "maximum size must not be negative");
        this.i = j;
        return this;
    }

    public CacheBuilder<K, V> g(long j) {
        long j2 = this.j;
        Preconditions.checkState(j2 == -1, "maximum weight was already set to %s", j2);
        long j3 = this.i;
        Preconditions.checkState(j3 == -1, "maximum size was already set to %s", j3);
        Preconditions.checkArgument(j >= 0, "maximum weight must not be negative");
        this.j = j;
        return this;
    }

    public CacheBuilder<K, V> h() {
        this.t = c;
        return this;
    }

    public CacheBuilder<K, V> i(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        long j2 = this.p;
        Preconditions.checkState(j2 == -1, "refresh was already set to %s ns", j2);
        Preconditions.checkArgument(j > 0, "duration must be positive: %s %s", j, timeUnit);
        this.p = timeUnit.toNanos(j);
        return this;
    }

    CacheBuilder<K, V> j(LocalCache$Strength localCache$Strength) {
        LocalCache$Strength localCache$Strength2 = this.l;
        Preconditions.checkState(localCache$Strength2 == null, "Key strength was already set to %s", localCache$Strength2);
        this.l = (LocalCache$Strength) Preconditions.checkNotNull(localCache$Strength);
        return this;
    }

    CacheBuilder<K, V> k(LocalCache$Strength localCache$Strength) {
        LocalCache$Strength localCache$Strength2 = this.m;
        Preconditions.checkState(localCache$Strength2 == null, "Value strength was already set to %s", localCache$Strength2);
        this.m = (LocalCache$Strength) Preconditions.checkNotNull(localCache$Strength);
        return this;
    }

    public CacheBuilder<K, V> l() {
        return k(LocalCache$Strength.SOFT);
    }

    public CacheBuilder<K, V> m() {
        return j(LocalCache$Strength.WEAK);
    }

    public CacheBuilder<K, V> n() {
        return k(LocalCache$Strength.WEAK);
    }

    public String toString() {
        MoreObjects.b stringHelper = MoreObjects.toStringHelper(this);
        int i = this.f3510g;
        if (i != -1) {
            stringHelper.b("initialCapacity", i);
        }
        int i2 = this.h;
        if (i2 != -1) {
            stringHelper.b("concurrencyLevel", i2);
        }
        long j = this.i;
        if (j != -1) {
            stringHelper.c("maximumSize", j);
        }
        long j2 = this.j;
        if (j2 != -1) {
            stringHelper.c("maximumWeight", j2);
        }
        long j3 = this.n;
        if (j3 != -1) {
            StringBuilder sb = new StringBuilder(22);
            sb.append(j3);
            sb.append("ns");
            stringHelper.d("expireAfterWrite", sb.toString());
        }
        long j4 = this.o;
        if (j4 != -1) {
            StringBuilder sb2 = new StringBuilder(22);
            sb2.append(j4);
            sb2.append("ns");
            stringHelper.d("expireAfterAccess", sb2.toString());
        }
        LocalCache$Strength localCache$Strength = this.l;
        if (localCache$Strength != null) {
            stringHelper.d("keyStrength", Ascii.toLowerCase(localCache$Strength.toString()));
        }
        LocalCache$Strength localCache$Strength2 = this.m;
        if (localCache$Strength2 != null) {
            stringHelper.d("valueStrength", Ascii.toLowerCase(localCache$Strength2.toString()));
        }
        if (this.q != null) {
            stringHelper.j("keyEquivalence");
        }
        if (this.r != null) {
            stringHelper.j("valueEquivalence");
        }
        if (this.s != null) {
            stringHelper.j("removalListener");
        }
        return stringHelper.toString();
    }
}
