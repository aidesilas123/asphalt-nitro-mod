package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTHandShake16 extends LinearLayout implements a {
    private Context a;
    private LinearLayout b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f804e;

    public TTHandShake16(Context context) {
        super(context);
        this.a = context;
        a();
    }

    private void a() {
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        setOrientation(1);
        this.b = new LinearLayout(this.a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) e.a(this.a, 80.0f), (int) e.a(this.a, 80.0f));
        this.b.setLayoutParams(layoutParams);
        layoutParams.gravity = 17;
        this.b.setGravity(17);
        this.b.setOrientation(1);
        ImageView imageView = new ImageView(this.a);
        this.c = imageView;
        imageView.setLayoutParams(new LinearLayout.LayoutParams((int) e.a(this.a, 60.0f), (int) e.a(this.a, 60.0f)));
        this.c.setImageDrawable(s.c(this.a, "tt_splash_rock"));
        this.b.addView(this.c);
        addView(this.b);
        this.f803d = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        this.f803d.setSingleLine(true);
        layoutParams2.topMargin = (int) e.a(this.a, 12.0f);
        this.f803d.setLayoutParams(layoutParams2);
        this.f803d.setTextColor(-1);
        this.f803d.setText(s.b(this.a, "tt_splash_rock_top_text"));
        this.f803d.setTextSize(18.0f);
        this.f803d.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        addView(this.f803d);
        this.f804e = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        this.f804e.setLayoutParams(layoutParams3);
        this.f804e.setTextColor(-1);
        this.f804e.setText(s.b(this.a, "tt_splash_rock_text"));
        this.f804e.setTextSize(14.0f);
        this.f804e.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        addView(this.f804e);
    }

    @Override // com.bytedance.sdk.component.adexpress.layout.a
    public LinearLayout getHandContainer() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.adexpress.layout.a
    public ImageView getRockImg() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.adexpress.layout.a
    public TextView getRockText() {
        return this.f804e;
    }

    @Override // com.bytedance.sdk.component.adexpress.layout.a
    public TextView getRockTopText() {
        return this.f803d;
    }
}
