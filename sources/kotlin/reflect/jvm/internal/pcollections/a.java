package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: compiled from: IntTree.java */
/* JADX INFO: loaded from: classes5.dex */
final class a<V> {
    static final a<Object> a = new a<>();
    private final long b;
    private final V c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<V> f9901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<V> f9902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f9903f;

    private a() {
        this.f9903f = 0;
        this.b = 0L;
        this.c = null;
        this.f9901d = null;
        this.f9902e = null;
    }

    private a(long j, V v, a<V> aVar, a<V> aVar2) {
        this.b = j;
        this.c = v;
        this.f9901d = aVar;
        this.f9902e = aVar2;
        this.f9903f = aVar.f9903f + 1 + aVar2.f9903f;
    }

    private static <V> a<V> c(long j, V v, a<V> aVar, a<V> aVar2) {
        int i = ((a) aVar).f9903f;
        int i2 = ((a) aVar2).f9903f;
        if (i + i2 > 1) {
            if (i >= i2 * 5) {
                a<V> aVar3 = ((a) aVar).f9901d;
                a<V> aVar4 = ((a) aVar).f9902e;
                if (((a) aVar4).f9903f < ((a) aVar3).f9903f * 2) {
                    long j2 = ((a) aVar).b;
                    return new a<>(j2 + j, ((a) aVar).c, aVar3, new a(-j2, v, aVar4.e(((a) aVar4).b + j2), aVar2));
                }
                a<V> aVar5 = ((a) aVar4).f9901d;
                a<V> aVar6 = ((a) aVar4).f9902e;
                long j3 = ((a) aVar4).b;
                long j4 = ((a) aVar).b + j3 + j;
                V v2 = ((a) aVar4).c;
                a aVar7 = new a(-j3, ((a) aVar).c, aVar3, aVar5.e(((a) aVar5).b + j3));
                long j5 = ((a) aVar).b;
                long j6 = ((a) aVar4).b;
                return new a<>(j4, v2, aVar7, new a((-j5) - j6, v, aVar6.e(((a) aVar6).b + j6 + j5), aVar2));
            }
            if (i2 >= i * 5) {
                a<V> aVar8 = ((a) aVar2).f9901d;
                a<V> aVar9 = ((a) aVar2).f9902e;
                if (((a) aVar8).f9903f < ((a) aVar9).f9903f * 2) {
                    long j7 = ((a) aVar2).b;
                    return new a<>(j7 + j, ((a) aVar2).c, new a(-j7, v, aVar, aVar8.e(((a) aVar8).b + j7)), aVar9);
                }
                a<V> aVar10 = ((a) aVar8).f9901d;
                a<V> aVar11 = ((a) aVar8).f9902e;
                long j8 = ((a) aVar8).b;
                long j9 = ((a) aVar2).b;
                long j10 = j8 + j9 + j;
                V v3 = ((a) aVar8).c;
                a aVar12 = new a((-j9) - j8, v, aVar, aVar10.e(((a) aVar10).b + j8 + j9));
                long j11 = ((a) aVar8).b;
                return new a<>(j10, v3, aVar12, new a(-j11, ((a) aVar2).c, aVar11.e(((a) aVar11).b + j11), aVar9));
            }
        }
        return new a<>(j, v, aVar, aVar2);
    }

    private a<V> d(a<V> aVar, a<V> aVar2) {
        return (aVar == this.f9901d && aVar2 == this.f9902e) ? this : c(this.b, this.c, aVar, aVar2);
    }

    private a<V> e(long j) {
        return (this.f9903f == 0 || j == this.b) ? this : new a<>(j, this.c, this.f9901d, this.f9902e);
    }

    V a(long j) {
        if (this.f9903f == 0) {
            return null;
        }
        long j2 = this.b;
        return j < j2 ? this.f9901d.a(j - j2) : j > j2 ? this.f9902e.a(j - j2) : this.c;
    }

    a<V> b(long j, V v) {
        if (this.f9903f == 0) {
            return new a<>(j, v, this, this);
        }
        long j2 = this.b;
        return j < j2 ? d(this.f9901d.b(j - j2, v), this.f9902e) : j > j2 ? d(this.f9901d, this.f9902e.b(j - j2, v)) : v == this.c ? this : new a<>(j, v, this.f9901d, this.f9902e);
    }
}
