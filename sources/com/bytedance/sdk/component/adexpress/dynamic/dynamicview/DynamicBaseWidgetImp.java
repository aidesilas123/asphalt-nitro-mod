package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.dynamic.b.g;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;
import com.bytedance.sdk.component.d.j;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.component.utils.u;
import java.util.ArrayList;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class DynamicBaseWidgetImp extends DynamicBaseWidget {
    private static String b = "";
    private Runnable a;
    protected InteractViewContainer s;

    public DynamicBaseWidgetImp(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        setTag(Integer.valueOf(getClickArea()));
        String strB = hVar.j().b();
        if ("logo-union".equals(strB)) {
            dynamicRootView.setLogoUnionHeight(this.h - ((int) com.bytedance.sdk.component.adexpress.c.e.a(context, this.l.b() + this.l.a())));
        } else if ("scoreCountWithIcon".equals(strB)) {
            dynamicRootView.setScoreCountWithIcon(this.h - ((int) com.bytedance.sdk.component.adexpress.c.e.a(context, this.l.b() + this.l.a())));
        }
    }

    private void a() {
        int iO = this.l.O();
        int iP = this.l.P();
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.7
            @Override // java.lang.Runnable
            public void run() {
                DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.n;
                if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                    DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                    DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp.s = new InteractViewContainer(dynamicBaseWidgetImp2.k, dynamicBaseWidgetImp2, dynamicBaseWidgetImp2.l);
                } else {
                    m renderRequest = DynamicBaseWidgetImp.this.n.getRenderRequest();
                    int iO2 = renderRequest.o();
                    int iP2 = renderRequest.p();
                    int iQ = renderRequest.q();
                    int iR = renderRequest.r();
                    DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                    DynamicBaseWidgetImp dynamicBaseWidgetImp4 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp3.s = new InteractViewContainer(dynamicBaseWidgetImp4.k, dynamicBaseWidgetImp4, dynamicBaseWidgetImp4.l, iO2, iP2, iQ, iR);
                }
                DynamicBaseWidgetImp dynamicBaseWidgetImp5 = DynamicBaseWidgetImp.this;
                dynamicBaseWidgetImp5.b(dynamicBaseWidgetImp5.s);
                if (DynamicBaseWidgetImp.this.getParent() instanceof ViewGroup) {
                    ((ViewGroup) DynamicBaseWidgetImp.this.getParent()).setClipChildren(false);
                }
                DynamicBaseWidgetImp.this.setClipChildren(false);
                DynamicBaseWidgetImp.this.s.setTag(2);
                DynamicBaseWidgetImp dynamicBaseWidgetImp6 = DynamicBaseWidgetImp.this;
                dynamicBaseWidgetImp6.addView(dynamicBaseWidgetImp6.s, new FrameLayout.LayoutParams(-1, -1));
                DynamicBaseWidgetImp.this.s.b();
            }
        };
        this.a = runnable;
        postDelayed(runnable, ((long) iO) * 1000);
        if (this.l.Q() || iP >= Integer.MAX_VALUE || iO >= iP) {
            return;
        }
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.8
            @Override // java.lang.Runnable
            public void run() {
                InteractViewContainer interactViewContainer = DynamicBaseWidgetImp.this.s;
                if (interactViewContainer != null) {
                    interactViewContainer.c();
                    DynamicBaseWidgetImp.this.s.setVisibility(4);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp.removeView(dynamicBaseWidgetImp.s);
                }
            }
        }, ((long) iP) * 1000);
    }

    private static void a(j jVar) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            jVar.a(Bitmap.Config.ARGB_8888);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable b(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String string = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getString(i).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i));
                } else if (jSONArray.getString(i).endsWith("deg")) {
                    string = jSONArray.getString(i);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = g.a(((String) arrayList.get(i2)).substring(0, 7));
            }
            GradientDrawable gradientDrawableA = a(a(string), iArr);
            gradientDrawableA.setShape(0);
            gradientDrawableA.setCornerRadius(com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.o()));
            return gradientDrawableA;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String getBuildModel() {
        try {
            b = u.a();
        } catch (Throwable unused) {
            b = Build.MODEL;
        }
        if (TextUtils.isEmpty(b)) {
            b = Build.MODEL;
        }
        return b;
    }

    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.f753g, this.h);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        Drawable backgroundDrawable;
        final View view = this.o;
        if (view == null) {
            view = this;
        }
        setContentDescription(this.m.a(this.l.x()));
        String strU = this.l.u();
        if (this.l.t() && Build.VERSION.SDK_INT >= 17) {
            final int iS = this.l.s();
            com.bytedance.sdk.component.adexpress.a.a.a.a().e().a(this.l.b).a(com.bytedance.sdk.component.d.u.BITMAP).a(new com.bytedance.sdk.component.d.h() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.2
                @Override // com.bytedance.sdk.component.d.h
                public Bitmap a(Bitmap bitmap) {
                    return com.bytedance.sdk.component.adexpress.c.a.a(DynamicBaseWidgetImp.this.k, bitmap, iS);
                }
            }).a(new o<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.1
                @Override // com.bytedance.sdk.component.d.o
                public void a(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.d.o
                public void a(k<Bitmap> kVar) {
                    Bitmap bitmapB = kVar.b();
                    if (bitmapB == null || kVar.c() == null) {
                        return;
                    }
                    view.setBackground(DynamicBaseWidgetImp.this.a(bitmapB));
                }
            });
        } else if (!TextUtils.isEmpty(strU)) {
            if (!strU.startsWith("http:")) {
                strU = com.bytedance.sdk.component.adexpress.dynamic.c.h.b(strU);
            }
            j jVarA = com.bytedance.sdk.component.adexpress.a.a.a.a().e().a(strU).a(com.bytedance.sdk.component.d.u.BITMAP);
            a(jVarA);
            jVarA.a(new o<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.3
                @Override // com.bytedance.sdk.component.d.o
                public void a(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.d.o
                public void a(k<Bitmap> kVar) {
                    view.setBackground(new BitmapDrawable(kVar.b()));
                    h hVar = DynamicBaseWidgetImp.this.m;
                    if (hVar == null || hVar.j() == null || 6 != DynamicBaseWidgetImp.this.m.j().a() || Build.VERSION.SDK_INT < 19 || view.getBackground() == null) {
                        return;
                    }
                    view.getBackground().setAutoMirrored(true);
                }
            });
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.l.z() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBaseWidgetImp.this.l.E() > 0) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            Drawable drawableB = dynamicBaseWidgetImp.b(dynamicBaseWidgetImp.n.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.l.E())));
                            if (drawableB == null) {
                                DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                                drawableB = dynamicBaseWidgetImp2.a(true, dynamicBaseWidgetImp2.n.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.l.E())));
                            }
                            if (drawableB != null) {
                                view.setBackground(drawableB);
                                return;
                            }
                            View view2 = view;
                            DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                            view2.setBackground(dynamicBaseWidgetImp3.a(true, dynamicBaseWidgetImp3.n.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.l.z() * 1000.0d));
        }
        View view2 = this.o;
        if (view2 != null) {
            view2.setPadding((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.c()), (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.b()), (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.d()), (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.a()));
        }
        if (this.p || this.l.n() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        final View view = this.o;
        if (view == null) {
            view = this;
        }
        double dT = this.m.j().e().t();
        if (dT < 90.0d && dT > 0.0d) {
            com.bytedance.sdk.component.utils.h.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.5
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp.this.setVisibility(8);
                }
            }, (long) (dT * 1000.0d));
        }
        double dS = this.m.j().e().s();
        if (dS > 0.0d) {
            com.bytedance.sdk.component.utils.h.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.6
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.m.j().e().au() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    DynamicBaseWidgetImp.this.setVisibility(0);
                }
            }, (long) (dS * 1000.0d));
        }
        if (!TextUtils.isEmpty(this.l.K())) {
            a();
        }
        super.onAttachedToWindow();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.a);
    }
}
