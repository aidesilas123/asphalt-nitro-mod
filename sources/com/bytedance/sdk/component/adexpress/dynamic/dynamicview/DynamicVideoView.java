package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.facebook.internal.security.CertificateUtil;

/* JADX INFO: loaded from: classes.dex */
public class DynamicVideoView extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.e {
    TextView a;
    FrameLayout b;
    boolean t;

    public DynamicVideoView(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.t = false;
        View view = new View(context);
        this.o = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.a = new TextView(context);
        this.b = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.c.e.a(context, 40.0f), (int) com.bytedance.sdk.component.adexpress.c.e.a(context, 15.0f));
        layoutParams.gravity = 8388693;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.a.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.a.setBackground(gradientDrawable);
        this.a.setTextSize(10.0f);
        this.a.setGravity(17);
        this.a.setTextColor(-1);
        this.a.setVisibility(8);
        addView(this.b, new FrameLayout.LayoutParams(-1, -1));
        addView(this.a);
        addView(this.o, getWidgetLayoutParams());
        dynamicRootView.setVideoListener(this);
    }

    private void c(View view) {
        if (view == this.a || view == ((DynamicBaseWidgetImp) this).s) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.a.f699f)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            c(viewGroup.getChildAt(i));
            i++;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.e
    public void a() {
        this.a.setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean e() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        double dE = 0.0d;
        double d2 = 0.0d;
        for (h hVarL = this.m; hVarL != null; hVarL = hVarL.l()) {
            double dF = d2 + ((double) hVarL.f());
            double dG = dE + ((double) hVarL.g());
            d2 = dF - ((double) hVarL.d());
            dE = dG - ((double) hVarL.e());
        }
        try {
            float f2 = (float) d2;
            int iA = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), f2);
            int iA2 = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), f2 + this.f751e);
            if (com.bytedance.sdk.component.adexpress.c.b.a(getContext())) {
                int dynamicWidth = ((DynamicRoot) this.n.getChildAt(0)).getDynamicWidth();
                int i = dynamicWidth - iA2;
                iA2 = dynamicWidth - iA;
                iA = i;
            }
            if ("open_ad".equals(this.n.getRenderRequest().d())) {
                this.n.c = this.b;
            } else {
                float f3 = (float) dE;
                ((DynamicRoot) this.n.getChildAt(0)).a.a(iA, (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), f3), iA2, (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), f3 + this.f752f));
            }
        } catch (Exception unused) {
        }
        this.n.a(d2, dE, this.f751e, this.f752f, this.l.o());
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.e
    public void setTimeUpdate(int i) {
        if (!this.m.j().e().aB() || i <= 0 || this.t) {
            this.t = true;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                c(getChildAt(i2));
            }
            this.a.setVisibility(8);
            return;
        }
        String str = (i >= 60 ? "0" + (i / 60) : "00") + CertificateUtil.DELIMITER;
        int i3 = i % 60;
        this.a.setText(i3 > 9 ? str + i3 : str + "0" + i3);
        this.a.setVisibility(0);
    }
}
