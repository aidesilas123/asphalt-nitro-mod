package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.f;
import com.google.android.material.circularreveal.CircularRevealCompat;
import com.google.android.material.circularreveal.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.math.MathUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    private final Rect c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f3469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f3470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f3471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3472g;
    private float h;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;
        final /* synthetic */ View b;
        final /* synthetic */ View c;

        a(boolean z, View view, View view2) {
            this.a = z;
            this.b = view;
            this.c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            this.b.setVisibility(4);
            this.c.setAlpha(1.0f);
            this.c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
                this.c.setAlpha(0.0f);
                this.c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ View a;

        b(View view) {
            this.a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {
        final /* synthetic */ com.google.android.material.circularreveal.b a;
        final /* synthetic */ Drawable b;

        c(com.google.android.material.circularreveal.b bVar, Drawable drawable) {
            this.a = bVar;
            this.b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.a.setCircularRevealOverlayDrawable(this.b);
        }
    }

    class d extends AnimatorListenerAdapter {
        final /* synthetic */ com.google.android.material.circularreveal.b a;

        d(com.google.android.material.circularreveal.b bVar) {
            this.a = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.e revealInfo = this.a.getRevealInfo();
            revealInfo.c = Float.MAX_VALUE;
            this.a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        @Nullable
        public MotionSpec a;
        public f b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.c = new Rect();
        this.f3469d = new RectF();
        this.f3470e = new RectF();
        this.f3471f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.f3469d = new RectF();
        this.f3470e = new RectF();
        this.f3471f = new int[2];
    }

    @Nullable
    private ViewGroup B(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Nullable
    private ViewGroup g(@NonNull View view) {
        View viewFindViewById = view.findViewById(R$id.D);
        return viewFindViewById != null ? B(viewFindViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? B(((ViewGroup) view).getChildAt(0)) : B(view);
    }

    private void h(@NonNull View view, @NonNull e eVar, @NonNull com.google.android.material.animation.e eVar2, @NonNull com.google.android.material.animation.e eVar3, float f2, float f3, float f4, float f5, @NonNull RectF rectF) {
        float fO = o(eVar, eVar2, f2, f4);
        float fO2 = o(eVar, eVar3, f3, f5);
        Rect rect = this.c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f3469d;
        rectF2.set(rect);
        RectF rectF3 = this.f3470e;
        p(view, rectF3);
        rectF3.offset(fO, fO2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void i(@NonNull View view, @NonNull RectF rectF) {
        p(view, rectF);
        rectF.offset(this.f3472g, this.h);
    }

    @NonNull
    private Pair<com.google.android.material.animation.e, com.google.android.material.animation.e> j(float f2, float f3, boolean z, @NonNull e eVar) {
        com.google.android.material.animation.e eVarC;
        com.google.android.material.animation.e eVarC2;
        if (f2 == 0.0f || f3 == 0.0f) {
            eVarC = eVar.a.c("translationXLinear");
            eVarC2 = eVar.a.c("translationYLinear");
        } else if ((!z || f3 >= 0.0f) && (z || f3 <= 0.0f)) {
            eVarC = eVar.a.c("translationXCurveDownwards");
            eVarC2 = eVar.a.c("translationYCurveDownwards");
        } else {
            eVarC = eVar.a.c("translationXCurveUpwards");
            eVarC2 = eVar.a.c("translationYCurveUpwards");
        }
        return new Pair<>(eVarC, eVarC2);
    }

    private float k(@NonNull View view, @NonNull View view2, @NonNull f fVar) {
        RectF rectF = this.f3469d;
        RectF rectF2 = this.f3470e;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(-m(view, view2, fVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float l(@NonNull View view, @NonNull View view2, @NonNull f fVar) {
        RectF rectF = this.f3469d;
        RectF rectF2 = this.f3470e;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(0.0f, -n(view, view2, fVar));
        return rectF.centerY() - rectF2.top;
    }

    private float m(@NonNull View view, @NonNull View view2, @NonNull f fVar) {
        float fCenterX;
        float fCenterX2;
        float f2;
        RectF rectF = this.f3469d;
        RectF rectF2 = this.f3470e;
        i(view, rectF);
        p(view2, rectF2);
        int i = fVar.a & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f2 = 0.0f;
                return f2 + fVar.b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f2 = fCenterX - fCenterX2;
        return f2 + fVar.b;
    }

    private float n(@NonNull View view, @NonNull View view2, @NonNull f fVar) {
        float fCenterY;
        float fCenterY2;
        float f2;
        RectF rectF = this.f3469d;
        RectF rectF2 = this.f3470e;
        i(view, rectF);
        p(view2, rectF2);
        int i = fVar.a & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f2 = 0.0f;
                return f2 + fVar.c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f2 = fCenterY - fCenterY2;
        return f2 + fVar.c;
    }

    private float o(@NonNull e eVar, @NonNull com.google.android.material.animation.e eVar2, float f2, float f3) {
        long jC = eVar2.c();
        long jD = eVar2.d();
        com.google.android.material.animation.e eVarC = eVar.a.c("expansion");
        return AnimationUtils.lerp(f2, f3, eVar2.e().getInterpolation((((eVarC.c() + eVarC.d()) + 17) - jC) / jD));
    }

    private void p(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f3471f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void q(View view, View view2, boolean z, boolean z2, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupG;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.b) && com.google.android.material.circularreveal.a.a == 0) || (viewGroupG = g(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    com.google.android.material.animation.a.a.set(viewGroupG, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, com.google.android.material.animation.a.a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, com.google.android.material.animation.a.a, 0.0f);
            }
            eVar.a.c("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void r(@NonNull View view, View view2, boolean z, boolean z2, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            int iZ = z(view);
            int i = 16777215 & iZ;
            if (z) {
                if (!z2) {
                    bVar.setCircularRevealScrimColor(iZ);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(bVar, b.d.a, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(bVar, b.d.a, iZ);
            }
            objectAnimatorOfInt.setEvaluator(ArgbEvaluatorCompat.getInstance());
            eVar.a.c("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void s(@NonNull View view, @NonNull View view2, boolean z, @NonNull e eVar, @NonNull List<Animator> list) {
        float fM = m(view, view2, eVar.b);
        float fN = n(view, view2, eVar.b);
        Pair<com.google.android.material.animation.e, com.google.android.material.animation.e> pairJ = j(fM, fN, z, eVar);
        com.google.android.material.animation.e eVar2 = (com.google.android.material.animation.e) pairJ.first;
        com.google.android.material.animation.e eVar3 = (com.google.android.material.animation.e) pairJ.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            fM = this.f3472g;
        }
        fArr[0] = fM;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            fN = this.h;
        }
        fArr2[0] = fN;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        eVar2.a(objectAnimatorOfFloat);
        eVar3.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    private void t(View view, @NonNull View view2, boolean z, boolean z2, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        eVar.a.c("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(@NonNull View view, View view2, boolean z, boolean z2, @NonNull e eVar, float f2, float f3, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animatorCreateCircularReveal;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            float fK = k(view, view2, eVar.b);
            float fL = l(view, view2, eVar.b);
            ((FloatingActionButton) view).i(this.c);
            float fWidth = this.c.width() / 2.0f;
            com.google.android.material.animation.e eVarC = eVar.a.c("expansion");
            if (z) {
                if (!z2) {
                    bVar.setRevealInfo(new b.e(fK, fL, fWidth));
                }
                if (z2) {
                    fWidth = bVar.getRevealInfo().c;
                }
                animatorCreateCircularReveal = CircularRevealCompat.createCircularReveal(bVar, fK, fL, MathUtils.distanceToFurthestCorner(fK, fL, 0.0f, 0.0f, f2, f3));
                animatorCreateCircularReveal.addListener(new d(bVar));
                x(view2, eVarC.c(), (int) fK, (int) fL, fWidth, list);
            } else {
                float f4 = bVar.getRevealInfo().c;
                Animator animatorCreateCircularReveal2 = CircularRevealCompat.createCircularReveal(bVar, fK, fL, fWidth);
                int i = (int) fK;
                int i2 = (int) fL;
                x(view2, eVarC.c(), i, i2, f4, list);
                w(view2, eVarC.c(), eVarC.d(), eVar.a.d(), i, i2, fWidth, list);
                animatorCreateCircularReveal = animatorCreateCircularReveal2;
            }
            eVarC.a(animatorCreateCircularReveal);
            list.add(animatorCreateCircularReveal);
            list2.add(CircularRevealCompat.createCircularRevealListener(bVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(View view, View view2, boolean z, boolean z2, @NonNull e eVar, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.b) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, com.google.android.material.animation.b.a, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, com.google.android.material.animation.b.a, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.a.c("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(bVar, drawable));
        }
    }

    private void w(View view, long j, long j2, long j3, int i, int i2, float f2, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f2, f2);
                animatorCreateCircularReveal.setStartDelay(j4);
                animatorCreateCircularReveal.setDuration(j3 - j4);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    private void x(View view, long j, int i, int i2, float f2, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f2, f2);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    private void y(@NonNull View view, @NonNull View view2, boolean z, boolean z2, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fM = m(view, view2, eVar.b);
        float fN = n(view, view2, eVar.b);
        Pair<com.google.android.material.animation.e, com.google.android.material.animation.e> pairJ = j(fM, fN, z, eVar);
        com.google.android.material.animation.e eVar2 = (com.google.android.material.animation.e) pairJ.first;
        com.google.android.material.animation.e eVar3 = (com.google.android.material.animation.e) pairJ.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fM);
                view2.setTranslationY(-fN);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            h(view2, eVar, eVar2, eVar3, -fM, -fN, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fN);
        }
        eVar2.a(objectAnimatorOfFloat);
        eVar3.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int z(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    protected abstract e A(Context context, boolean z);

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet f(@NonNull View view, @NonNull View view2, boolean z, boolean z2) {
        e eVarA = A(view2.getContext(), z);
        if (z) {
            this.f3472g = view.getTranslationX();
            this.h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            t(view, view2, z, z2, eVarA, arrayList, arrayList2);
        }
        RectF rectF = this.f3469d;
        y(view, view2, z, z2, eVarA, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        s(view, view2, z, eVarA, arrayList);
        v(view, view2, z, z2, eVarA, arrayList, arrayList2);
        u(view, view2, z, z2, eVarA, fWidth, fHeight, arrayList, arrayList2);
        r(view, view2, z, z2, eVarA, arrayList, arrayList2);
        q(view, view2, z, z2, eVarA, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        animatorSet.addListener(new a(z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }
}
