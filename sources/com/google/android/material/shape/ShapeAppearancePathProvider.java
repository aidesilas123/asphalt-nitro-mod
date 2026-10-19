package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* JADX INFO: loaded from: classes3.dex */
public class ShapeAppearancePathProvider {
    private final k[] a = new k[4];
    private final Matrix[] b = new Matrix[4];
    private final Matrix[] c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f3395d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Path f3396e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f3397f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f3398g = new k();
    private final float[] h = new float[2];
    private final float[] i = new float[2];
    private final Path j = new Path();
    private final Path k = new Path();
    private boolean l = true;

    private static class a {
        static final ShapeAppearancePathProvider a = new ShapeAppearancePathProvider();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface b {
        void a(k kVar, Matrix matrix, int i);

        void b(k kVar, Matrix matrix, int i);
    }

    static final class c {

        @NonNull
        public final ShapeAppearanceModel a;

        @NonNull
        public final Path b;

        @NonNull
        public final RectF c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public final b f3399d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f3400e;

        c(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f2, RectF rectF, @Nullable b bVar, Path path) {
            this.f3399d = bVar;
            this.a = shapeAppearanceModel;
            this.f3400e = f2;
            this.c = rectF;
            this.b = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new k();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    private float a(int i) {
        return (i + 1) * 90;
    }

    private void b(@NonNull c cVar, int i) {
        this.h[0] = this.a[i].k();
        this.h[1] = this.a[i].l();
        this.b[i].mapPoints(this.h);
        if (i == 0) {
            Path path = cVar.b;
            float[] fArr = this.h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.b;
            float[] fArr2 = this.h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.a[i].d(this.b[i], cVar.b);
        b bVar = cVar.f3399d;
        if (bVar != null) {
            bVar.a(this.a[i], this.b[i], i);
        }
    }

    private void c(@NonNull c cVar, int i) {
        int i2 = (i + 1) % 4;
        this.h[0] = this.a[i].i();
        this.h[1] = this.a[i].j();
        this.b[i].mapPoints(this.h);
        this.i[0] = this.a[i2].k();
        this.i[1] = this.a[i2].l();
        this.b[i2].mapPoints(this.i);
        float f2 = this.h[0];
        float[] fArr = this.i;
        float fMax = Math.max(((float) Math.hypot(f2 - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float fI = i(cVar.c, i);
        this.f3398g.n(0.0f, 0.0f);
        f fVarJ = j(i, cVar.a);
        fVarJ.d(fMax, fI, cVar.f3400e, this.f3398g);
        this.j.reset();
        this.f3398g.d(this.c[i], this.j);
        if (this.l && Build.VERSION.SDK_INT >= 19 && (fVarJ.b() || k(this.j, i) || k(this.j, i2))) {
            Path path = this.j;
            path.op(path, this.f3397f, Path.Op.DIFFERENCE);
            this.h[0] = this.f3398g.k();
            this.h[1] = this.f3398g.l();
            this.c[i].mapPoints(this.h);
            Path path2 = this.f3396e;
            float[] fArr2 = this.h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f3398g.d(this.c[i], this.f3396e);
        } else {
            this.f3398g.d(this.c[i], cVar.b);
        }
        b bVar = cVar.f3399d;
        if (bVar != null) {
            bVar.b(this.f3398g, this.c[i], i);
        }
    }

    private void f(int i, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private com.google.android.material.shape.c g(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.o() : shapeAppearanceModel.m() : shapeAppearanceModel.e() : shapeAppearanceModel.g();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static ShapeAppearancePathProvider getInstance() {
        return a.a;
    }

    private d h(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.n() : shapeAppearanceModel.l() : shapeAppearanceModel.d() : shapeAppearanceModel.f();
    }

    private float i(@NonNull RectF rectF, int i) {
        float[] fArr = this.h;
        k[] kVarArr = this.a;
        fArr[0] = kVarArr[i].c;
        fArr[1] = kVarArr[i].f3401d;
        this.b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.h[0]) : Math.abs(rectF.centerY() - this.h[1]);
    }

    private f j(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.j() : shapeAppearanceModel.k() : shapeAppearanceModel.i() : shapeAppearanceModel.c();
    }

    @RequiresApi(19)
    private boolean k(Path path, int i) {
        this.k.reset();
        this.a[i].d(this.b[i], this.k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.k.computeBounds(rectF, true);
        path.op(this.k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void l(@NonNull c cVar, int i) {
        h(i, cVar.a).b(this.a[i], 90.0f, cVar.f3400e, cVar.c, g(i, cVar.a));
        float fA = a(i);
        this.b[i].reset();
        f(i, cVar.c, this.f3395d);
        Matrix matrix = this.b[i];
        PointF pointF = this.f3395d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.b[i].preRotate(fA);
    }

    private void m(int i) {
        this.h[0] = this.a[i].i();
        this.h[1] = this.a[i].j();
        this.b[i].mapPoints(this.h);
        float fA = a(i);
        this.c[i].reset();
        Matrix matrix = this.c[i];
        float[] fArr = this.h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.c[i].preRotate(fA);
    }

    public void d(ShapeAppearanceModel shapeAppearanceModel, float f2, RectF rectF, @NonNull Path path) {
        e(shapeAppearanceModel, f2, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void e(ShapeAppearanceModel shapeAppearanceModel, float f2, RectF rectF, b bVar, @NonNull Path path) {
        path.rewind();
        this.f3396e.rewind();
        this.f3397f.rewind();
        this.f3397f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(shapeAppearanceModel, f2, rectF, bVar, path);
        for (int i = 0; i < 4; i++) {
            l(cVar, i);
            m(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            b(cVar, i2);
            c(cVar, i2);
        }
        path.close();
        this.f3396e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f3396e.isEmpty()) {
            return;
        }
        path.op(this.f3396e, Path.Op.UNION);
    }
}
