package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;

/* JADX INFO: compiled from: CalendarStyle.java */
/* JADX INFO: loaded from: classes3.dex */
final class b {

    @NonNull
    final a a;

    @NonNull
    final a b;

    @NonNull
    final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    final a f3272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    final a f3273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    final a f3274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    final a f3275g;

    @NonNull
    final Paint h;

    b(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, R$attr.E, MaterialCalendar.class.getCanonicalName()), R$styleable.T2);
        this.a = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.W2, 0));
        this.f3275g = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.U2, 0));
        this.b = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.V2, 0));
        this.c = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.X2, 0));
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.Y2);
        this.f3272d = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.a3, 0));
        this.f3273e = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.Z2, 0));
        this.f3274f = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.b3, 0));
        Paint paint = new Paint();
        this.h = paint;
        paint.setColor(colorStateList.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
