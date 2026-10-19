package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: compiled from: CalendarItemStyle.java */
/* JADX INFO: loaded from: classes3.dex */
final class a {

    @NonNull
    private final Rect a;
    private final ColorStateList b;
    private final ColorStateList c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f3269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ShapeAppearanceModel f3271f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.a = rect;
        this.b = colorStateList2;
        this.c = colorStateList;
        this.f3269d = colorStateList3;
        this.f3270e = i;
        this.f3271f = shapeAppearanceModel;
    }

    @NonNull
    static a a(@NonNull Context context, @StyleRes int i) {
        Preconditions.checkArgument(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.c3);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.d3, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.f3, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.e3, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.g3, 0));
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.h3);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.m3);
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.k3);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.l3, 0);
        ShapeAppearanceModel shapeAppearanceModelM = ShapeAppearanceModel.builder(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.i3, 0), typedArrayObtainStyledAttributes.getResourceId(R$styleable.j3, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateList, colorStateList2, colorStateList3, dimensionPixelSize, shapeAppearanceModelM, rect);
    }

    int b() {
        return this.a.bottom;
    }

    int c() {
        return this.a.top;
    }

    void d(@NonNull TextView textView) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f3271f);
        materialShapeDrawable2.setShapeAppearanceModel(this.f3271f);
        materialShapeDrawable.X(this.c);
        materialShapeDrawable.d0(this.f3270e, this.f3269d);
        textView.setTextColor(this.b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.b.withAlpha(30), materialShapeDrawable, materialShapeDrawable2) : materialShapeDrawable;
        Rect rect = this.a;
        ViewCompat.setBackground(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
