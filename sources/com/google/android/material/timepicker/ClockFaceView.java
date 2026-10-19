package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
class ClockFaceView extends RadialViewGroup implements ClockHandView.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClockHandView f3452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f3453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f3454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SparseArray<TextView> f3455g;
    private final AccessibilityDelegateCompat h;
    private final int[] i;
    private final float[] j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private String[] o;
    private float p;
    private final ColorStateList q;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.e(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f3452d.g()) - ClockFaceView.this.k);
            return true;
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(R$id.q)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f3455g.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, iIntValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 16) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            float x = view.getX() + (view.getWidth() / 2.0f);
            float height = (view.getHeight() / 2.0f) + view.getY();
            ClockFaceView.this.f3452d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, x, height, 0));
            ClockFaceView.this.f3452d.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, x, height, 0));
            return true;
        }
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.G);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3453e = new Rect();
        this.f3454f = new RectF();
        this.f3455g = new SparseArray<>();
        this.j = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.i1, i, R$style.x);
        Resources resources = getResources();
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.k1);
        this.q = colorStateList;
        LayoutInflater.from(context).inflate(R$layout.h, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R$id.k);
        this.f3452d = clockHandView;
        this.k = resources.getDimensionPixelSize(R$dimen.p);
        int colorForState = colorStateList.getColorForState(new int[]{R.attr.state_selected}, colorStateList.getDefaultColor());
        this.i = new int[]{colorForState, colorForState, colorStateList.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = AppCompatResources.getColorStateList(context, R$color.b).getDefaultColor();
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.j1);
        setBackgroundColor(colorStateList2 != null ? colorStateList2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.h = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        o(strArr, 0);
        this.l = resources.getDimensionPixelSize(R$dimen.C);
        this.m = resources.getDimensionPixelSize(R$dimen.D);
        this.n = resources.getDimensionPixelSize(R$dimen.r);
    }

    private void l() {
        RectF rectFD = this.f3452d.d();
        for (int i = 0; i < this.f3455g.size(); i++) {
            TextView textView = this.f3455g.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f3453e);
                offsetDescendantRectToMyCoords(textView, this.f3453e);
                textView.setSelected(rectFD.contains(this.f3453e.centerX(), this.f3453e.centerY()));
                textView.getPaint().setShader(m(rectFD, this.f3453e, textView));
                textView.invalidate();
            }
        }
    }

    @Nullable
    private RadialGradient m(RectF rectF, Rect rect, TextView textView) {
        this.f3454f.set(rect);
        this.f3454f.offset(textView.getPaddingLeft(), textView.getPaddingTop());
        if (RectF.intersects(rectF, this.f3454f)) {
            return new RadialGradient(rectF.centerX() - this.f3454f.left, rectF.centerY() - this.f3454f.top, rectF.width() * 0.5f, this.i, this.j, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private static float n(float f2, float f3, float f4) {
        return Math.max(Math.max(f2, f3), f4);
    }

    private void p(@StringRes int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f3455g.size();
        for (int i2 = 0; i2 < Math.max(this.o.length, size); i2++) {
            TextView textView = this.f3455g.get(i2);
            if (i2 >= this.o.length) {
                removeView(textView);
                this.f3455g.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R$layout.f3105g, (ViewGroup) this, false);
                    this.f3455g.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.o[i2]);
                textView.setTag(R$id.q, Integer.valueOf(i2));
                ViewCompat.setAccessibilityDelegate(textView, this.h);
                textView.setTextColor(this.q);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.o[i2]));
                }
            }
        }
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void a(float f2, boolean z) {
        if (Math.abs(this.p - f2) > 0.001f) {
            this.p = f2;
            l();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public void e(int i) {
        if (i != d()) {
            super.e(i);
            this.f3452d.j(d());
        }
    }

    public void o(String[] strArr, @StringRes int i) {
        this.o = strArr;
        p(i);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.o.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        l();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iN = (int) (this.n / n(this.l / displayMetrics.heightPixels, this.m / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iN, 1073741824);
        setMeasuredDimension(iN, iN);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
