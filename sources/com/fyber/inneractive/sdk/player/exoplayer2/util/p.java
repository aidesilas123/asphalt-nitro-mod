package com.fyber.inneractive.sdk.player.exoplayer2.util;

import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    public static final Comparator<c> h = new a();
    public static final Comparator<c> i = new b();
    public final int a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2613g;
    public final c[] c = new c[5];
    public final ArrayList<c> b = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2610d = -1;

    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            return cVar.a - cVar2.a;
        }
    }

    public class b implements Comparator<c> {
        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            float f2 = cVar.c;
            float f3 = cVar2.c;
            if (f2 < f3) {
                return -1;
            }
            return f3 < f2 ? 1 : 0;
        }
    }

    public static class c {
        public int a;
        public int b;
        public float c;
    }

    public p(int i2) {
        this.a = i2;
    }
}
