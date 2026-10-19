package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ShapePath.java */
/* JADX INFO: loaded from: classes3.dex */
public class k {

    @Deprecated
    public float a;

    @Deprecated
    public float b;

    @Deprecated
    public float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public float f3401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public float f3402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public float f3403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<f> f3404g = new ArrayList();
    private final List<g> h = new ArrayList();
    private boolean i;

    /* JADX INFO: compiled from: ShapePath.java */
    class a extends g {
        final /* synthetic */ List b;
        final /* synthetic */ Matrix c;

        a(List list, Matrix matrix) {
            this.b = list;
            this.c = matrix;
        }

        @Override // com.google.android.material.shape.k.g
        public void a(Matrix matrix, com.google.android.material.shadow.a aVar, int i, Canvas canvas) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.c, aVar, i, canvas);
            }
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static class b extends g {
        private final d b;

        public b(d dVar) {
            this.b = dVar;
        }

        @Override // com.google.android.material.shape.k.g
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.a aVar, int i, @NonNull Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.b.k(), this.b.o(), this.b.l(), this.b.j()), i, this.b.m(), this.b.n());
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static class c extends g {
        private final e b;
        private final float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f3406d;

        public c(e eVar, float f2, float f3) {
            this.b = eVar;
            this.c = f2;
            this.f3406d = f3;
        }

        @Override // com.google.android.material.shape.k.g
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.a aVar, int i, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.b.c - this.f3406d, this.b.b - this.c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.c, this.f3406d);
            matrix2.preRotate(c());
            aVar.b(canvas, matrix2, rectF, i);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.b.c - this.f3406d) / (this.b.b - this.c)));
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class d extends f {
        private static final RectF b = new RectF();

        @Deprecated
        public float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f3407d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public float f3408e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Deprecated
        public float f3409f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Deprecated
        public float f3410g;

        @Deprecated
        public float h;

        public d(float f2, float f3, float f4, float f5) {
            q(f2);
            u(f3);
            r(f4);
            p(f5);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f3409f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f3408e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f3410g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f3407d;
        }

        private void p(float f2) {
            this.f3409f = f2;
        }

        private void q(float f2) {
            this.c = f2;
        }

        private void r(float f2) {
            this.f3408e = f2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f2) {
            this.f3410g = f2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f2) {
            this.h = f2;
        }

        private void u(float f2) {
            this.f3407d = f2;
        }

        @Override // com.google.android.material.shape.k.f
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = b;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class e extends f {
        private float b;
        private float c;

        @Override // com.google.android.material.shape.k.f
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.b, this.c);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static abstract class f {
        protected final Matrix a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* JADX INFO: compiled from: ShapePath.java */
    static abstract class g {
        static final Matrix a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, com.google.android.material.shadow.a aVar, int i, Canvas canvas);

        public final void b(com.google.android.material.shadow.a aVar, int i, Canvas canvas) {
            a(a, aVar, i, canvas);
        }
    }

    public k() {
        n(0.0f, 0.0f);
    }

    private void b(float f2) {
        if (g() == f2) {
            return;
        }
        float fG = ((f2 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.h.add(new b(dVar));
        p(f2);
    }

    private void c(g gVar, float f2, float f3) {
        b(f2);
        this.h.add(gVar);
        p(f3);
    }

    private float g() {
        return this.f3402e;
    }

    private float h() {
        return this.f3403f;
    }

    private void p(float f2) {
        this.f3402e = f2;
    }

    private void q(float f2) {
        this.f3403f = f2;
    }

    private void r(float f2) {
        this.c = f2;
    }

    private void s(float f2) {
        this.f3401d = f2;
    }

    private void t(float f2) {
        this.a = f2;
    }

    private void u(float f2) {
        this.b = f2;
    }

    public void a(float f2, float f3, float f4, float f5, float f6, float f7) {
        d dVar = new d(f2, f3, f4, f5);
        dVar.s(f6);
        dVar.t(f7);
        this.f3404g.add(dVar);
        b bVar = new b(dVar);
        float f8 = f6 + f7;
        boolean z = f7 < 0.0f;
        if (z) {
            f6 = (f6 + 180.0f) % 360.0f;
        }
        c(bVar, f6, z ? (180.0f + f8) % 360.0f : f8);
        double d2 = f8;
        r(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d2)))));
        s(((f3 + f5) * 0.5f) + (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d2)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f3404g.size();
        for (int i = 0; i < size; i++) {
            this.f3404g.get(i).a(matrix, path);
        }
    }

    boolean e() {
        return this.i;
    }

    @NonNull
    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.h), new Matrix(matrix));
    }

    float i() {
        return this.c;
    }

    float j() {
        return this.f3401d;
    }

    float k() {
        return this.a;
    }

    float l() {
        return this.b;
    }

    public void m(float f2, float f3) {
        e eVar = new e();
        eVar.b = f2;
        eVar.c = f3;
        this.f3404g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f2);
        s(f3);
    }

    public void n(float f2, float f3) {
        o(f2, f3, 270.0f, 0.0f);
    }

    public void o(float f2, float f3, float f4, float f5) {
        t(f2);
        u(f3);
        r(f2);
        s(f3);
        p(f4);
        q((f4 + f5) % 360.0f);
        this.f3404g.clear();
        this.h.clear();
        this.i = false;
    }
}
