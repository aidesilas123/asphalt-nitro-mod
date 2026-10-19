package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: compiled from: ArrayBasedCharEscaper.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b extends c {
    private final char[][] b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final char f3847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final char f3848e;

    protected b(ArrayBasedEscaperMap arrayBasedEscaperMap, char c, char c2) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        char[][] cArrB = arrayBasedEscaperMap.b();
        this.b = cArrB;
        this.c = cArrB.length;
        if (c2 < c) {
            c2 = 0;
            c = 65535;
        }
        this.f3847d = c;
        this.f3848e = c2;
    }

    protected b(Map<Character, String> map, char c, char c2) {
        this(ArrayBasedEscaperMap.create(map), c, c2);
    }

    @Override // com.google.common.escape.d
    public final String a(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < this.c && this.b[cCharAt] != null) || cCharAt > this.f3848e || cCharAt < this.f3847d) {
                return c(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.c
    protected final char[] b(char c) {
        char[] cArr;
        if (c < this.c && (cArr = this.b[c]) != null) {
            return cArr;
        }
        if (c < this.f3847d || c > this.f3848e) {
            return e(c);
        }
        return null;
    }

    protected abstract char[] e(char c);
}
