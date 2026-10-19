package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.R$attr;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.k;
import java.util.BitSet;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, l {
    private static final String a = MaterialShapeDrawable.class.getSimpleName();
    private static final Paint b;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k.g[] f3379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k.g[] f3380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BitSet f3381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3382g;
    private final Matrix h;
    private final Path i;
    private final Path j;
    private final RectF k;
    private final RectF l;
    private final Region m;
    private final Region n;
    private ShapeAppearanceModel o;
    private final Paint p;
    private final Paint q;
    private final com.google.android.material.shadow.a r;

    @NonNull
    private final ShapeAppearancePathProvider.b s;
    private final ShapeAppearancePathProvider t;

    @Nullable
    private PorterDuffColorFilter u;

    @Nullable
    private PorterDuffColorFilter v;
    private int w;

    @NonNull
    private final RectF x;
    private boolean y;

    class a implements ShapeAppearancePathProvider.b {
        a() {
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.b
        public void a(@NonNull k kVar, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f3381f.set(i, kVar.e());
            MaterialShapeDrawable.this.f3379d[i] = kVar.f(matrix);
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.b
        public void b(@NonNull k kVar, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f3381f.set(i + 4, kVar.e());
            MaterialShapeDrawable.this.f3380e[i] = kVar.f(matrix);
        }
    }

    class b implements ShapeAppearanceModel.c {
        final /* synthetic */ float a;

        b(float f2) {
            this.a = f2;
        }

        @Override // com.google.android.material.shape.ShapeAppearanceModel.c
        @NonNull
        public com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar) {
            return cVar instanceof i ? cVar : new com.google.android.material.shape.b(this.a, cVar);
        }
    }

    static final class c extends Drawable.ConstantState {

        @NonNull
        public ShapeAppearanceModel a;

        @Nullable
        public com.google.android.material.elevation.a b;

        @Nullable
        public ColorFilter c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public ColorStateList f3383d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public ColorStateList f3384e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        public ColorStateList f3385f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        public ColorStateList f3386g;

        @Nullable
        public PorterDuff.Mode h;

        @Nullable
        public Rect i;
        public float j;
        public float k;
        public float l;
        public int m;
        public float n;
        public float o;
        public float p;
        public int q;
        public int r;
        public int s;
        public int t;
        public boolean u;
        public Paint.Style v;

        public c(@NonNull c cVar) {
            this.f3383d = null;
            this.f3384e = null;
            this.f3385f = null;
            this.f3386g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = cVar.a;
            this.b = cVar.b;
            this.l = cVar.l;
            this.c = cVar.c;
            this.f3383d = cVar.f3383d;
            this.f3384e = cVar.f3384e;
            this.h = cVar.h;
            this.f3386g = cVar.f3386g;
            this.m = cVar.m;
            this.j = cVar.j;
            this.s = cVar.s;
            this.q = cVar.q;
            this.u = cVar.u;
            this.k = cVar.k;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
            this.r = cVar.r;
            this.t = cVar.t;
            this.f3385f = cVar.f3385f;
            this.v = cVar.v;
            if (cVar.i != null) {
                this.i = new Rect(cVar.i);
            }
        }

        public c(ShapeAppearanceModel shapeAppearanceModel, com.google.android.material.elevation.a aVar) {
            this.f3383d = null;
            this.f3384e = null;
            this.f3385f = null;
            this.f3386g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = shapeAppearanceModel;
            this.b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this, null);
            materialShapeDrawable.f3382g = true;
            return materialShapeDrawable;
        }
    }

    static {
        Paint paint = new Paint(1);
        b = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this(ShapeAppearanceModel.builder(context, attributeSet, i, i2).m());
    }

    private MaterialShapeDrawable(@NonNull c cVar) {
        this.f3379d = new k.g[4];
        this.f3380e = new k.g[4];
        this.f3381f = new BitSet(8);
        this.h = new Matrix();
        this.i = new Path();
        this.j = new Path();
        this.k = new RectF();
        this.l = new RectF();
        this.m = new Region();
        this.n = new Region();
        Paint paint = new Paint(1);
        this.p = paint;
        Paint paint2 = new Paint(1);
        this.q = paint2;
        this.r = new com.google.android.material.shadow.a();
        this.t = Looper.getMainLooper().getThread() == Thread.currentThread() ? ShapeAppearancePathProvider.getInstance() : new ShapeAppearancePathProvider();
        this.x = new RectF();
        this.y = true;
        this.c = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        h0();
        g0(getState());
        this.s = new a();
    }

    /* synthetic */ MaterialShapeDrawable(c cVar, a aVar) {
        this(cVar);
    }

    public MaterialShapeDrawable(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this(new c(shapeAppearanceModel, null));
    }

    private float D() {
        if (L()) {
            return this.q.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean J() {
        c cVar = this.c;
        int i = cVar.q;
        return i != 1 && cVar.r > 0 && (i == 2 || T());
    }

    private boolean K() {
        Paint.Style style = this.c.v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean L() {
        Paint.Style style = this.c.v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.q.getStrokeWidth() > 0.0f;
    }

    private void N() {
        super.invalidateSelf();
    }

    private void Q(@NonNull Canvas canvas) {
        if (J()) {
            canvas.save();
            S(canvas);
            if (!this.y) {
                m(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.x.width() - getBounds().width());
            int iHeight = (int) (this.x.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.x.width()) + (this.c.r * 2) + iWidth, ((int) this.x.height()) + (this.c.r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f2 = (getBounds().left - this.c.r) - iWidth;
            float f3 = (getBounds().top - this.c.r) - iHeight;
            canvas2.translate(-f2, -f3);
            m(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f2, f3, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int R(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    private void S(@NonNull Canvas canvas) {
        int iZ = z();
        int iA = A();
        if (Build.VERSION.SDK_INT < 21 && this.y) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.c.r;
            clipBounds.inset(-i, -i);
            clipBounds.offset(iZ, iA);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(iZ, iA);
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(Context context) {
        return createWithElevationOverlay(context, 0.0f);
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(Context context, float f2) {
        int color = MaterialColors.getColor(context, R$attr.s, MaterialShapeDrawable.class.getSimpleName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.M(context);
        materialShapeDrawable.X(ColorStateList.valueOf(color));
        materialShapeDrawable.W(f2);
        return materialShapeDrawable;
    }

    @Nullable
    private PorterDuffColorFilter f(@NonNull Paint paint, boolean z) {
        if (!z) {
            return null;
        }
        int color = paint.getColor();
        int iL = l(color);
        this.w = iL;
        if (iL != color) {
            return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private void g(@NonNull RectF rectF, @NonNull Path path) {
        h(rectF, path);
        if (this.c.j != 1.0f) {
            this.h.reset();
            Matrix matrix = this.h;
            float f2 = this.c.j;
            matrix.setScale(f2, f2, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.h);
        }
        path.computeBounds(this.x, true);
    }

    private boolean g0(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.c.f3383d == null || color2 == (colorForState2 = this.c.f3383d.getColorForState(iArr, (color2 = this.p.getColor())))) {
            z = false;
        } else {
            this.p.setColor(colorForState2);
            z = true;
        }
        if (this.c.f3384e == null || color == (colorForState = this.c.f3384e.getColorForState(iArr, (color = this.q.getColor())))) {
            return z;
        }
        this.q.setColor(colorForState);
        return true;
    }

    private boolean h0() {
        PorterDuffColorFilter porterDuffColorFilter = this.u;
        PorterDuffColorFilter porterDuffColorFilter2 = this.v;
        c cVar = this.c;
        this.u = k(cVar.f3386g, cVar.h, this.p, true);
        c cVar2 = this.c;
        this.v = k(cVar2.f3385f, cVar2.h, this.q, false);
        c cVar3 = this.c;
        if (cVar3.u) {
            this.r.d(cVar3.f3386g.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.u) && ObjectsCompat.equals(porterDuffColorFilter2, this.v)) ? false : true;
    }

    private void i() {
        ShapeAppearanceModel shapeAppearanceModelT = C().t(new b(-D()));
        this.o = shapeAppearanceModelT;
        this.t.d(shapeAppearanceModelT, this.c.k, u(), this.j);
    }

    private void i0() {
        float fI = I();
        this.c.r = (int) Math.ceil(0.75f * fI);
        this.c.s = (int) Math.ceil(fI * 0.25f);
        h0();
        N();
    }

    @NonNull
    private PorterDuffColorFilter j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = l(colorForState);
        }
        this.w = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @NonNull
    private PorterDuffColorFilter k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? f(paint, z) : j(colorStateList, mode, z);
    }

    private void m(@NonNull Canvas canvas) {
        if (this.f3381f.cardinality() > 0) {
            Log.w(a, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.c.s != 0) {
            canvas.drawPath(this.i, this.r.c());
        }
        for (int i = 0; i < 4; i++) {
            this.f3379d[i].b(this.r, this.c.r, canvas);
            this.f3380e[i].b(this.r, this.c.r, canvas);
        }
        if (this.y) {
            int iZ = z();
            int iA = A();
            canvas.translate(-iZ, -iA);
            canvas.drawPath(this.i, b);
            canvas.translate(iZ, iA);
        }
    }

    private void n(@NonNull Canvas canvas) {
        p(canvas, this.p, this.i, this.c.a, t());
    }

    private void p(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull ShapeAppearanceModel shapeAppearanceModel, @NonNull RectF rectF) {
        if (!shapeAppearanceModel.p(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = shapeAppearanceModel.o().a(rectF) * this.c.k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    @NonNull
    private RectF u() {
        this.l.set(t());
        float fD = D();
        this.l.inset(fD, fD);
        return this.l;
    }

    public int A() {
        return (int) (((double) this.c.s) * Math.cos(Math.toRadians(r0.t)));
    }

    public int B() {
        return this.c.r;
    }

    @NonNull
    public ShapeAppearanceModel C() {
        return this.c.a;
    }

    @Nullable
    public ColorStateList E() {
        return this.c.f3386g;
    }

    public float F() {
        return this.c.a.m().a(t());
    }

    public float G() {
        return this.c.a.o().a(t());
    }

    public float H() {
        return this.c.p;
    }

    public float I() {
        return v() + H();
    }

    public void M(Context context) {
        this.c.b = new com.google.android.material.elevation.a(context);
        i0();
    }

    public boolean O() {
        com.google.android.material.elevation.a aVar = this.c.b;
        return aVar != null && aVar.d();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean P() {
        return this.c.a.p(t());
    }

    public boolean T() {
        int i = Build.VERSION.SDK_INT;
        return i < 21 || !(P() || this.i.isConvex() || i >= 29);
    }

    public void U(float f2) {
        setShapeAppearanceModel(this.c.a.r(f2));
    }

    public void V(@NonNull com.google.android.material.shape.c cVar) {
        setShapeAppearanceModel(this.c.a.s(cVar));
    }

    public void W(float f2) {
        c cVar = this.c;
        if (cVar.o != f2) {
            cVar.o = f2;
            i0();
        }
    }

    public void X(@Nullable ColorStateList colorStateList) {
        c cVar = this.c;
        if (cVar.f3383d != colorStateList) {
            cVar.f3383d = colorStateList;
            onStateChange(getState());
        }
    }

    public void Y(float f2) {
        c cVar = this.c;
        if (cVar.k != f2) {
            cVar.k = f2;
            this.f3382g = true;
            invalidateSelf();
        }
    }

    public void Z(int i, int i2, int i3, int i4) {
        c cVar = this.c;
        if (cVar.i == null) {
            cVar.i = new Rect();
        }
        this.c.i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void a0(float f2) {
        c cVar = this.c;
        if (cVar.n != f2) {
            cVar.n = f2;
            i0();
        }
    }

    public void b0(int i) {
        c cVar = this.c;
        if (cVar.t != i) {
            cVar.t = i;
            N();
        }
    }

    public void c0(float f2, @ColorInt int i) {
        f0(f2);
        e0(ColorStateList.valueOf(i));
    }

    public void d0(float f2, @Nullable ColorStateList colorStateList) {
        f0(f2);
        e0(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.p.setColorFilter(this.u);
        int alpha = this.p.getAlpha();
        this.p.setAlpha(R(alpha, this.c.m));
        this.q.setColorFilter(this.v);
        this.q.setStrokeWidth(this.c.l);
        int alpha2 = this.q.getAlpha();
        this.q.setAlpha(R(alpha2, this.c.m));
        if (this.f3382g) {
            i();
            g(t(), this.i);
            this.f3382g = false;
        }
        Q(canvas);
        if (K()) {
            n(canvas);
        }
        if (L()) {
            q(canvas);
        }
        this.p.setAlpha(alpha);
        this.q.setAlpha(alpha2);
    }

    public void e0(@Nullable ColorStateList colorStateList) {
        c cVar = this.c;
        if (cVar.f3384e != colorStateList) {
            cVar.f3384e = colorStateList;
            onStateChange(getState());
        }
    }

    public void f0(float f2) {
        this.c.l = f2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.c.m;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.c.q == 2) {
            return;
        }
        if (P()) {
            outline.setRoundRect(getBounds(), F() * this.c.k);
            return;
        }
        g(t(), this.i);
        if (this.i.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.i);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.c.i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.m.set(getBounds());
        g(t(), this.i);
        this.n.setPath(this.i, this.m);
        this.m.op(this.n, Region.Op.DIFFERENCE);
        return this.m;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected final void h(@NonNull RectF rectF, @NonNull Path path) {
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.t;
        c cVar = this.c;
        shapeAppearancePathProvider.e(cVar.a, cVar.k, rectF, this.s, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f3382g = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.c.f3386g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.c.f3385f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.c.f3384e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.c.f3383d) != null && colorStateList4.isStateful())));
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int l(@ColorInt int i) {
        float fI = I() + x();
        com.google.android.material.elevation.a aVar = this.c.b;
        return aVar != null ? aVar.c(i, fI) : i;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.c = new c(this.c);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void o(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        p(canvas, paint, path, this.c.a, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f3382g = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.e.b
    protected boolean onStateChange(int[] iArr) {
        boolean z = g0(iArr) || h0();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void q(@NonNull Canvas canvas) {
        p(canvas, this.q, this.j, this.o, u());
    }

    public float r() {
        return this.c.a.e().a(t());
    }

    public float s() {
        return this.c.a.g().a(t());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 255) int i) {
        c cVar = this.c;
        if (cVar.m != i) {
            cVar.m = i;
            N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.c.c = colorFilter;
        N();
    }

    @Override // com.google.android.material.shape.l
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.c.a = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.c.f3386g = colorStateList;
        h0();
        N();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.c;
        if (cVar.h != mode) {
            cVar.h = mode;
            h0();
            N();
        }
    }

    @NonNull
    protected RectF t() {
        this.k.set(getBounds());
        return this.k;
    }

    public float v() {
        return this.c.o;
    }

    @Nullable
    public ColorStateList w() {
        return this.c.f3383d;
    }

    public float x() {
        return this.c.n;
    }

    @ColorInt
    public int y() {
        return this.w;
    }

    public int z() {
        return (int) (((double) this.c.s) * Math.sin(Math.toRadians(r0.t)));
    }
}
