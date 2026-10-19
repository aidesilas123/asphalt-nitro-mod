package com.tapjoy.internal;

import com.tapjoy.TJSegment;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class m1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[TJSegment.values().length];
        a = iArr;
        try {
            iArr[TJSegment.a.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[TJSegment.b.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[TJSegment.c.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
