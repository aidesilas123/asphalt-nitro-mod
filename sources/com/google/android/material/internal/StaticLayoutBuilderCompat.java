package com.google.android.material.internal;

import android.os.Build;
import android.support.v4.media.MediaDescriptionCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
final class StaticLayoutBuilderCompat {
    static final int a;
    private static boolean b;

    @Nullable
    private static Constructor<StaticLayout> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private static Object f3321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f3322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextPaint f3323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f3324g;
    private int i;
    private boolean p;
    private int h = 0;
    private Layout.Alignment j = Layout.Alignment.ALIGN_NORMAL;
    private int k = Integer.MAX_VALUE;
    private float l = 0.0f;
    private float m = 1.0f;
    private int n = a;
    private boolean o = true;

    @Nullable
    private TextUtils.TruncateAt q = null;

    static class a extends Exception {
        a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        a = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f3322e = charSequence;
        this.f3323f = textPaint;
        this.f3324g = i;
        this.i = charSequence.length();
    }

    private void b() throws a {
        Class<?> cls;
        if (b) {
            return;
        }
        try {
            boolean z = this.p && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                f3321d = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = StaticLayoutBuilderCompat.class.getClassLoader();
                String str = this.p ? "RTL" : "LTR";
                Class<?> clsLoadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                Class<?> clsLoadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                f3321d = clsLoadClass2.getField(str).get(clsLoadClass2);
                cls = clsLoadClass;
            }
            Class cls2 = Integer.TYPE;
            Class cls3 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls2, cls2, TextPaint.class, cls2, Layout.Alignment.class, cls, cls3, cls3, Boolean.TYPE, TextUtils.TruncateAt.class, cls2, cls2);
            c = declaredConstructor;
            declaredConstructor.setAccessible(true);
            b = true;
        } catch (Exception e2) {
            throw new a(e2);
        }
    }

    @NonNull
    public static StaticLayoutBuilderCompat obtain(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    public StaticLayout a() throws a {
        if (this.f3322e == null) {
            this.f3322e = "";
        }
        int iMax = Math.max(0, this.f3324g);
        CharSequence charSequenceEllipsize = this.f3322e;
        if (this.k == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f3323f, iMax, this.q);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.i);
        this.i = iMin;
        if (Build.VERSION.SDK_INT < 23) {
            b();
            try {
                return (StaticLayout) ((Constructor) Preconditions.checkNotNull(c)).newInstance(charSequenceEllipsize, Integer.valueOf(this.h), Integer.valueOf(this.i), this.f3323f, Integer.valueOf(iMax), this.j, Preconditions.checkNotNull(f3321d), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.o), null, Integer.valueOf(iMax), Integer.valueOf(this.k));
            } catch (Exception e2) {
                throw new a(e2);
            }
        }
        if (this.p && this.k == 1) {
            this.j = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.h, iMin, this.f3323f, iMax);
        builderObtain.setAlignment(this.j);
        builderObtain.setIncludePad(this.o);
        builderObtain.setTextDirection(this.p ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.q;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.k);
        float f2 = this.l;
        if (f2 != 0.0f || this.m != 1.0f) {
            builderObtain.setLineSpacing(f2, this.m);
        }
        if (this.k > 1) {
            builderObtain.setHyphenationFrequency(this.n);
        }
        return builderObtain.build();
    }

    @NonNull
    public StaticLayoutBuilderCompat c(@NonNull Layout.Alignment alignment) {
        this.j = alignment;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat d(@Nullable TextUtils.TruncateAt truncateAt) {
        this.q = truncateAt;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat e(int i) {
        this.n = i;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat f(boolean z) {
        this.o = z;
        return this;
    }

    public StaticLayoutBuilderCompat g(boolean z) {
        this.p = z;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat h(float f2, float f3) {
        this.l = f2;
        this.m = f3;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat i(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i) {
        this.k = i;
        return this;
    }
}
