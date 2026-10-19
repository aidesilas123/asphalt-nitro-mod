package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenThreeLayout extends PAGAppOpenOneLayout {
    public PAGAppOpenThreeLayout(Context context) {
        super(context);
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenOneLayout
    public View a(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ad.b(context, 48.0f));
        layoutParams.addRule(12);
        layoutParams.bottomMargin = ad.b(context, 60.0f);
        pAGLinearLayout.setLayoutParams(layoutParams);
        pAGLinearLayout.setOrientation(0);
        View view = new View(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = ad.b(context, 53.0f);
        view.setLayoutParams(layoutParams2);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = ad.b(context, 47.0f);
        pAGLinearLayout2.setLayoutParams(layoutParams3);
        ButtonFlash buttonFlash = new ButtonFlash(context);
        this.f1443e = buttonFlash;
        buttonFlash.setId(520093717);
        this.f1443e.setLayoutParams(new RelativeLayout.LayoutParams(ad.b(context, 236.0f), ad.b(context, 48.0f)));
        this.f1443e.setBackground(s.c(context, "tt_button_back"));
        this.f1443e.setEllipsize(TextUtils.TruncateAt.END);
        this.f1443e.setGravity(17);
        this.f1443e.setLines(1);
        this.f1443e.setText(s.b(context, "tt_video_download_apk"));
        this.f1443e.setTextColor(Color.parseColor("#FFFFFF"));
        this.f1443e.setTextSize(1, 16.0f);
        this.f1443e.setTag("open_ad_click_button_tag");
        pAGLinearLayout2.addView(this.f1443e);
        pAGLinearLayout.addView(view);
        pAGLinearLayout.addView(pAGLinearLayout2);
        return pAGLinearLayout;
    }
}
