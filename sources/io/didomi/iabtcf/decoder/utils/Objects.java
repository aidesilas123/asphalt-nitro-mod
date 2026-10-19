package io.didomi.iabtcf.decoder.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class Objects {
    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static int hashCode(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static <T> T requireNonNull(T t) {
        java.util.Objects.requireNonNull(t);
        return t;
    }

    public static <T> T requireNonNull(T t, String str) {
        java.util.Objects.requireNonNull(t, str);
        return t;
    }
}
