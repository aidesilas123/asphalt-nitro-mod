package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.widget.BrushMaskView;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTDynamicSplashLayoutBrushMaskView extends RelativeLayout {
    private Context a;
    private BrushMaskView b;
    private RelativeLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f797d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f798e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FrameLayout f799f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f800g;

    public TTDynamicSplashLayoutBrushMaskView(Context context) {
        super(context);
        this.a = context;
        a();
    }

    private void a() {
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        FrameLayout frameLayout = new FrameLayout(this.a);
        this.f799f = frameLayout;
        frameLayout.setId(com.bytedance.sdk.component.adexpress.dynamic.a.l);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) e.a(this.a, 300.0f), (int) e.a(this.a, 60.0f));
        layoutParams.addRule(14);
        this.f799f.setLayoutParams(layoutParams);
        this.f799f.setBackgroundResource(s.d(this.a, "tt_interact_round_rect"));
        addView(this.f799f);
        BrushMaskView brushMaskView = new BrushMaskView(this.a);
        this.b = brushMaskView;
        brushMaskView.setId(com.bytedance.sdk.component.adexpress.dynamic.a.m);
        this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f799f.addView(this.b);
        this.f797d = new ImageView(this.a);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.a, 150.0f), (int) e.a(this.a, 30.0f));
        layoutParams2.leftMargin = (int) e.a(this.a, 40.0f);
        layoutParams2.topMargin = (int) e.a(this.a, 30.0f);
        this.f797d.setLayoutParams(layoutParams2);
        this.f797d.setBackgroundResource(s.d(this.a, "tt_interact_round_rect"));
        this.f799f.addView(this.f797d);
        RelativeLayout relativeLayout = new RelativeLayout(this.a);
        relativeLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f799f.addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this.a);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        relativeLayout.addView(linearLayout);
        TextView textView = new TextView(this.a);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText(s.b(this.a, "tt_splash_brush_mask_title"));
        textView.setTextColor(-1);
        textView.setTextSize(20.0f);
        linearLayout.addView(textView);
        this.f798e = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = (int) e.a(this.a, 5.0f);
        layoutParams3.leftMargin = (int) e.a(this.a, 20.0f);
        layoutParams3.rightMargin = (int) e.a(this.a, 20.0f);
        this.f798e.setLayoutParams(layoutParams3);
        this.f798e.setText(s.b(this.a, "tt_splash_brush_mask_hint"));
        this.f798e.setTextColor(-1);
        this.f798e.setTextSize(14.0f);
        linearLayout.addView(this.f798e);
        this.c = new RelativeLayout(this.a);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.leftMargin = (int) e.a(this.a, 40.0f);
        layoutParams4.rightMargin = (int) e.a(this.a, 30.0f);
        this.c.setLayoutParams(layoutParams4);
        ImageView imageView = new ImageView(this.a);
        this.f800g = imageView;
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f800g.setImageDrawable(s.c(this.a, "tt_splash_hand3"));
        this.c.addView(this.f800g);
        addView(this.c);
    }

    public RelativeLayout getBrushHandRelativeLayout() {
        return this.c;
    }

    public BrushMaskView getBrushMaskView() {
        return this.b;
    }

    public TextView getBrushView() {
        return this.f798e;
    }

    public ImageView getFirstStepImage() {
        return this.f797d;
    }

    public ImageView getImageHand() {
        return this.f800g;
    }

    public FrameLayout getSplashBrushFl() {
        return this.f799f;
    }
}
