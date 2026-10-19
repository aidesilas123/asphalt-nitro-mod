package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.component.sdk.annotation.ColorInt;
import com.bytedance.sdk.component.adexpress.dynamic.b.f;
import com.bytedance.sdk.component.adexpress.dynamic.b.g;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.utils.s;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class DynamicBaseWidget extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.animation.view.b, d, e {
    private static final View.OnTouchListener u = new View.OnTouchListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };
    private static final View.OnClickListener v = new View.OnClickListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };
    private float a;
    private float b;
    protected float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected float f751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected float f752f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f753g;
    protected int h;
    protected int i;
    protected int j;
    protected Context k;
    protected g l;
    protected h m;
    protected DynamicRootView n;
    protected View o;
    protected boolean p;
    protected com.bytedance.sdk.component.adexpress.dynamic.animation.a.b q;
    com.bytedance.sdk.component.adexpress.dynamic.animation.view.a r;
    private float s;
    private float t;

    public DynamicBaseWidget(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context);
        this.k = context;
        this.n = dynamicRootView;
        this.m = hVar;
        this.c = hVar.f();
        this.f750d = hVar.g();
        this.f751e = hVar.h();
        this.f752f = hVar.i();
        this.i = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.c);
        this.j = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.f750d);
        this.f753g = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.f751e);
        this.h = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.f752f);
        g gVar = new g(hVar.j());
        this.l = gVar;
        if (gVar.r() > 0) {
            this.f753g += this.l.r() * 2;
            this.h += this.l.r() * 2;
            this.i -= this.l.r();
            this.j -= this.l.r();
            List<h> listK = hVar.k();
            if (listK != null) {
                for (h hVar2 : listK) {
                    hVar2.c(hVar2.f() + com.bytedance.sdk.component.adexpress.c.e.b(this.k, this.l.r()));
                    hVar2.d(hVar2.g() + com.bytedance.sdk.component.adexpress.c.e.b(this.k, this.l.r()));
                    hVar2.a(com.bytedance.sdk.component.adexpress.c.e.b(this.k, this.l.r()));
                    hVar2.b(com.bytedance.sdk.component.adexpress.c.e.b(this.k, this.l.r()));
                }
            }
        }
        this.p = this.l.n() > 0.0d;
        this.r = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.a();
    }

    private Drawable[] a(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (str.contains("linear-gradient")) {
                String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = strArrSplit.length - 1;
                int[] iArr = new int[length];
                int i2 = 0;
                while (i2 < length) {
                    int i3 = i2 + 1;
                    iArr[i2] = g.a(strArrSplit[i3].substring(0, 7));
                    i2 = i3;
                }
                GradientDrawable gradientDrawableA = a(a(strArrSplit[0]), iArr);
                gradientDrawableA.setShape(0);
                gradientDrawableA.setCornerRadius(com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.o()));
                drawableArr[(list.size() - 1) - i] = gradientDrawableA;
            }
        }
        return drawableArr;
    }

    private List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == '(') {
                i++;
                z = true;
            } else if (str.charAt(i3) == ')' && i - 1 == 0 && z) {
                int i4 = i3 + 1;
                arrayList.add(str.substring(i2, i4));
                i2 = i4;
                z = false;
            }
        }
        return arrayList;
    }

    protected Drawable a(boolean z, String str) {
        String[] strArrSplit;
        int[] iArr;
        if (!TextUtils.isEmpty(this.l.F())) {
            try {
                String strF = this.l.F();
                String strSubstring = strF.substring(strF.indexOf("(") + 1, strF.length() - 1);
                if (strSubstring.contains("rgba") && strSubstring.contains("%")) {
                    strArrSplit = new String[]{strSubstring.substring(0, strSubstring.indexOf(",")).trim(), strSubstring.substring(strSubstring.indexOf(",") + 1, strSubstring.indexOf("%") + 1).trim(), strSubstring.substring(strSubstring.indexOf("%") + 2).trim()};
                    iArr = new int[]{g.a(strArrSplit[1]), g.a(strArrSplit[2])};
                } else {
                    strArrSplit = strSubstring.split(", ");
                    iArr = new int[]{g.a(strArrSplit[1].substring(0, 7)), g.a(strArrSplit[2].substring(0, 7))};
                }
                try {
                    double d2 = Double.parseDouble(strSubstring.substring(strSubstring.indexOf("linear-gradient(") + 1, strSubstring.indexOf("deg")));
                    if (d2 > 225.0d && d2 < 315.0d) {
                        int i = iArr[iArr.length - 1];
                        iArr[iArr.length - 1] = iArr[0];
                        iArr[0] = i;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable gradientDrawableA = a(a(strArrSplit[0]), iArr);
                gradientDrawableA.setShape(0);
                gradientDrawableA.setCornerRadius(com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.o()));
                return gradientDrawableA;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float fA = com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.o());
        drawable.setCornerRadius(fA);
        if (fA < 1.0f) {
            float fA2 = com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.A());
            float fA3 = com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.B());
            float fA4 = com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.C());
            float fA5 = com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.D());
            float[] fArr = new float[8];
            if (fA2 > 0.0f) {
                fArr[0] = fA2;
                fArr[1] = fA2;
            }
            if (fA3 > 0.0f) {
                fArr[2] = fA3;
                fArr[3] = fA3;
            }
            if (fA4 > 0.0f) {
                fArr[4] = fA4;
                fArr[5] = fA4;
            }
            if (fA5 > 0.0f) {
                fArr[6] = fA5;
                fArr[7] = fA5;
            }
            drawable.setCornerRadii(fArr);
        }
        drawable.setColor(z ? Color.parseColor(str) : this.l.y());
        if (this.l.q() > 0.0f) {
            drawable.setStroke((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.q()), this.l.p());
            return drawable;
        }
        if (this.l.r() <= 0) {
            return drawable;
        }
        drawable.setStroke(this.l.r(), this.l.p());
        drawable.setAlpha(50);
        if (!TextUtils.equals(this.m.j().b(), "video-vd")) {
            return drawable;
        }
        setLayerType(1, null);
        return new c((int) fA, this.l.r());
    }

    protected GradientDrawable.Orientation a(String str) {
        try {
            int i = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            return i <= 90 ? GradientDrawable.Orientation.LEFT_RIGHT : i <= 180 ? GradientDrawable.Orientation.TOP_BOTTOM : i <= 270 ? GradientDrawable.Orientation.RIGHT_LEFT : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    protected GradientDrawable a(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return new GradientDrawable();
        }
        if (iArr.length != 1) {
            return new GradientDrawable(orientation, iArr);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(iArr[0]);
        return gradientDrawable;
    }

    protected b a(Bitmap bitmap) {
        return new a(bitmap, null);
    }

    public void a(int i) {
        g gVar = this.l;
        if (gVar != null && gVar.a(i)) {
            i();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt != null && (getChildAt(i2) instanceof DynamicBaseWidget)) {
                    ((DynamicBaseWidget) childAt).a(i);
                }
            }
        }
    }

    protected void a(View view) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.m.h());
            jSONObject.put("height", this.m.i());
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.t, this.l.G());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.u, this.m.j().b());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.v, this.m.c());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.a.w, jSONObject.toString());
            } else {
                view.setTag(s.e(getContext(), "tt_id_click_tag"), this.l.G());
                view.setTag(s.e(getContext(), "tt_id_click_area_type"), this.m.j().b());
                view.setTag(s.e(getContext(), "tt_id_click_area_id"), this.m.c());
                view.setTag(s.e(getContext(), "tt_id_area_rect_info"), jSONObject.toString());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void b() {
        com.bytedance.sdk.component.adexpress.dynamic.animation.a.b bVar = this.q;
        if (bVar != null) {
            bVar.b();
        }
    }

    protected void b(View view) {
        f fVarE;
        h hVar = this.m;
        if (hVar == null || (fVarE = hVar.j().e()) == null) {
            return;
        }
        view.setTag(s.e(getContext(), "tt_id_open_landing_page"), Boolean.valueOf(fVarE.aF()));
    }

    public boolean c() {
        i();
        f();
        d();
        return true;
    }

    protected boolean d() {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.o;
        View view2 = view;
        if (view == null) {
            view2 = this;
        }
        if (e()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = u;
            onClickListener = v;
        }
        if (onTouchListener != null && onClickListener != null) {
            view2.setOnTouchListener(onTouchListener);
            view2.setOnClickListener(onClickListener);
        }
        a(view2);
        b(view2);
        return true;
    }

    public boolean e() {
        g gVar = this.l;
        return (gVar == null || gVar.x() == 0) ? false : true;
    }

    public void f() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f753g, this.h);
        layoutParams.topMargin = this.j;
        int i = this.i;
        layoutParams.leftMargin = i;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(i);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        setLayoutParams(layoutParams);
    }

    public void g() {
        if (h()) {
            return;
        }
        View view = this.o;
        if (view == null) {
            view = this;
        }
        com.bytedance.sdk.component.adexpress.dynamic.animation.a.b bVar = new com.bytedance.sdk.component.adexpress.dynamic.animation.a.b(view, this.m.j().e().au());
        this.q = bVar;
        bVar.a();
    }

    protected Drawable getBackgroundDrawable() {
        return a(false, "");
    }

    public boolean getBeginInvisibleAndShow() {
        return this.p;
    }

    public int getClickArea() {
        return this.l.x();
    }

    protected GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.d.a getDynamicClickListener() {
        return this.n.getDynamicClickListener();
    }

    public int getDynamicHeight() {
        return this.h;
    }

    public f getDynamicLayoutBrickValue() {
        com.bytedance.sdk.component.adexpress.dynamic.b.e eVarJ;
        h hVar = this.m;
        if (hVar == null || (eVarJ = hVar.j()) == null) {
            return null;
        }
        return eVarJ.e();
    }

    public int getDynamicWidth() {
        return this.f753g;
    }

    public String getImageObjectFit() {
        return this.l.S();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getMarqueeValue() {
        return this.s;
    }

    protected Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(a(b(this.l.F().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getRippleValue() {
        return this.a;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getShineValue() {
        return this.b;
    }

    public float getStretchValue() {
        return this.t;
    }

    protected boolean h() {
        h hVar = this.m;
        return hVar == null || hVar.j() == null || this.m.j().e() == null || this.m.j().e().au() == null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.r.a(canvas, this, this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.a aVar = this.r;
        View view = this.o;
        if (view == null) {
            view = this;
        }
        aVar.a(view, i, i2);
    }

    public void setMarqueeValue(float f2) {
        this.s = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.a = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.b = f2;
        postInvalidate();
    }

    public void setShouldInvisible(boolean z) {
        this.p = z;
    }

    public void setStretchValue(float f2) {
        this.t = f2;
        this.r.a(this, f2);
    }
}
