package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;

/* JADX INFO: compiled from: TextAppearance.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    @Nullable
    public final ColorStateList a;

    @Nullable
    public final ColorStateList b;

    @Nullable
    public final ColorStateList c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f3366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3369g;
    public final float h;
    public final float i;
    public final float j;
    public final boolean k;
    public final float l;

    @Nullable
    private ColorStateList m;
    private float n;

    @FontRes
    private final int o;
    private boolean p = false;
    private Typeface q;

    /* JADX INFO: compiled from: TextAppearance.java */
    class a extends ResourcesCompat.FontCallback {
        final /* synthetic */ c a;

        a(c cVar) {
            this.a = cVar;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: onFontRetrievalFailed */
        public void lambda$callbackFailAsync$1(int i) {
            b.this.p = true;
            this.a.a(i);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: onFontRetrieved */
        public void lambda$callbackSuccessAsync$0(@NonNull Typeface typeface) {
            b bVar = b.this;
            bVar.q = Typeface.create(typeface, bVar.f3367e);
            b.this.p = true;
            this.a.b(b.this.q, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.resources.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TextAppearance.java */
    class C0234b extends c {
        final /* synthetic */ Context a;
        final /* synthetic */ TextPaint b;
        final /* synthetic */ c c;

        C0234b(Context context, TextPaint textPaint, c cVar) {
            this.a = context;
            this.b = textPaint;
            this.c = cVar;
        }

        @Override // com.google.android.material.resources.c
        public void a(int i) {
            this.c.a(i);
        }

        @Override // com.google.android.material.resources.c
        public void b(@NonNull Typeface typeface, boolean z) {
            b.this.p(this.a, this.b, typeface);
            this.c.b(typeface, z);
        }
    }

    public b(@NonNull Context context, @StyleRes int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.V4);
        l(typedArrayObtainStyledAttributes.getDimension(R$styleable.W4, 0.0f));
        k(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.Z4));
        this.a = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.a5);
        this.b = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.b5);
        this.f3367e = typedArrayObtainStyledAttributes.getInt(R$styleable.Y4, 0);
        this.f3368f = typedArrayObtainStyledAttributes.getInt(R$styleable.X4, 1);
        int iB = MaterialResources.b(typedArrayObtainStyledAttributes, R$styleable.h5, R$styleable.g5);
        this.o = typedArrayObtainStyledAttributes.getResourceId(iB, 0);
        this.f3366d = typedArrayObtainStyledAttributes.getString(iB);
        this.f3369g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.i5, false);
        this.c = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.c5);
        this.h = typedArrayObtainStyledAttributes.getFloat(R$styleable.d5, 0.0f);
        this.i = typedArrayObtainStyledAttributes.getFloat(R$styleable.e5, 0.0f);
        this.j = typedArrayObtainStyledAttributes.getFloat(R$styleable.f5, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.k = false;
            this.l = 0.0f;
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, R$styleable.z3);
        int i2 = R$styleable.A3;
        this.k = typedArrayObtainStyledAttributes2.hasValue(i2);
        this.l = typedArrayObtainStyledAttributes2.getFloat(i2, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.q == null && (str = this.f3366d) != null) {
            this.q = Typeface.create(str, this.f3367e);
        }
        if (this.q == null) {
            int i = this.f3368f;
            if (i == 1) {
                this.q = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.q = Typeface.SERIF;
            } else if (i != 3) {
                this.q = Typeface.DEFAULT;
            } else {
                this.q = Typeface.MONOSPACE;
            }
            this.q = Typeface.create(this.q, this.f3367e);
        }
    }

    private boolean m(Context context) {
        if (TextAppearanceConfig.shouldLoadFontSynchronously()) {
            return true;
        }
        int i = this.o;
        return (i != 0 ? ResourcesCompat.getCachedFont(context, i) : null) != null;
    }

    public Typeface e() {
        d();
        return this.q;
    }

    @NonNull
    @VisibleForTesting
    public Typeface f(@NonNull Context context) {
        if (this.p) {
            return this.q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.o);
                this.q = font;
                if (font != null) {
                    this.q = Typeface.create(font, this.f3367e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e2) {
                Log.d("TextAppearance", "Error loading font " + this.f3366d, e2);
            }
        }
        d();
        this.p = true;
        return this.q;
    }

    public void g(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c cVar) {
        p(context, textPaint, e());
        h(context, new C0234b(context, textPaint, cVar));
    }

    public void h(@NonNull Context context, @NonNull c cVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i = this.o;
        if (i == 0) {
            this.p = true;
        }
        if (this.p) {
            cVar.b(this.q, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i, new a(cVar), null);
        } catch (Resources.NotFoundException unused) {
            this.p = true;
            cVar.a(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f3366d, e2);
            this.p = true;
            cVar.a(-3);
        }
    }

    @Nullable
    public ColorStateList i() {
        return this.m;
    }

    public float j() {
        return this.n;
    }

    public void k(@Nullable ColorStateList colorStateList) {
        this.m = colorStateList;
    }

    public void l(float f2) {
        this.n = f2;
    }

    public void n(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c cVar) {
        o(context, textPaint, cVar);
        ColorStateList colorStateList = this.m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        float f2 = this.j;
        float f3 = this.h;
        float f4 = this.i;
        ColorStateList colorStateList2 = this.c;
        textPaint.setShadowLayer(f2, f3, f4, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c cVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, cVar);
        }
    }

    public void p(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(context, typeface);
        if (typefaceMaybeCopyWithFontWeightAdjustment != null) {
            typeface = typefaceMaybeCopyWithFontWeightAdjustment;
        }
        textPaint.setTypeface(typeface);
        int i = this.f3367e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.n);
        if (Build.VERSION.SDK_INT < 21 || !this.k) {
            return;
        }
        textPaint.setLetterSpacing(this.l);
    }
}
