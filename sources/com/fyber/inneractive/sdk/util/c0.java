package com.fyber.inneractive.sdk.util;

/* JADX INFO: loaded from: classes2.dex */
public class c0 {
    public transient a[] a;
    public transient int b;
    public int c;

    public static class a {
        public int a;
        public Object b;
        public a c;

        public a(int i, int i2, Object obj, a aVar) {
            this.a = i;
            this.b = obj;
            this.c = aVar;
        }
    }

    public c0() {
        this(20, 0.75f);
    }

    public c0(int i, float f2) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        if (f2 > 0.0f) {
            i = i == 0 ? 1 : i;
            this.a = new a[i];
            this.c = (int) (i * f2);
        } else {
            throw new IllegalArgumentException("Illegal Load: " + f2);
        }
    }
}
