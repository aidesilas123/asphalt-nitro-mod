package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.g;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;

/* JADX INFO: loaded from: classes.dex */
public class DynamicPrivacyView extends DynamicBaseWidgetImp {
    private TextView a;
    private TextView b;
    private TextView t;
    private LinearLayout u;

    public DynamicPrivacyView(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.a = new TextView(this.k);
        this.b = new TextView(this.k);
        this.u = new LinearLayout(this.k);
        this.t = new TextView(this.k);
        this.a.setTag(9);
        this.b.setTag(10);
        this.u.addView(this.b);
        this.u.addView(this.t);
        this.u.addView(this.a);
        addView(this.u, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    protected boolean d() {
        this.a.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.a.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.b.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.b.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.f753g, this.h);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        this.b.setText("Permission list");
        this.t.setText(" | ");
        this.a.setText("Privacy policy");
        g gVar = this.l;
        if (gVar != null) {
            this.b.setTextColor(gVar.g());
            this.b.setTextSize(this.l.e());
            this.t.setTextColor(this.l.g());
            this.a.setTextColor(this.l.g());
            this.a.setTextSize(this.l.e());
            return false;
        }
        this.b.setTextColor(-1);
        this.b.setTextSize(12.0f);
        this.t.setTextColor(-1);
        this.a.setTextColor(-1);
        this.a.setTextSize(12.0f);
        return false;
    }
}
