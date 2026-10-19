package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTDynamicClickSlideUp2 extends LinearLayout {
    ImageView a;
    ImageView b;
    ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f793e;

    public TTDynamicClickSlideUp2(Context context) {
        super(context);
        this.f793e = context;
        a();
    }

    private void a() {
        setGravity(81);
        setOrientation(1);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this.f793e);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) e.a(this.f793e, 100.0f)));
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        addView(linearLayout);
        FrameLayout frameLayout = new FrameLayout(this.f793e);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.a = new ImageView(this.f793e);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) e.a(this.f793e, 19.0f), (int) e.a(this.f793e, 15.0f));
        this.a.setLayoutParams(layoutParams);
        layoutParams.gravity = 1;
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        this.a.setImageDrawable(s.c(this.f793e, "tt_white_slide_up"));
        frameLayout.addView(this.a);
        this.b = new ImageView(this.f793e);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) e.a(this.f793e, 19.0f), (int) e.a(this.f793e, 15.0f));
        this.b.setLayoutParams(layoutParams2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = (int) e.a(this.f793e, 7.0f);
        this.b.setScaleType(ImageView.ScaleType.FIT_XY);
        this.b.setImageDrawable(s.c(this.f793e, "tt_white_slide_up"));
        frameLayout.addView(this.b);
        this.c = new ImageView(this.f793e);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) e.a(this.f793e, 19.0f), (int) e.a(this.f793e, 15.0f));
        this.c.setLayoutParams(layoutParams3);
        layoutParams3.gravity = 1;
        layoutParams3.topMargin = (int) e.a(this.f793e, 14.0f);
        this.c.setScaleType(ImageView.ScaleType.FIT_XY);
        this.c.setImageDrawable(s.c(this.f793e, "tt_white_slide_up"));
        frameLayout.addView(this.c);
        linearLayout.addView(frameLayout);
        View view = new View(this.f793e);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        view.setLayoutParams(layoutParams4);
        linearLayout.addView(view);
        this.f792d = new TextView(this.f793e);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
        marginLayoutParams.bottomMargin = (int) e.a(this.f793e, 5.0f);
        this.f792d.setLayoutParams(marginLayoutParams);
        this.f792d.setGravity(1);
        this.f792d.setTextColor(-1);
        this.f792d.setTextSize(14.0f);
        linearLayout.addView(this.f792d);
    }

    public ImageView getIv1() {
        return this.a;
    }

    public ImageView getIv2() {
        return this.b;
    }

    public ImageView getIv3() {
        return this.c;
    }

    public TextView getTvButText() {
        return this.f792d;
    }
}
