package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.widget.FlowLightView;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTDynamicSplashInteractUnlock extends RelativeLayout {
    private Context a;
    private RelativeLayout b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FlowLightView f795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f796f;

    public TTDynamicSplashInteractUnlock(Context context) {
        super(context);
        this.a = context;
        a();
    }

    private void a() {
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        RelativeLayout relativeLayout = new RelativeLayout(this.a);
        this.b = relativeLayout;
        int i = com.bytedance.sdk.component.adexpress.dynamic.a.f700g;
        relativeLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) e.a(this.a, 247.0f), (int) e.a(this.a, 56.0f));
        layoutParams.addRule(14);
        this.b.setLayoutParams(layoutParams);
        this.b.setBackgroundResource(s.d(this.a, "tt_splash_unlock_btn_bg"));
        addView(this.b);
        this.f794d = new ImageView(this.a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) e.a(this.a, 48.0f), (int) e.a(this.a, 48.0f));
        this.f794d.setLayoutParams(layoutParams2);
        layoutParams2.addRule(20);
        layoutParams2.addRule(15);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams2.setMarginStart((int) e.a(this.a, 4.0f));
        } else {
            layoutParams2.leftMargin = (int) e.a(this.a, 4.0f);
        }
        this.f794d.setImageDrawable(s.c(this.a, "tt_splash_unlock_image_go"));
        ImageView imageView = this.f794d;
        int i3 = com.bytedance.sdk.component.adexpress.dynamic.a.h;
        imageView.setId(i3);
        this.b.addView(this.f794d);
        FlowLightView flowLightView = new FlowLightView(this.a);
        this.f795e = flowLightView;
        flowLightView.setId(com.bytedance.sdk.component.adexpress.dynamic.a.i);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) e.a(this.a, 24.0f));
        layoutParams3.addRule(15);
        int i4 = com.bytedance.sdk.component.adexpress.dynamic.a.j;
        layoutParams3.addRule(16, i4);
        layoutParams3.addRule(17, i3);
        layoutParams3.addRule(15);
        if (i2 >= 17) {
            layoutParams3.setMarginStart((int) e.a(this.a, 12.0f));
            layoutParams3.setMarginEnd((int) e.a(this.a, 12.0f));
        } else {
            layoutParams3.leftMargin = (int) e.a(this.a, 12.0f);
            layoutParams3.rightMargin = (int) e.a(this.a, 12.0f);
        }
        this.f795e.setLayoutParams(layoutParams3);
        this.b.addView(this.f795e);
        ImageView imageView2 = new ImageView(this.a);
        this.f796f = imageView2;
        imageView2.setId(i4);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) e.a(this.a, 48.0f), (int) e.a(this.a, 48.0f));
        layoutParams4.addRule(21);
        layoutParams4.addRule(15);
        if (i2 >= 17) {
            layoutParams4.setMarginStart((int) e.a(this.a, 2.0f));
            layoutParams4.setMarginEnd((int) e.a(this.a, 4.0f));
        } else {
            layoutParams4.leftMargin = (int) e.a(this.a, 2.0f);
            layoutParams4.rightMargin = (int) e.a(this.a, 4.0f);
        }
        this.f796f.setLayoutParams(layoutParams4);
        this.f796f.setImageDrawable(s.c(this.a, "tt_splash_unlock_icon_empty"));
        this.b.addView(this.f796f);
        TextView textView = new TextView(this.a);
        this.c = textView;
        textView.setId(com.bytedance.sdk.component.adexpress.dynamic.a.k);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = (int) e.a(this.a, 12.0f);
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, i);
        this.c.setLayoutParams(layoutParams5);
        this.c.setGravity(17);
        this.c.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        this.c.setTextColor(-1);
        addView(this.c);
    }

    public FlowLightView getFlowLightView() {
        return this.f795e;
    }

    public RelativeLayout getUnlockBtn() {
        return this.b;
    }

    public ImageView getUnlockEmpty() {
        return this.f796f;
    }

    public ImageView getUnlockGo() {
        return this.f794d;
    }

    public TextView getUnlockText() {
        return this.c;
    }
}
