package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.CircleLongPressView;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpShakeView;
import com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView;
import com.bytedance.sdk.component.adexpress.widget.RippleView;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView;
import com.json.t9;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes.dex */
public class InteractViewContainer extends FrameLayout implements h {
    private Context a;
    private DynamicBaseWidget b;
    private com.bytedance.sdk.component.adexpress.dynamic.b.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RippleView f763g;
    private View.OnTouchListener h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private DynamicBrushMaskView n;

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        super(context);
        this.a = context;
        this.b = dynamicBaseWidget;
        this.c = gVar;
        f();
    }

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar, int i, int i2, int i3, int i4) {
        super(context);
        this.a = context;
        this.b = dynamicBaseWidget;
        this.c = gVar;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
        f();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(ViewGroup viewGroup) {
        if (this.f760d == null) {
            return;
        }
        String str = this.f762f;
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    b = 0;
                }
                break;
            case 50:
                if (str.equals(MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
                    b = 1;
                }
                break;
            case 53:
                if (str.equals(CampaignEx.CLICKMODE_ON)) {
                    b = 2;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    b = 3;
                }
                break;
            case 55:
                if (str.equals(t9.f6640e)) {
                    b = 4;
                }
                break;
            case 56:
                if (str.equals("8")) {
                    b = 5;
                }
                break;
            case 57:
                if (str.equals("9")) {
                    b = 6;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b = 7;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b = 8;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b = 9;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    b = 10;
                }
                break;
            case 1571:
                if (str.equals("14")) {
                    b = Ascii.VT;
                }
                break;
            case 1573:
                if (str.equals("16")) {
                    b = Ascii.FF;
                }
                break;
            case 1574:
                if (str.equals("17")) {
                    b = Ascii.CR;
                }
                break;
            case 1575:
                if (str.equals("18")) {
                    b = Ascii.SO;
                }
                break;
            case 1598:
                if (str.equals("20")) {
                    b = Ascii.SI;
                }
                break;
            case 1600:
                if (str.equals("22")) {
                    b = Ascii.DLE;
                }
                break;
            case 1602:
                if (str.equals("24")) {
                    b = 17;
                }
                break;
            case 1607:
                if (str.equals("29")) {
                    b = Ascii.DC2;
                }
                break;
        }
        switch (b) {
            case 0:
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.d(this, this.i);
                setBackgroundColor(Color.parseColor("#80000000"));
                break;
            case 1:
            case 4:
                setBackgroundColor(Color.parseColor("#80000000"));
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.b(this, this);
                break;
            case 2:
                if (!this.c.V() || TextUtils.isEmpty(this.c.W())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                } else {
                    setBackgroundColor(com.bytedance.sdk.component.adexpress.dynamic.b.g.a(this.c.W()));
                }
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.c(this);
                break;
            case 3:
                if (!this.c.V() || TextUtils.isEmpty(this.c.W())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.e(this);
                break;
            case 5:
            case 8:
                this.b.setClipChildren(false);
                this.b.setClipChildren(false);
                ViewGroup viewGroup2 = (ViewGroup) this.b.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.e(this);
                break;
            case 6:
            case 13:
                this.f760d.setTag(2);
                break;
            case 7:
            case 10:
            case 17:
                if (this.f762f.equals("24") && com.bytedance.sdk.component.adexpress.d.b()) {
                    this.b.setClipChildren(false);
                    this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.e(this);
                } else {
                    this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.d(this, this.i);
                }
                break;
            case 9:
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.c(this);
                break;
            case 11:
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.b(this, this);
                break;
            case 12:
                View view = this.f760d;
                if (view != null && (view instanceof ShakeAnimationView) && ((ShakeAnimationView) view).getShakeLayout() != null) {
                    ((ShakeAnimationView) this.f760d).getShakeLayout().setTag(2);
                }
                this.f760d.setTag(2);
                break;
            case 14:
                View view2 = this.f760d;
                if (view2 != null && (view2 instanceof WriggleGuideAnimationView) && ((WriggleGuideAnimationView) view2).getWriggleLayout() != null) {
                    ((WriggleGuideAnimationView) this.f760d).getWriggleLayout().setTag(2);
                }
                this.f760d.setTag(2);
                break;
            case 15:
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.a(this, this.i, viewGroup);
                break;
            case 16:
                if (!com.bytedance.sdk.component.adexpress.d.b()) {
                    this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.f(this, this.i, viewGroup);
                } else {
                    this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.d(this, this.i);
                }
                break;
            case 18:
                View view3 = this.f760d;
                if (view3 != null && (view3 instanceof ClickSlideUpShakeView) && ((ClickSlideUpShakeView) view3).getShakeView() != null) {
                    ((ClickSlideUpShakeView) this.f760d).getShakeView().setTag(2);
                }
                this.h = new com.bytedance.sdk.component.adexpress.dynamic.interact.a.d(this, this.i);
                break;
        }
        View.OnTouchListener onTouchListener = this.h;
        if (onTouchListener != null) {
            setOnTouchListener(onTouchListener);
        }
        if (g()) {
            setOnClickListener((View.OnClickListener) this.b.getDynamicClickListener());
        }
    }

    private void f() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.f762f = this.c.K();
        this.i = this.c.M();
        g gVarA = i.a(this.a, this.b, this.c, this.j, this.k, this.l, this.m);
        this.f761e = gVarA;
        if (gVarA != null) {
            this.f760d = gVarA.c();
            if (TextUtils.equals(this.f762f, "6")) {
                if (!this.c.V() || TextUtils.isEmpty(this.c.W())) {
                    this.f763g = new RippleView(this.a, Color.parseColor("#99000000"));
                } else {
                    this.f763g = new RippleView(this.a, com.bytedance.sdk.component.adexpress.dynamic.b.g.a(this.c.W()));
                }
                FrameLayout frameLayout = new FrameLayout(this.a);
                frameLayout.addView(this.f763g, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.f763g.b();
                    }
                });
            }
            if (TextUtils.equals(this.f762f, "20")) {
                this.n = (DynamicBrushMaskView) this.f761e.c();
            }
            if (TextUtils.equals(this.f762f, "24") && com.bytedance.sdk.component.adexpress.d.b()) {
                int color = Color.parseColor("#99000000");
                if (this.c.V() && !TextUtils.isEmpty(this.c.W())) {
                    try {
                        color = com.bytedance.sdk.component.adexpress.dynamic.b.g.a(this.c.W());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.a);
                view.setBackgroundColor(color);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.f761e.c());
            a(this.f761e.c());
            setVisibility(0);
        }
    }

    private boolean g() {
        return (this.c.U() || TextUtils.equals("9", this.f762f) || TextUtils.equals("16", this.f762f) || TextUtils.equals("17", this.f762f) || TextUtils.equals("18", this.f762f) || TextUtils.equals("20", this.f762f) || TextUtils.equals("29", this.f762f) || TextUtils.equals("10", this.f762f)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.h != null) {
            setOnClickListener((View.OnClickListener) this.b.getDynamicClickListener());
            performClick();
            setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.h
    public void a() {
        if (TextUtils.equals(this.f762f, "6")) {
            RippleView rippleView = this.f763g;
            if (rippleView != null) {
                rippleView.c();
                postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.h();
                    }
                }, 300L);
                return;
            }
            return;
        }
        if (!TextUtils.equals(this.f762f, "20")) {
            h();
            return;
        }
        DynamicBrushMaskView dynamicBrushMaskView = this.n;
        if (dynamicBrushMaskView != null) {
            dynamicBrushMaskView.b();
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.3
                @Override // java.lang.Runnable
                public void run() {
                    InteractViewContainer.this.h();
                }
            }, 400L);
        }
    }

    public void b() {
        g gVar = this.f761e;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void c() {
        g gVar = this.f761e;
        if (gVar != null) {
            gVar.b();
        }
    }

    public void d() {
        if (this.f760d != null && TextUtils.equals(this.f762f, MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
            View view = this.f760d;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).c();
            }
        }
    }

    public void e() {
        if (this.f760d != null && TextUtils.equals(this.f762f, MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
            View view = this.f760d;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).d();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            g gVar = this.f761e;
            if (gVar != null) {
                gVar.b();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.d(e2.getMessage());
        }
    }
}
