package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.e;
import com.google.android.material.resources.b;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes3.dex */
public class BadgeDrawable extends Drawable implements e.b {

    @StyleRes
    private static final int a = R$style.l;

    @AttrRes
    private static final int b = R$attr.b;

    @NonNull
    private final WeakReference<Context> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f3146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final e f3147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final Rect f3148f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final BadgeState f3149g;
    private float h;
    private float i;
    private int j;
    private float k;
    private float l;
    private float m;

    @Nullable
    private WeakReference<View> n;

    @Nullable
    private WeakReference<FrameLayout> o;

    class a implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ FrameLayout b;

        a(View view, FrameLayout frameLayout) {
            this.a = view;
            this.b = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            BadgeDrawable.this.B(this.a, this.b);
        }
    }

    private BadgeDrawable(@NonNull Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3, @Nullable BadgeState.State state) {
        this.c = new WeakReference<>(context);
        ThemeEnforcement.checkMaterialTheme(context);
        this.f3148f = new Rect();
        this.f3146d = new MaterialShapeDrawable();
        e eVar = new e(this);
        this.f3147e = eVar;
        eVar.e().setTextAlign(Paint.Align.CENTER);
        y(R$style.b);
        this.f3149g = new BadgeState(context, i, i2, i3, state);
        u();
    }

    private static void A(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void C() {
        Context context = this.c.get();
        WeakReference<View> weakReference = this.n;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f3148f);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.o;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || BadgeUtils.a) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        b(context, rect2, view);
        BadgeUtils.updateBadgeBounds(this.f3148f, this.h, this.i, this.l, this.m);
        this.f3146d.U(this.k);
        if (rect.equals(this.f3148f)) {
            return;
        }
        this.f3146d.setBounds(this.f3148f);
    }

    private void D() {
        this.j = ((int) Math.pow(10.0d, ((double) h()) - 1.0d)) - 1;
    }

    private void b(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int iL = l();
        int iF = this.f3149g.f();
        if (iF == 8388691 || iF == 8388693) {
            this.i = rect.bottom - iL;
        } else {
            this.i = rect.top + iL;
        }
        if (i() <= 9) {
            float f2 = !m() ? this.f3149g.c : this.f3149g.f3150d;
            this.k = f2;
            this.m = f2;
            this.l = f2;
        } else {
            float f3 = this.f3149g.f3150d;
            this.k = f3;
            this.m = f3;
            this.l = (this.f3147e.f(e()) / 2.0f) + this.f3149g.f3151e;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m() ? R$dimen.L : R$dimen.I);
        int iK = k();
        int iF2 = this.f3149g.f();
        if (iF2 == 8388659 || iF2 == 8388691) {
            this.h = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.l) + dimensionPixelSize + iK : ((rect.right + this.l) - dimensionPixelSize) - iK;
        } else {
            this.h = ViewCompat.getLayoutDirection(view) == 0 ? ((rect.right + this.l) - dimensionPixelSize) - iK : (rect.left - this.l) + dimensionPixelSize + iK;
        }
    }

    @NonNull
    static BadgeDrawable c(@NonNull Context context, @NonNull BadgeState.State state) {
        return new BadgeDrawable(context, 0, b, a, state);
    }

    @NonNull
    public static BadgeDrawable create(@NonNull Context context) {
        return new BadgeDrawable(context, 0, b, a, null);
    }

    @NonNull
    public static BadgeDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        return new BadgeDrawable(context, i, b, a, null);
    }

    private void d(Canvas canvas) {
        Rect rect = new Rect();
        String strE = e();
        this.f3147e.e().getTextBounds(strE, 0, strE.length(), rect);
        canvas.drawText(strE, this.h, this.i + (rect.height() / 2), this.f3147e.e());
    }

    @NonNull
    private String e() {
        if (i() <= this.j) {
            return NumberFormat.getInstance(this.f3149g.o()).format(i());
        }
        Context context = this.c.get();
        return context == null ? "" : String.format(this.f3149g.o(), context.getString(R$string.k), Integer.valueOf(this.j), "+");
    }

    private int k() {
        return (m() ? this.f3149g.k() : this.f3149g.l()) + this.f3149g.b();
    }

    private int l() {
        return (m() ? this.f3149g.q() : this.f3149g.r()) + this.f3149g.c();
    }

    private void n() {
        this.f3147e.e().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void o() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.f3149g.e());
        if (this.f3146d.w() != colorStateListValueOf) {
            this.f3146d.X(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void p() {
        WeakReference<View> weakReference = this.n;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.n.get();
        WeakReference<FrameLayout> weakReference2 = this.o;
        B(view, weakReference2 != null ? weakReference2.get() : null);
    }

    private void q() {
        this.f3147e.e().setColor(this.f3149g.g());
        invalidateSelf();
    }

    private void r() {
        D();
        this.f3147e.i(true);
        C();
        invalidateSelf();
    }

    private void s() {
        this.f3147e.i(true);
        C();
        invalidateSelf();
    }

    private void t() {
        boolean zT = this.f3149g.t();
        setVisible(zT, false);
        if (!BadgeUtils.a || g() == null || zT) {
            return;
        }
        ((ViewGroup) g().getParent()).invalidate();
    }

    private void u() {
        r();
        s();
        n();
        o();
        q();
        p();
        C();
        t();
    }

    private void x(@Nullable b bVar) {
        Context context;
        if (this.f3147e.d() == bVar || (context = this.c.get()) == null) {
            return;
        }
        this.f3147e.h(bVar, context);
        C();
    }

    private void y(@StyleRes int i) {
        Context context = this.c.get();
        if (context == null) {
            return;
        }
        x(new b(context, i));
    }

    private void z(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R$id.w) {
            WeakReference<FrameLayout> weakReference = this.o;
            if (weakReference == null || weakReference.get() != viewGroup) {
                A(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R$id.w);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.o = new WeakReference<>(frameLayout);
                frameLayout.post(new a(view, frameLayout));
            }
        }
    }

    public void B(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.n = new WeakReference<>(view);
        boolean z = BadgeUtils.a;
        if (z && frameLayout == null) {
            z(view);
        } else {
            this.o = new WeakReference<>(frameLayout);
        }
        if (!z) {
            A(view);
        }
        C();
        invalidateSelf();
    }

    @Override // com.google.android.material.internal.e.b
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void a() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f3146d.draw(canvas);
        if (m()) {
            d(canvas);
        }
    }

    @Nullable
    public CharSequence f() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!m()) {
            return this.f3149g.i();
        }
        if (this.f3149g.j() == 0 || (context = this.c.get()) == null) {
            return null;
        }
        return i() <= this.j ? context.getResources().getQuantityString(this.f3149g.j(), i(), Integer.valueOf(i())) : context.getString(this.f3149g.h(), Integer.valueOf(this.j));
    }

    @Nullable
    public FrameLayout g() {
        WeakReference<FrameLayout> weakReference = this.o;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3149g.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3148f.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3148f.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public int h() {
        return this.f3149g.m();
    }

    public int i() {
        if (m()) {
            return this.f3149g.n();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @NonNull
    BadgeState.State j() {
        return this.f3149g.p();
    }

    public boolean m() {
        return this.f3149g.s();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.e.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3149g.x(i);
        n();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    void v(int i) {
        this.f3149g.v(i);
        C();
    }

    void w(@Px int i) {
        this.f3149g.w(i);
        C();
    }
}
