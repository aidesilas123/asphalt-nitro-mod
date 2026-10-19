package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes3.dex */
public class ShapeAppearanceModel {
    public static final com.google.android.material.shape.c a = new i(0.5f);
    d b;
    d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d f3387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f3388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.google.android.material.shape.c f3389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.google.android.material.shape.c f3390g;
    com.google.android.material.shape.c h;
    com.google.android.material.shape.c i;
    f j;
    f k;
    f l;
    f m;

    public static final class b {

        @NonNull
        private d a;

        @NonNull
        private d b;

        @NonNull
        private d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        private d f3391d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NonNull
        private com.google.android.material.shape.c f3392e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NonNull
        private com.google.android.material.shape.c f3393f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @NonNull
        private com.google.android.material.shape.c f3394g;

        @NonNull
        private com.google.android.material.shape.c h;

        @NonNull
        private f i;

        @NonNull
        private f j;

        @NonNull
        private f k;

        @NonNull
        private f l;

        public b() {
            this.a = MaterialShapeUtils.b();
            this.b = MaterialShapeUtils.b();
            this.c = MaterialShapeUtils.b();
            this.f3391d = MaterialShapeUtils.b();
            this.f3392e = new com.google.android.material.shape.a(0.0f);
            this.f3393f = new com.google.android.material.shape.a(0.0f);
            this.f3394g = new com.google.android.material.shape.a(0.0f);
            this.h = new com.google.android.material.shape.a(0.0f);
            this.i = MaterialShapeUtils.c();
            this.j = MaterialShapeUtils.c();
            this.k = MaterialShapeUtils.c();
            this.l = MaterialShapeUtils.c();
        }

        public b(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
            this.a = MaterialShapeUtils.b();
            this.b = MaterialShapeUtils.b();
            this.c = MaterialShapeUtils.b();
            this.f3391d = MaterialShapeUtils.b();
            this.f3392e = new com.google.android.material.shape.a(0.0f);
            this.f3393f = new com.google.android.material.shape.a(0.0f);
            this.f3394g = new com.google.android.material.shape.a(0.0f);
            this.h = new com.google.android.material.shape.a(0.0f);
            this.i = MaterialShapeUtils.c();
            this.j = MaterialShapeUtils.c();
            this.k = MaterialShapeUtils.c();
            this.l = MaterialShapeUtils.c();
            this.a = shapeAppearanceModel.b;
            this.b = shapeAppearanceModel.c;
            this.c = shapeAppearanceModel.f3387d;
            this.f3391d = shapeAppearanceModel.f3388e;
            this.f3392e = shapeAppearanceModel.f3389f;
            this.f3393f = shapeAppearanceModel.f3390g;
            this.f3394g = shapeAppearanceModel.h;
            this.h = shapeAppearanceModel.i;
            this.i = shapeAppearanceModel.j;
            this.j = shapeAppearanceModel.k;
            this.k = shapeAppearanceModel.l;
            this.l = shapeAppearanceModel.m;
        }

        private static float n(d dVar) {
            if (dVar instanceof j) {
                return ((j) dVar).a;
            }
            if (dVar instanceof e) {
                return ((e) dVar).a;
            }
            return -1.0f;
        }

        @NonNull
        public b A(@NonNull d dVar) {
            this.a = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                B(fN);
            }
            return this;
        }

        @NonNull
        public b B(@Dimension float f2) {
            this.f3392e = new com.google.android.material.shape.a(f2);
            return this;
        }

        @NonNull
        public b C(@NonNull com.google.android.material.shape.c cVar) {
            this.f3392e = cVar;
            return this;
        }

        @NonNull
        public b D(int i, @NonNull com.google.android.material.shape.c cVar) {
            return E(MaterialShapeUtils.a(i)).G(cVar);
        }

        @NonNull
        public b E(@NonNull d dVar) {
            this.b = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                F(fN);
            }
            return this;
        }

        @NonNull
        public b F(@Dimension float f2) {
            this.f3393f = new com.google.android.material.shape.a(f2);
            return this;
        }

        @NonNull
        public b G(@NonNull com.google.android.material.shape.c cVar) {
            this.f3393f = cVar;
            return this;
        }

        @NonNull
        public ShapeAppearanceModel m() {
            return new ShapeAppearanceModel(this);
        }

        @NonNull
        public b o(@Dimension float f2) {
            return B(f2).F(f2).x(f2).t(f2);
        }

        @NonNull
        public b p(@NonNull com.google.android.material.shape.c cVar) {
            return C(cVar).G(cVar).y(cVar).u(cVar);
        }

        @NonNull
        public b q(@NonNull f fVar) {
            this.k = fVar;
            return this;
        }

        @NonNull
        public b r(int i, @NonNull com.google.android.material.shape.c cVar) {
            return s(MaterialShapeUtils.a(i)).u(cVar);
        }

        @NonNull
        public b s(@NonNull d dVar) {
            this.f3391d = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                t(fN);
            }
            return this;
        }

        @NonNull
        public b t(@Dimension float f2) {
            this.h = new com.google.android.material.shape.a(f2);
            return this;
        }

        @NonNull
        public b u(@NonNull com.google.android.material.shape.c cVar) {
            this.h = cVar;
            return this;
        }

        @NonNull
        public b v(int i, @NonNull com.google.android.material.shape.c cVar) {
            return w(MaterialShapeUtils.a(i)).y(cVar);
        }

        @NonNull
        public b w(@NonNull d dVar) {
            this.c = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                x(fN);
            }
            return this;
        }

        @NonNull
        public b x(@Dimension float f2) {
            this.f3394g = new com.google.android.material.shape.a(f2);
            return this;
        }

        @NonNull
        public b y(@NonNull com.google.android.material.shape.c cVar) {
            this.f3394g = cVar;
            return this;
        }

        @NonNull
        public b z(int i, @NonNull com.google.android.material.shape.c cVar) {
            return A(MaterialShapeUtils.a(i)).C(cVar);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface c {
        @NonNull
        com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar);
    }

    public ShapeAppearanceModel() {
        this.b = MaterialShapeUtils.b();
        this.c = MaterialShapeUtils.b();
        this.f3387d = MaterialShapeUtils.b();
        this.f3388e = MaterialShapeUtils.b();
        this.f3389f = new com.google.android.material.shape.a(0.0f);
        this.f3390g = new com.google.android.material.shape.a(0.0f);
        this.h = new com.google.android.material.shape.a(0.0f);
        this.i = new com.google.android.material.shape.a(0.0f);
        this.j = MaterialShapeUtils.c();
        this.k = MaterialShapeUtils.c();
        this.l = MaterialShapeUtils.c();
        this.m = MaterialShapeUtils.c();
    }

    private ShapeAppearanceModel(@NonNull b bVar) {
        this.b = bVar.a;
        this.c = bVar.b;
        this.f3387d = bVar.c;
        this.f3388e = bVar.f3391d;
        this.f3389f = bVar.f3392e;
        this.f3390g = bVar.f3393f;
        this.h = bVar.f3394g;
        this.i = bVar.h;
        this.j = bVar.i;
        this.k = bVar.j;
        this.l = bVar.k;
        this.m = bVar.l;
    }

    @NonNull
    private static b a(Context context, @StyleRes int i, @StyleRes int i2, int i3) {
        return b(context, i, i2, new com.google.android.material.shape.a(i3));
    }

    @NonNull
    private static b b(Context context, @StyleRes int i, @StyleRes int i2, @NonNull com.google.android.material.shape.c cVar) {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.p4);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(R$styleable.q4, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(R$styleable.t4, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(R$styleable.u4, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(R$styleable.s4, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(R$styleable.r4, i3);
            com.google.android.material.shape.c cVarH = h(typedArrayObtainStyledAttributes, R$styleable.v4, cVar);
            com.google.android.material.shape.c cVarH2 = h(typedArrayObtainStyledAttributes, R$styleable.y4, cVarH);
            com.google.android.material.shape.c cVarH3 = h(typedArrayObtainStyledAttributes, R$styleable.z4, cVarH);
            com.google.android.material.shape.c cVarH4 = h(typedArrayObtainStyledAttributes, R$styleable.x4, cVarH);
            return new b().z(i4, cVarH2).D(i5, cVarH3).v(i6, cVarH4).r(i7, h(typedArrayObtainStyledAttributes, R$styleable.w4, cVarH));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static b builder() {
        return new b();
    }

    @NonNull
    public static b builder(Context context, @StyleRes int i, @StyleRes int i2) {
        return a(context, i, i2, 0);
    }

    @NonNull
    public static b builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        return builder(context, attributeSet, i, i2, 0);
    }

    @NonNull
    public static b builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, int i3) {
        return builder(context, attributeSet, i, i2, new com.google.android.material.shape.a(i3));
    }

    @NonNull
    public static b builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, @NonNull com.google.android.material.shape.c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.w3, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.x3, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.y3, 0);
        typedArrayObtainStyledAttributes.recycle();
        return b(context, resourceId, resourceId2, cVar);
    }

    @NonNull
    private static com.google.android.material.shape.c h(TypedArray typedArray, int i, @NonNull com.google.android.material.shape.c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i2 = typedValuePeekValue.type;
        return i2 == 5 ? new com.google.android.material.shape.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new i(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    @NonNull
    public f c() {
        return this.l;
    }

    @NonNull
    public d d() {
        return this.f3388e;
    }

    @NonNull
    public com.google.android.material.shape.c e() {
        return this.i;
    }

    @NonNull
    public d f() {
        return this.f3387d;
    }

    @NonNull
    public com.google.android.material.shape.c g() {
        return this.h;
    }

    @NonNull
    public f i() {
        return this.m;
    }

    @NonNull
    public f j() {
        return this.k;
    }

    @NonNull
    public f k() {
        return this.j;
    }

    @NonNull
    public d l() {
        return this.b;
    }

    @NonNull
    public com.google.android.material.shape.c m() {
        return this.f3389f;
    }

    @NonNull
    public d n() {
        return this.c;
    }

    @NonNull
    public com.google.android.material.shape.c o() {
        return this.f3390g;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean p(@NonNull RectF rectF) {
        boolean z = this.m.getClass().equals(f.class) && this.k.getClass().equals(f.class) && this.j.getClass().equals(f.class) && this.l.getClass().equals(f.class);
        float fA = this.f3389f.a(rectF);
        return z && ((this.f3390g.a(rectF) > fA ? 1 : (this.f3390g.a(rectF) == fA ? 0 : -1)) == 0 && (this.i.a(rectF) > fA ? 1 : (this.i.a(rectF) == fA ? 0 : -1)) == 0 && (this.h.a(rectF) > fA ? 1 : (this.h.a(rectF) == fA ? 0 : -1)) == 0) && ((this.c instanceof j) && (this.b instanceof j) && (this.f3387d instanceof j) && (this.f3388e instanceof j));
    }

    @NonNull
    public b q() {
        return new b(this);
    }

    @NonNull
    public ShapeAppearanceModel r(float f2) {
        return q().o(f2).m();
    }

    @NonNull
    public ShapeAppearanceModel s(@NonNull com.google.android.material.shape.c cVar) {
        return q().p(cVar).m();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ShapeAppearanceModel t(@NonNull c cVar) {
        return q().C(cVar.a(m())).G(cVar.a(o())).u(cVar.a(e())).y(cVar.a(g())).m();
    }
}
