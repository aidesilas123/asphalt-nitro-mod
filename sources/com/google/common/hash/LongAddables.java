package com.google.common.hash;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
final class LongAddables {
    private static final com.google.common.base.m<p> a;

    class a implements com.google.common.base.m<p> {
        a() {
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p get() {
            return new q();
        }
    }

    class b implements com.google.common.base.m<p> {
        b() {
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p get() {
            return new c(null);
        }
    }

    private static final class c extends AtomicLong implements p {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        @Override // com.google.common.hash.p
        public void a(long j) {
            getAndAdd(j);
        }
    }

    static {
        com.google.common.base.m<p> bVar;
        try {
            new q();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        a = bVar;
    }

    LongAddables() {
    }

    public static p create() {
        return a.get();
    }
}
