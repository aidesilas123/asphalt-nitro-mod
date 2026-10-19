package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: OffsetEdgeTreatment.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h extends f {
    private final f a;
    private final float b;

    public h(@NonNull f fVar, float f2) {
        this.a = fVar;
        this.b = f2;
    }

    @Override // com.google.android.material.shape.f
    boolean b() {
        return this.a.b();
    }

    @Override // com.google.android.material.shape.f
    public void d(float f2, float f3, float f4, @NonNull k kVar) {
        this.a.d(f2, f3 - this.b, f4, kVar);
    }
}
