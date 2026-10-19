package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.progressindicator.a;

/* JADX INFO: compiled from: DrawingDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class e<S extends a> {
    S a;
    protected d b;

    public e(S s) {
        this.a = s;
    }

    abstract void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f2);

    abstract void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3, @ColorInt int i);

    abstract void c(@NonNull Canvas canvas, @NonNull Paint paint);

    abstract int d();

    abstract int e();

    protected void f(@NonNull d dVar) {
        this.b = dVar;
    }

    void g(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.a.c();
        a(canvas, f2);
    }
}
