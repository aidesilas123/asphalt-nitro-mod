package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ArrayBasedEscaperMap {
    private static final char[][] a = (char[][]) Array.newInstance((Class<?>) char.class, 0, 0);
    private final char[][] b;

    private ArrayBasedEscaperMap(char[][] cArr) {
        this.b = cArr;
    }

    static char[][] a(Map<Character, String> map) {
        Preconditions.checkNotNull(map);
        if (map.isEmpty()) {
            return a;
        }
        char[][] cArr = new char[((Character) Collections.max(map.keySet())).charValue() + 1][];
        for (Character ch : map.keySet()) {
            cArr[ch.charValue()] = map.get(ch).toCharArray();
        }
        return cArr;
    }

    public static ArrayBasedEscaperMap create(Map<Character, String> map) {
        return new ArrayBasedEscaperMap(a(map));
    }

    char[][] b() {
        return this.b;
    }
}
