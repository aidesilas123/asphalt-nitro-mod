package com.fyber.inneractive.sdk.player.exoplayer2.util;

import android.util.Pair;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static final byte[] a = {0, 0, 0, 1};
    public static final int[] b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    public static final int[] c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static int a(j jVar) {
        int iA = jVar.a(4);
        if (iA == 15) {
            return jVar.a(24);
        }
        a.a(iA < 13);
        return b[iA];
    }

    public static Pair<Integer, Integer> a(byte[] bArr) {
        j jVar = new j(bArr, bArr.length);
        int iA = jVar.a(5);
        if (iA == 31) {
            iA = jVar.a(6) + 32;
        }
        int iA2 = a(jVar);
        int iA3 = jVar.a(4);
        if (iA == 5 || iA == 29) {
            iA2 = a(jVar);
            int iA4 = jVar.a(5);
            if (iA4 == 31) {
                iA4 = jVar.a(6) + 32;
            }
            if (iA4 == 22) {
                iA3 = jVar.a(4);
            }
        }
        int i = c[iA3];
        a.a(i != -1);
        return Pair.create(Integer.valueOf(iA2), Integer.valueOf(i));
    }
}
