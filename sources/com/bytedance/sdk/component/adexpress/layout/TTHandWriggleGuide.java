package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideView;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTHandWriggleGuide extends LinearLayout {
    private Context a;
    private LinearLayout b;
    private WriggleGuideView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f807f;

    public TTHandWriggleGuide(Context context) {
        super(context);
        this.a = context;
        a();
    }

    private void a() {
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        setOrientation(1);
        this.b = new LinearLayout(this.a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) e.a(this.a, 110.0f), (int) e.a(this.a, 110.0f));
        layoutParams.gravity = 17;
        this.b.setBottom((int) e.a(this.a, 4.0f));
        this.b.setLayoutParams(layoutParams);
        this.b.setGravity(17);
        this.b.setOrientation(1);
        addView(this.b);
        WriggleGuideView wriggleGuideView = new WriggleGuideView(this.a);
        this.c = wriggleGuideView;
        wriggleGuideView.setLayoutParams(new LinearLayout.LayoutParams((int) e.a(this.a, 60.0f), (int) e.a(this.a, 20.0f)));
        this.b.addView(this.c);
        ImageView imageView = new ImageView(this.a);
        this.f805d = imageView;
        imageView.setLayoutParams(new LinearLayout.LayoutParams((int) e.a(this.a, 60.0f), (int) e.a(this.a, 60.0f)));
        this.f805d.setImageDrawable(s.c(this.a, "tt_splash_twist"));
        this.b.addView(this.f805d);
        this.f806e = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f806e.setLayoutParams(layoutParams2);
        this.f806e.setSingleLine(true);
        this.f806e.setTextColor(-1);
        this.f806e.setText(s.b(this.a, "tt_splash_wriggle_top_text"));
        this.f806e.setTextSize(18.0f);
        this.f806e.setTypeface(null, 1);
        this.f806e.setShadowLayer(2.0f, 0.0f, 1.0f, Color.parseColor("#4D000000"));
        addView(this.f806e);
        this.f807f = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        this.f807f.setLayoutParams(layoutParams3);
        this.f807f.setSingleLine(true);
        this.f807f.setTextColor(-1);
        this.f807f.setText(s.b(this.a, "tt_splash_wriggle_text"));
        this.f807f.setTextSize(14.0f);
        this.f807f.setTypeface(null, 1);
        this.f807f.setShadowLayer(2.0f, 0.0f, 1.0f, Color.parseColor("#4D000000"));
        addView(this.f807f);
    }

    public TextView getBarText() {
        return this.f807f;
    }

    public WriggleGuideView getProgressImg() {
        return this.c;
    }

    public ImageView getTopImage() {
        return this.f805d;
    }

    public TextView getTopText() {
        return this.f806e;
    }

    public LinearLayout getWriggleLayout() {
        return this.b;
    }
}
