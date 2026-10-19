package com.tapjoy.internal;

import com.tapjoy.TJStatus;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class d6 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[TJStatus.values().length];
        a = iArr;
        try {
            iArr[TJStatus.a.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[TJStatus.b.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
