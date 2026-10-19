package com.google.common.cache;

import com.google.common.base.m;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
final class LongAddables {
    private static final m<f> a;

    class a implements m<f> {
        a() {
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f get() {
            return new g();
        }
    }

    class b implements m<f> {
        b() {
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f get() {
            return new c(null);
        }
    }

    private static final class c extends AtomicLong implements f {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    static {
        m<f> bVar;
        try {
            new g();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        a = bVar;
    }

    LongAddables() {
    }

    public static f create() {
        return a.get();
    }
}
