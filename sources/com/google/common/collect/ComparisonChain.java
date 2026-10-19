package com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ComparisonChain {
    private static final ComparisonChain a = new a();
    private static final ComparisonChain b = new b(-1);
    private static final ComparisonChain c = new b(1);

    class a extends ComparisonChain {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain d(Comparable<?> comparable, Comparable<?> comparable2) {
            return f(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public int e() {
            return 0;
        }

        ComparisonChain f(int i) {
            return i < 0 ? ComparisonChain.b : i > 0 ? ComparisonChain.c : ComparisonChain.a;
        }
    }

    private static final class b extends ComparisonChain {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3559d;

        b(int i) {
            super(null);
            this.f3559d = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain d(Comparable<?> comparable, Comparable<?> comparable2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int e() {
            return this.f3559d;
        }
    }

    private ComparisonChain() {
    }

    /* synthetic */ ComparisonChain(a aVar) {
        this();
    }

    public static ComparisonChain start() {
        return a;
    }

    public abstract ComparisonChain d(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract int e();
}
