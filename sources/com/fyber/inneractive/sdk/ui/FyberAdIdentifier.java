package com.fyber.inneractive.sdk.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.util.Property;
import android.view.View;
import android.widget.ImageView;
import com.fyber.inneractive.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class FyberAdIdentifier implements View.OnClickListener {
    public ImageView a;
    public View b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Animator f2729e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ClickListener f2731g;
    public Bitmap h;
    public Corner c = Corner.BOTTOM_LEFT;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2728d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2730f = 0.0f;

    public interface ClickListener {
        void a();
    }

    public enum Corner {
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT
    }

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Corner.values().length];
            a = iArr;
            try {
                iArr[Corner.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Corner.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Corner.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Corner.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static boolean a(FyberAdIdentifier fyberAdIdentifier) {
        Corner corner = fyberAdIdentifier.c;
        return corner == Corner.TOP_LEFT || corner == Corner.BOTTOM_LEFT;
    }

    public FyberAdIdentifier a(ClickListener clickListener) {
        this.f2731g = clickListener;
        return this;
    }

    public final void a() {
        this.f2728d = false;
        this.b.setTranslationX(0.0f);
        this.a.setImageResource(R.drawable.fyber_info_button);
        Animator animator = this.f2729e;
        if (animator != null) {
            animator.removeAllListeners();
            this.f2729e = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != this.a.getId()) {
            if (view.getId() != this.b.getId() || this.f2731g == null) {
                return;
            }
            a();
            this.f2731g.a();
            return;
        }
        if (this.f2729e != null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.a, (Property<ImageView, Float>) View.ROTATION_X, 90.0f);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.a, "imageAlpha", 255, 25);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfInt);
        animatorSet2.addListener(new c(this, animatorSet));
        animatorSet2.setDuration(225L);
        this.f2729e = animatorSet2;
        animatorSet2.start();
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.a, (Property<ImageView, Float>) View.ROTATION_X, 0.0f);
        ObjectAnimator objectAnimatorOfInt2 = ObjectAnimator.ofInt(this.a, "imageAlpha", 25, 255);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(objectAnimatorOfFloat2, objectAnimatorOfInt2);
        animatorSet3.setDuration(225L);
        View view2 = this.b;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        fArr[0] = this.f2728d ? this.f2730f : 0.0f;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) property, fArr);
        objectAnimatorOfFloat3.setDuration(450L);
        animatorSet.setDuration(450L);
        animatorSet.playTogether(objectAnimatorOfFloat3, animatorSet3);
        animatorSet.addListener(new d(this));
    }
}
