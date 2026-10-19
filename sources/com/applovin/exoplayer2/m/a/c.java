package com.applovin.exoplayer2.m.a;

import android.opengl.Matrix;
import com.applovin.exoplayer2.l.af;

/* JADX INFO: loaded from: classes.dex */
final class c {
    private final af<float[]> afp;
    private boolean afq;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float fSqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / fSqrt;
        fArr[2] = fArr2[8] / fSqrt;
        fArr[8] = (-fArr2[8]) / fSqrt;
        fArr[10] = fArr2[10] / fSqrt;
    }

    public void Y() {
        this.afp.clear();
        this.afq = false;
    }

    public void b(long j, float[] fArr) {
        this.afp.a(j, fArr);
    }
}
