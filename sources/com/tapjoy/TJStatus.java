package com.tapjoy;

import com.tapjoy.internal.d6;

/* JADX INFO: loaded from: classes4.dex */
public enum TJStatus {
    a,
    b,
    c;

    TJStatus() {
    }

    public static TJStatus valueOf(int i) {
        return i != 0 ? i != 1 ? c : b : a;
    }

    public int e() {
        int i = d6.a[ordinal()];
        if (i != 1) {
            return i != 2 ? 2 : 1;
        }
        return 0;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(e());
    }
}
