package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.dynamic.c.j;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class DynamicLogoAd extends DynamicBaseWidgetImp {
    public DynamicLogoAd(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        TextView textView = new TextView(context);
        this.o = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.o, getWidgetLayoutParams());
    }

    private boolean a() {
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.l.b) && this.l.b.contains("adx:")) || j.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        if (Build.VERSION.SDK_INT >= 17) {
            this.o.setTextAlignment(this.l.h());
        }
        ((TextView) this.o).setTextColor(this.l.g());
        ((TextView) this.o).setTextSize(this.l.e());
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            ((TextView) this.o).setIncludeFontPadding(false);
            ((TextView) this.o).setTextSize(Math.min(((com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), this.h) - this.l.b()) - this.l.a()) - 0.5f, this.l.e()));
            ((TextView) this.o).setText(s.a(getContext(), "tt_logo_en"));
            return true;
        }
        if (!a()) {
            ((TextView) this.o).setText(s.b(getContext(), "tt_logo_cn"));
            return true;
        }
        if (j.b()) {
            ((TextView) this.o).setText(j.a());
            return true;
        }
        ((TextView) this.o).setText(j.a(this.l.b));
        return true;
    }
}
