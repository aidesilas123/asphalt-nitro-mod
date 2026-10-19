package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.i;

/* JADX INFO: loaded from: classes3.dex */
class RadialViewGroup extends ConstraintLayout {
    private final Runnable a;
    private int b;
    private MaterialShapeDrawable c;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RadialViewGroup.this.g();
        }
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R$layout.i, this);
        ViewCompat.setBackground(this, c());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.g4, i, 0);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.h4, 0);
        this.a = new a();
        typedArrayObtainStyledAttributes.recycle();
    }

    private Drawable c() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.c = materialShapeDrawable;
        materialShapeDrawable.V(new i(0.5f));
        this.c.X(ColorStateList.valueOf(-1));
        return this.c;
    }

    private static boolean f(View view) {
        return "skip".equals(view.getTag());
    }

    private void h() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.a);
            handler.post(this.a);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        h();
    }

    @Dimension
    public int d() {
        return this.b;
    }

    public void e(@Dimension int i) {
        this.b = i;
        g();
    }

    protected void g() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (f(getChildAt(i2))) {
                i++;
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        float f2 = 0.0f;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            int i4 = R$id.b;
            if (id != i4 && !f(childAt)) {
                constraintSet.constrainCircle(childAt.getId(), i4, this.b, f2);
                f2 += 360.0f / (childCount - i);
            }
        }
        constraintSet.applyTo(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        h();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        this.c.X(ColorStateList.valueOf(i));
    }
}
