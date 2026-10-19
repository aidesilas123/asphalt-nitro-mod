package com.bytedance.sdk.component.adexpress.layout;

import android.content.Context;
import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class TTHandShake extends LinearLayout implements a {
    private Context a;
    private LinearLayout b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f802e;

    public TTHandShake(Context context) {
        super(context);
        this.a = context;
        a();
    }

    private void a() {
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        setOrientation(1);
        this.b = new LinearLayout(this.a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) e.a(this.a, 110.0f), (int) e.a(this.a, 110.0f));
        this.b.setLayoutParams(layoutParams);
        layoutParams.gravity = 17;
        this.b.setGravity(17);
        this.b.setOrientation(1);
        addView(this.b);
        ImageView imageView = new ImageView(this.a);
        this.c = imageView;
        imageView.setLayoutParams(new LinearLayout.LayoutParams((int) e.a(this.a, 60.0f), (int) e.a(this.a, 60.0f)));
        this.c.setImageDrawable(s.c(this.a, "tt_splash_rock"));
        this.b.addView(this.c);
        this.f801d = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f801d.setSingleLine(true);
        this.f801d.setLayoutParams(layoutParams2);
        this.f801d.setTextColor(-1);
        this.f801d.setText("Shake it");
        this.f801d.setTextSize(14.0f);
        this.f801d.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        this.b.addView(this.f801d);
        this.f802e = new TextView(this.a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        this.f802e.setLayoutParams(layoutParams3);
        layoutParams3.gravity = 17;
        layoutParams3.topMargin = (int) e.a(this.a, 12.0f);
        this.f802e.setTextColor(-1);
        this.f802e.setText("Go to details page or third-party application");
        this.f802e.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        addView(this.f802e);
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
        return this.f802e;
    }

    @Override // com.bytedance.sdk.component.adexpress.layout.a
    public TextView getRockTopText() {
        return this.f801d;
    }
}
