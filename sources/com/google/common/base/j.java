package com.google.common.base;

import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
final class j {
    private static final Logger a = Logger.getLogger(j.class.getName());
    private static final i b = e();

    /* JADX INFO: compiled from: Platform.java */
    private static final class b implements i {
        private b() {
        }

        @Override // com.google.common.base.i
        public CommonPattern a(String str) {
            return new g(Pattern.compile(str));
        }

        @Override // com.google.common.base.i
        public boolean b() {
            return true;
        }
    }

    private j() {
    }

    static CommonPattern a(String str) {
        Preconditions.checkNotNull(str);
        return b.a(str);
    }

    static String b(String str) {
        if (h(str)) {
            return null;
        }
        return str;
    }

    static String c(double d2) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d2));
    }

    static <T extends Enum<T>> Optional<T> d(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = Enums.a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.of(cls.cast(weakReference.get()));
    }

    private static i e() {
        return new b();
    }

    static String f(String str) {
        return str == null ? "" : str;
    }

    static boolean g() {
        return b.b();
    }

    static boolean h(String str) {
        return str == null || str.isEmpty();
    }

    static long i() {
        return System.nanoTime();
    }
}
