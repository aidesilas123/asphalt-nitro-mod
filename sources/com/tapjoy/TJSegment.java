package com.tapjoy;

import com.tapjoy.internal.m1;

/* JADX INFO: loaded from: classes4.dex */
public enum TJSegment {
    a,
    b,
    c,
    f7813d;

    TJSegment() {
    }

    public static TJSegment valueOf(int i) {
        return i != 0 ? i != 1 ? i != 2 ? f7813d : c : b : a;
    }

    public int e() {
        int i = m1.a[ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i != 2) {
            return i != 3 ? -1 : 2;
        }
        return 1;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(e());
    }
}
