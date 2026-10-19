package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.c;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenHtmlLayout extends PAGAppOpenBaseLayout {
    a n;

    public interface a {
        void a();

        void a(View view, int i);

        void b();
    }

    public PAGAppOpenHtmlLayout(Context context, q qVar) {
        super(context);
        a(context, qVar);
    }

    private void a(Context context, q qVar) {
        DspHtmlWebView dspHtmlWebView = new DspHtmlWebView(context);
        c.a().c(dspHtmlWebView);
        dspHtmlWebView.a(qVar, new DspHtmlWebView.b() { // from class: com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
            public View a() {
                PAGAppOpenTopBarView pAGAppOpenTopBarView = PAGAppOpenHtmlLayout.this.i;
                if (pAGAppOpenTopBarView != null) {
                    return pAGAppOpenTopBarView.getTopDislike();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
            public void a(int i, int i2) {
                a aVar = PAGAppOpenHtmlLayout.this.n;
                if (aVar != null) {
                    aVar.b();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
            public void a(View view, int i) {
                a aVar = PAGAppOpenHtmlLayout.this.n;
                if (aVar != null) {
                    aVar.a(view, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
            public View b() {
                return PAGAppOpenHtmlLayout.this;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.b
            public void b_() {
                a aVar = PAGAppOpenHtmlLayout.this.n;
                if (aVar != null) {
                    aVar.a();
                }
            }
        }, "open_ad");
        addView(dspHtmlWebView, new ViewGroup.LayoutParams(-1, -1));
        dspHtmlWebView.p();
        int iB = ad.b(context, 9.0f);
        int iB2 = ad.b(context, 10.0f);
        this.f1442d = new PAGLogoView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, ad.b(context, 14.0f));
        layoutParams.leftMargin = iB2;
        layoutParams.bottomMargin = iB2;
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        addView(this.f1442d, layoutParams);
        DSPAdChoice dSPAdChoice = new DSPAdChoice(context);
        this.m = dSPAdChoice;
        dSPAdChoice.setPadding(iB, 0, iB, 0);
        this.m.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ad.b(context, 32.0f), ad.b(context, 14.0f));
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(0, 0, iB2, iB2);
        addView(this.m, layoutParams2);
        View view = this.i;
        if (view != null) {
            addView(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n = null;
    }

    public void setRenderListener(a aVar) {
        this.n = aVar;
    }
}
