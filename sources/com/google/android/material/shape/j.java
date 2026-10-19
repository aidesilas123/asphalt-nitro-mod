package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: RoundedCornerTreatment.java */
/* JADX INFO: loaded from: classes3.dex */
public class j extends d {
    float a = -1.0f;

    @Override // com.google.android.material.shape.d
    public void a(@NonNull k kVar, float f2, float f3, float f4) {
        kVar.o(0.0f, f4 * f3, 180.0f, 180.0f - f2);
        float f5 = f4 * 2.0f * f3;
        kVar.a(0.0f, 0.0f, f5, f5, 180.0f, f2);
    }
}
