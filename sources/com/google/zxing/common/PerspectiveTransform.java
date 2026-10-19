package com.google.zxing.common;

/* JADX INFO: loaded from: classes3.dex */
public final class PerspectiveTransform {
    private final float a;
    private final float b;
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f4322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f4323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f4324g;
    private final float h;
    private final float i;

    private PerspectiveTransform(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.a = f2;
        this.b = f5;
        this.c = f8;
        this.f4321d = f3;
        this.f4322e = f6;
        this.f4323f = f9;
        this.f4324g = f4;
        this.h = f7;
        this.i = f10;
    }

    public static PerspectiveTransform quadrilateralToQuadrilateral(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return squareToQuadrilateral(f10, f11, f12, f13, f14, f15, f16, f17).b(quadrilateralToSquare(f2, f3, f4, f5, f6, f7, f8, f9));
    }

    public static PerspectiveTransform quadrilateralToSquare(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        return squareToQuadrilateral(f2, f3, f4, f5, f6, f7, f8, f9).a();
    }

    public static PerspectiveTransform squareToQuadrilateral(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10 = ((f2 - f4) + f6) - f8;
        float f11 = ((f3 - f5) + f7) - f9;
        if (f10 == 0.0f && f11 == 0.0f) {
            return new PerspectiveTransform(f4 - f2, f6 - f4, f2, f5 - f3, f7 - f5, f3, 0.0f, 0.0f, 1.0f);
        }
        float f12 = f4 - f6;
        float f13 = f8 - f6;
        float f14 = f5 - f7;
        float f15 = f9 - f7;
        float f16 = (f12 * f15) - (f13 * f14);
        float f17 = ((f15 * f10) - (f13 * f11)) / f16;
        float f18 = ((f12 * f11) - (f10 * f14)) / f16;
        return new PerspectiveTransform((f17 * f4) + (f4 - f2), (f18 * f8) + (f8 - f2), f2, (f5 - f3) + (f17 * f5), (f9 - f3) + (f18 * f9), f3, f17, f18, 1.0f);
    }

    PerspectiveTransform a() {
        float f2 = this.f4322e;
        float f3 = this.i;
        float f4 = this.f4323f;
        float f5 = this.h;
        float f6 = (f2 * f3) - (f4 * f5);
        float f7 = this.f4324g;
        float f8 = this.f4321d;
        float f9 = (f4 * f7) - (f8 * f3);
        float f10 = (f8 * f5) - (f2 * f7);
        float f11 = this.c;
        float f12 = this.b;
        float f13 = (f11 * f5) - (f12 * f3);
        float f14 = this.a;
        return new PerspectiveTransform(f6, f9, f10, f13, (f3 * f14) - (f11 * f7), (f7 * f12) - (f5 * f14), (f12 * f4) - (f11 * f2), (f11 * f8) - (f4 * f14), (f14 * f2) - (f12 * f8));
    }

    PerspectiveTransform b(PerspectiveTransform perspectiveTransform) {
        float f2 = this.a;
        float f3 = perspectiveTransform.a;
        float f4 = this.f4321d;
        float f5 = perspectiveTransform.b;
        float f6 = this.f4324g;
        float f7 = perspectiveTransform.c;
        float f8 = (f2 * f3) + (f4 * f5) + (f6 * f7);
        float f9 = perspectiveTransform.f4321d;
        float f10 = perspectiveTransform.f4322e;
        float f11 = perspectiveTransform.f4323f;
        float f12 = (f2 * f9) + (f4 * f10) + (f6 * f11);
        float f13 = perspectiveTransform.f4324g;
        float f14 = perspectiveTransform.h;
        float f15 = perspectiveTransform.i;
        float f16 = (f2 * f13) + (f4 * f14) + (f6 * f15);
        float f17 = this.b;
        float f18 = this.f4322e;
        float f19 = this.h;
        float f20 = (f17 * f3) + (f18 * f5) + (f19 * f7);
        float f21 = (f17 * f9) + (f18 * f10) + (f19 * f11);
        float f22 = (f19 * f15) + (f17 * f13) + (f18 * f14);
        float f23 = this.c;
        float f24 = this.f4323f;
        float f25 = (f3 * f23) + (f5 * f24);
        float f26 = this.i;
        return new PerspectiveTransform(f8, f12, f16, f20, f21, f22, (f7 * f26) + f25, (f9 * f23) + (f10 * f24) + (f11 * f26), (f23 * f13) + (f24 * f14) + (f26 * f15));
    }
}
