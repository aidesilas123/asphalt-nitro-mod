package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes3.dex */
class b {
    static final TimeInterpolator a = AnimationUtils.c;
    static final int[] b = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] c = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f3300d = {R.attr.state_focused, R.attr.state_enabled};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f3301e = {R.attr.state_hovered, R.attr.state_enabled};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f3302f = {R.attr.state_enabled};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int[] f3303g = new int[0];
    private ArrayList<Animator.AnimatorListener> A;
    private ArrayList<Animator.AnimatorListener> B;
    private ArrayList<j> C;
    final FloatingActionButton D;
    final com.google.android.material.shadow.b E;

    @Nullable
    private ViewTreeObserver.OnPreDrawListener J;

    @Nullable
    ShapeAppearanceModel h;

    @Nullable
    MaterialShapeDrawable i;

    @Nullable
    Drawable j;

    @Nullable
    com.google.android.material.floatingactionbutton.a k;

    @Nullable
    Drawable l;
    boolean m;
    float o;
    float p;
    float q;
    int r;

    @NonNull
    private final com.google.android.material.internal.d s;

    @Nullable
    private Animator t;

    @Nullable
    private MotionSpec u;

    @Nullable
    private MotionSpec v;
    private float w;
    private int y;
    boolean n = true;
    private float x = 1.0f;
    private int z = 0;
    private final Rect F = new Rect();
    private final RectF G = new RectF();
    private final RectF H = new RectF();
    private final Matrix I = new Matrix();

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class a extends AnimatorListenerAdapter {
        private boolean a;
        final /* synthetic */ boolean b;
        final /* synthetic */ k c;

        a(boolean z, k kVar) {
            this.b = z;
            this.c = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.z = 0;
            b.this.t = null;
            if (this.a) {
                return;
            }
            FloatingActionButton floatingActionButton = b.this.D;
            boolean z = this.b;
            floatingActionButton.b(z ? 8 : 4, z);
            k kVar = this.c;
            if (kVar != null) {
                kVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.D.b(0, this.b);
            b.this.z = 1;
            b.this.t = animator;
            this.a = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class C0230b extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;
        final /* synthetic */ k b;

        C0230b(boolean z, k kVar) {
            this.a = z;
            this.b = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.z = 0;
            b.this.t = null;
            k kVar = this.b;
            if (kVar != null) {
                kVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.D.b(0, this.a);
            b.this.z = 2;
            b.this.t = animator;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class c extends com.google.android.material.animation.d {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f2, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            b.this.x = f2;
            return super.evaluate(f2, matrix, matrix2);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class d implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ float a;
        final /* synthetic */ float b;
        final /* synthetic */ float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f3306d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f3307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ float f3308f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ float f3309g;
        final /* synthetic */ Matrix h;

        d(float f2, float f3, float f4, float f5, float f6, float f7, float f8, Matrix matrix) {
            this.a = f2;
            this.b = f3;
            this.c = f4;
            this.f3306d = f5;
            this.f3307e = f6;
            this.f3308f = f7;
            this.f3309g = f8;
            this.h = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.D.setAlpha(AnimationUtils.lerp(this.a, this.b, 0.0f, 0.2f, fFloatValue));
            b.this.D.setScaleX(AnimationUtils.lerp(this.c, this.f3306d, fFloatValue));
            b.this.D.setScaleY(AnimationUtils.lerp(this.f3307e, this.f3306d, fFloatValue));
            b.this.x = AnimationUtils.lerp(this.f3308f, this.f3309g, fFloatValue);
            b.this.h(AnimationUtils.lerp(this.f3308f, this.f3309g, fFloatValue), this.h);
            b.this.D.setImageMatrix(this.h);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class e implements TypeEvaluator<Float> {
        FloatEvaluator a = new FloatEvaluator();

        e() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f2, Float f3, Float f4) {
            float fFloatValue = this.a.evaluate(f2, (Number) f3, (Number) f4).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            b.this.F();
            return true;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class g extends m {
        g() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.m
        protected float a() {
            return 0.0f;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class h extends m {
        h() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.m
        protected float a() {
            b bVar = b.this;
            return bVar.o + bVar.p;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class i extends m {
        i() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.m
        protected float a() {
            b bVar = b.this;
            return bVar.o + bVar.q;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    interface j {
        void a();

        void b();
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    interface k {
        void a();

        void b();
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class l extends m {
        l() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.m
        protected float a() {
            return b.this.o;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private boolean a;
        private float b;
        private float c;

        private m() {
        }

        /* synthetic */ m(b bVar, a aVar) {
            this();
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.d0((int) this.c);
            this.a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.a) {
                MaterialShapeDrawable materialShapeDrawable = b.this.i;
                this.b = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.v();
                this.c = a();
                this.a = true;
            }
            b bVar = b.this;
            float f2 = this.b;
            bVar.d0((int) (f2 + ((this.c - f2) * valueAnimator.getAnimatedFraction())));
        }
    }

    b(FloatingActionButton floatingActionButton, com.google.android.material.shadow.b bVar) {
        this.D = floatingActionButton;
        this.E = bVar;
        com.google.android.material.internal.d dVar = new com.google.android.material.internal.d();
        this.s = dVar;
        dVar.a(b, k(new i()));
        dVar.a(c, k(new h()));
        dVar.a(f3300d, k(new h()));
        dVar.a(f3301e, k(new h()));
        dVar.a(f3302f, k(new l()));
        dVar.a(f3303g, k(new g()));
        this.w = floatingActionButton.getRotation();
    }

    private boolean X() {
        return ViewCompat.isLaidOut(this.D) && !this.D.isInEditMode();
    }

    private void e0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(float f2, @NonNull Matrix matrix) {
        matrix.reset();
        if (this.D.getDrawable() == null || this.y == 0) {
            return;
        }
        RectF rectF = this.G;
        RectF rectF2 = this.H;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.y;
        rectF2.set(0.0f, 0.0f, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.y;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    @NonNull
    private AnimatorSet i(@NonNull MotionSpec motionSpec, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.D, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        motionSpec.c("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.D, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        motionSpec.c("scale").a(objectAnimatorOfFloat2);
        e0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.D, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        motionSpec.c("scale").a(objectAnimatorOfFloat3);
        e0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f4, this.I);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.D, new com.google.android.material.animation.c(), new c(), new Matrix(this.I));
        motionSpec.c("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f2, float f3, float f4) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new d(this.D.getAlpha(), f2, this.D.getScaleX(), f3, this.D.getScaleY(), this.x, f4, new Matrix(this.I)));
        arrayList.add(valueAnimatorOfFloat);
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        animatorSet.setDuration(MotionUtils.resolveThemeDuration(this.D.getContext(), R$attr.J, this.D.getContext().getResources().getInteger(R$integer.b)));
        animatorSet.setInterpolator(MotionUtils.resolveThemeInterpolator(this.D.getContext(), R$attr.K, AnimationUtils.b));
        return animatorSet;
    }

    @NonNull
    private ValueAnimator k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    @NonNull
    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.J == null) {
            this.J = new f();
        }
        return this.J;
    }

    void A() {
    }

    void B() {
        ViewTreeObserver viewTreeObserver = this.D.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.J;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.J = null;
        }
    }

    void C(int[] iArr) {
        this.s.d(iArr);
    }

    void D(float f2, float f3, float f4) {
        c0();
        d0(f2);
    }

    void E(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.l, "Didn't initialize content background");
        if (!W()) {
            this.E.setBackgroundDrawable(this.l);
        } else {
            this.E.setBackgroundDrawable(new InsetDrawable(this.l, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void F() {
        float rotation = this.D.getRotation();
        if (this.w != rotation) {
            this.w = rotation;
            a0();
        }
    }

    void G() {
        ArrayList<j> arrayList = this.C;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    void H() {
        ArrayList<j> arrayList = this.C;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    boolean I() {
        return true;
    }

    void J(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        if (this.k != null) {
            throw null;
        }
    }

    void K(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    final void L(float f2) {
        if (this.o != f2) {
            this.o = f2;
            D(f2, this.p, this.q);
        }
    }

    void M(boolean z) {
        this.m = z;
    }

    final void N(@Nullable MotionSpec motionSpec) {
        this.v = motionSpec;
    }

    final void O(float f2) {
        if (this.p != f2) {
            this.p = f2;
            D(this.o, f2, this.q);
        }
    }

    final void P(float f2) {
        this.x = f2;
        Matrix matrix = this.I;
        h(f2, matrix);
        this.D.setImageMatrix(matrix);
    }

    final void Q(int i2) {
        if (this.y != i2) {
            this.y = i2;
            b0();
        }
    }

    final void R(float f2) {
        if (this.q != f2) {
            this.q = f2;
            D(this.o, this.p, f2);
        }
    }

    void S(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        }
    }

    void T(boolean z) {
        this.n = z;
        c0();
    }

    final void U(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.h = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Object obj = this.j;
        if (obj instanceof com.google.android.material.shape.l) {
            ((com.google.android.material.shape.l) obj).setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (this.k != null) {
            throw null;
        }
    }

    final void V(@Nullable MotionSpec motionSpec) {
        this.u = motionSpec;
    }

    boolean W() {
        return true;
    }

    final boolean Y() {
        return !this.m || this.D.getSizeDimension() >= this.r;
    }

    void Z(@Nullable k kVar, boolean z) {
        if (x()) {
            return;
        }
        Animator animator = this.t;
        if (animator != null) {
            animator.cancel();
        }
        boolean z2 = this.u == null;
        if (!X()) {
            this.D.b(0, z);
            this.D.setAlpha(1.0f);
            this.D.setScaleY(1.0f);
            this.D.setScaleX(1.0f);
            P(1.0f);
            if (kVar != null) {
                kVar.a();
                return;
            }
            return;
        }
        if (this.D.getVisibility() != 0) {
            this.D.setAlpha(0.0f);
            this.D.setScaleY(z2 ? 0.4f : 0.0f);
            this.D.setScaleX(z2 ? 0.4f : 0.0f);
            P(z2 ? 0.4f : 0.0f);
        }
        MotionSpec motionSpec = this.u;
        AnimatorSet animatorSetI = motionSpec != null ? i(motionSpec, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f);
        animatorSetI.addListener(new C0230b(z, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.A;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener(it.next());
            }
        }
        animatorSetI.start();
    }

    void a0() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.w % 90.0f != 0.0f) {
                if (this.D.getLayerType() != 1) {
                    this.D.setLayerType(1, null);
                }
            } else if (this.D.getLayerType() != 0) {
                this.D.setLayerType(0, null);
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.b0((int) this.w);
        }
    }

    final void b0() {
        P(this.x);
    }

    final void c0() {
        Rect rect = this.F;
        r(rect);
        E(rect);
        this.E.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    void d0(float f2) {
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.W(f2);
        }
    }

    public void e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.B == null) {
            this.B = new ArrayList<>();
        }
        this.B.add(animatorListener);
    }

    void f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.A == null) {
            this.A = new ArrayList<>();
        }
        this.A.add(animatorListener);
    }

    void g(@NonNull j jVar) {
        if (this.C == null) {
            this.C = new ArrayList<>();
        }
        this.C.add(jVar);
    }

    @Nullable
    final Drawable l() {
        return this.l;
    }

    float m() {
        return this.o;
    }

    boolean n() {
        return this.m;
    }

    @Nullable
    final MotionSpec o() {
        return this.v;
    }

    float p() {
        return this.p;
    }

    void r(@NonNull Rect rect) {
        int sizeDimension = this.m ? (this.r - this.D.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.n ? m() + this.q : 0.0f));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.q;
    }

    @Nullable
    final ShapeAppearanceModel t() {
        return this.h;
    }

    @Nullable
    final MotionSpec u() {
        return this.u;
    }

    void v(@Nullable k kVar, boolean z) {
        if (w()) {
            return;
        }
        Animator animator = this.t;
        if (animator != null) {
            animator.cancel();
        }
        if (!X()) {
            this.D.b(z ? 8 : 4, z);
            if (kVar != null) {
                kVar.b();
                return;
            }
            return;
        }
        MotionSpec motionSpec = this.v;
        AnimatorSet animatorSetI = motionSpec != null ? i(motionSpec, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f);
        animatorSetI.addListener(new a(z, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.B;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener(it.next());
            }
        }
        animatorSetI.start();
    }

    boolean w() {
        return this.D.getVisibility() == 0 ? this.z == 1 : this.z != 2;
    }

    boolean x() {
        return this.D.getVisibility() != 0 ? this.z == 2 : this.z != 1;
    }

    void y() {
        this.s.c();
    }

    void z() {
        MaterialShapeDrawable materialShapeDrawable = this.i;
        if (materialShapeDrawable != null) {
            MaterialShapeUtils.setParentAbsoluteElevation(this.D, materialShapeDrawable);
        }
        if (I()) {
            this.D.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }
}
