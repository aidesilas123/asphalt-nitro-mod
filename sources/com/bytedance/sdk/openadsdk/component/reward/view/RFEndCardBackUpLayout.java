package com.bytedance.sdk.openadsdk.component.reward.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class RFEndCardBackUpLayout extends PAGFrameLayout {
    private boolean a;
    private com.bytedance.sdk.openadsdk.component.reward.a.a b;
    private TTRoundRectImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f1424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TTRatingBar2 f1425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f1426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f1427g;
    private PAGLogoView h;

    public RFEndCardBackUpLayout(Context context) {
        super(context);
        setVisibility(8);
        setId(i.ap);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void a() {
        if (this.a) {
            return;
        }
        this.a = true;
        q qVar = this.b.a;
        if (qVar.at()) {
            b();
            return;
        }
        c();
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.b.e eVarE = this.b.L.e();
        this.f1427g.setOnClickListener(eVarE);
        this.f1427g.setOnTouchListener(eVarE);
        String strX = qVar.X();
        if (!TextUtils.isEmpty(strX)) {
            this.f1427g.setText(strX);
        }
        TTRoundRectImageView tTRoundRectImageView = this.c;
        if (tTRoundRectImageView != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) tTRoundRectImageView.getLayoutParams();
            layoutParams.setMargins(0, ad.b(context, 50.0f), 0, 0);
            this.c.setLayoutParams(layoutParams);
        }
        if (this.c != null && qVar.N() != null && !TextUtils.isEmpty(qVar.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(qVar.N(), this.c, qVar);
        }
        TTRatingBar2 tTRatingBar2 = this.f1425e;
        if (tTRatingBar2 != null) {
            ad.a((TextView) null, tTRatingBar2, qVar);
        }
        if (this.f1424d != null) {
            if (qVar.aa() == null || TextUtils.isEmpty(qVar.aa().b())) {
                this.f1424d.setText(qVar.V());
            } else {
                this.f1424d.setText(qVar.aa().b());
            }
        }
        TextView textView = this.f1426f;
        if (textView != null) {
            ad.a(textView, qVar, getContext(), "tt_comment_num_backup");
        }
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.a(RFEndCardBackUpLayout.this.b.V, RFEndCardBackUpLayout.this.b.a, RFEndCardBackUpLayout.this.b.f1317g);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void b() {
        Context context = getContext();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setId(i.h);
        pAGImageView.setVisibility(8);
        addView(pAGImageView, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setVisibility(8);
        sSWebView.setId(i.i);
        addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
    }

    private void c() {
        Context context = getContext();
        setBackgroundColor(-1);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setGravity(1);
        pAGLinearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addView(pAGLinearLayout, layoutParams);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.c = tTRoundRectImageView;
        tTRoundRectImageView.setBackgroundColor(0);
        pAGLinearLayout.addView(this.c, new LinearLayout.LayoutParams(ad.b(context, 100.0f), ad.b(context, 100.0f)));
        PAGTextView pAGTextView = new PAGTextView(context);
        this.f1424d = pAGTextView;
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.f1424d.setSingleLine(true);
        this.f1424d.setMaxWidth(ad.b(context, 180.0f));
        this.f1424d.setTextColor(Color.parseColor("#ff333333"));
        this.f1424d.setTextSize(2, 20.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, ad.b(context, 28.0f));
        layoutParams2.topMargin = ad.b(context, 16.0f);
        pAGLinearLayout.addView(this.f1424d, layoutParams2);
        this.f1425e = new TTRatingBar2(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, ad.b(context, 16.0f));
        layoutParams3.topMargin = ad.b(context, 12.0f);
        pAGLinearLayout.addView(this.f1425e, layoutParams3);
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.f1426f = pAGTextView2;
        pAGTextView2.setEllipsize(TextUtils.TruncateAt.END);
        this.f1426f.setSingleLine(true);
        this.f1426f.setTextColor(Color.parseColor("#ff93959a"));
        this.f1426f.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, ad.b(context, 20.0f));
        layoutParams4.topMargin = ad.b(context, 8.0f);
        pAGLinearLayout.addView(this.f1426f, layoutParams4);
        PAGTextView pAGTextView3 = new PAGTextView(context);
        this.f1427g = pAGTextView3;
        pAGTextView3.setId(520093707);
        this.f1427g.setGravity(17);
        this.f1427g.setText(s.b(context, "tt_video_download_apk"));
        this.f1427g.setTextColor(-1);
        this.f1427g.setTextSize(2, 16.0f);
        this.f1427g.setBackgroundResource(s.d(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, ad.b(context, 46.0f));
        int iB = ad.b(context, 20.0f);
        layoutParams5.bottomMargin = iB;
        layoutParams5.rightMargin = iB;
        layoutParams5.topMargin = iB;
        layoutParams5.leftMargin = iB;
        pAGLinearLayout.addView(this.f1427g, layoutParams5);
        this.h = new PAGLogoView(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, ad.b(context, 14.0f));
        layoutParams6.gravity = 8388691;
        layoutParams6.bottomMargin = ad.b(context, 16.0f);
        layoutParams6.leftMargin = ad.b(context, 20.0f);
        pAGLinearLayout.addView(this.h, layoutParams6);
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.b = aVar;
        if (aVar.a.at()) {
            a();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            a();
        }
    }
}
