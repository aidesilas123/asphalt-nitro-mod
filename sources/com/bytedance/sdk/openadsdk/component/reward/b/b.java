package com.bytedance.sdk.openadsdk.component.reward.b;

import android.content.Context;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.b.b;
import com.bytedance.sdk.openadsdk.component.reward.a.j;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: compiled from: RewardFullAdType.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends com.bytedance.sdk.openadsdk.component.reward.b.a {
    protected String k;
    protected com.bytedance.sdk.openadsdk.core.b.e l;
    public com.bytedance.sdk.openadsdk.core.widget.a m;
    public LinearLayout n;
    private com.bytedance.sdk.openadsdk.i.e o;

    /* JADX INFO: compiled from: RewardFullAdType.java */
    public interface a {
        void a(boolean z);
    }

    public b(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        super(aVar);
    }

    protected static FrameLayout a(Context context) {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        pAGFrameLayout.setId(com.bytedance.sdk.openadsdk.utils.i.k);
        pAGFrameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        pAGFrameLayout.setLayoutParams(layoutParams);
        return pAGFrameLayout;
    }

    static void b(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        pAGFrameLayout.setId(com.bytedance.sdk.openadsdk.utils.i.j);
        frameLayout.addView(pAGFrameLayout, new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(a(context));
        RFDownloadBarLayout rFDownloadBarLayout = new RFDownloadBarLayout(context);
        rFDownloadBarLayout.setId(com.bytedance.sdk.openadsdk.utils.i.l);
        rFDownloadBarLayout.setPadding(ad.b(context, 15.0f), 0, 0, 0);
        rFDownloadBarLayout.setBackgroundColor(s.h(context, "tt_download_bar_background_new"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ad.b(context, 90.0f));
        layoutParams.gravity = 80;
        frameLayout.addView(rFDownloadBarLayout, layoutParams);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setId(com.bytedance.sdk.openadsdk.utils.i.m);
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setVisibility(8);
        frameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.n);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        frameLayout.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView2 = new SSWebView(context, true);
        sSWebView2.setId(com.bytedance.sdk.openadsdk.utils.i.o);
        sSWebView2.setVisibility(8);
        frameLayout.addView(sSWebView2, new FrameLayout.LayoutParams(-1, -1));
    }

    private void c(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout.addView(pAGRelativeLayout, new FrameLayout.LayoutParams(-1, -1));
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        int i = com.bytedance.sdk.openadsdk.utils.i.k;
        pAGFrameLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ad.b(context, 211.0f));
        layoutParams.addRule(13);
        pAGRelativeLayout.addView(pAGFrameLayout, layoutParams);
        View view = new View(context);
        view.setVisibility(8);
        view.setId(com.bytedance.sdk.openadsdk.utils.i.p);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(2, i);
        pAGRelativeLayout.addView(view, layoutParams2);
        RFDownloadBarLayout rFDownloadBarLayout = new RFDownloadBarLayout(context);
        rFDownloadBarLayout.setId(com.bytedance.sdk.openadsdk.utils.i.l);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ad.b(context, 280.0f), ad.b(context, 70.0f));
        layoutParams3.addRule(2, i);
        layoutParams3.addRule(14);
        layoutParams3.bottomMargin = ad.b(context, 33.0f);
        pAGRelativeLayout.addView(rFDownloadBarLayout, layoutParams3);
        View view2 = new View(context);
        view2.setId(com.bytedance.sdk.openadsdk.utils.i.aq);
        view2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(3, i);
        pAGRelativeLayout.addView(view2, layoutParams4);
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setLines(1);
        pAGTextView.setGravity(17);
        pAGTextView.setText(s.b(context, "tt_video_download_apk"));
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 15.0f);
        pAGTextView.setBackgroundResource(s.d(context, "tt_reward_video_download_btn_bg"));
        pAGTextView.setId(520093705);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ad.b(context, 260.0f), ad.b(context, 36.0f));
        layoutParams5.addRule(3, i);
        layoutParams5.addRule(14);
        layoutParams5.topMargin = ad.b(context, 70.0f);
        pAGRelativeLayout.addView(pAGTextView, layoutParams5);
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.n);
        pAGRelativeLayout.addView(sSWebView, new RelativeLayout.LayoutParams(-1, -1));
        SSWebView sSWebView2 = new SSWebView(context, true);
        sSWebView2.setVisibility(8);
        sSWebView2.setId(com.bytedance.sdk.openadsdk.utils.i.o);
        pAGRelativeLayout.addView(sSWebView2, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void d(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        frameLayout.addView(a(context));
        RFDownloadBarLayout rFDownloadBarLayout = new RFDownloadBarLayout(context);
        rFDownloadBarLayout.setBackgroundResource(s.d(context, "tt_reward_full_new_bar_bg"));
        rFDownloadBarLayout.setPadding(ad.b(context, 15.0f), 0, 0, 0);
        rFDownloadBarLayout.setId(com.bytedance.sdk.openadsdk.utils.i.l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ad.b(context, 76.0f));
        layoutParams.gravity = 80;
        layoutParams.leftMargin = ad.b(context, 10.0f);
        layoutParams.rightMargin = ad.b(context, 10.0f);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(layoutParams.leftMargin);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        layoutParams.bottomMargin = ad.b(context, 14.0f);
        frameLayout.addView(rFDownloadBarLayout, layoutParams);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setId(com.bytedance.sdk.openadsdk.utils.i.m);
        pAGLinearLayout.setVisibility(8);
        frameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.n);
        frameLayout.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView2 = new SSWebView(context, true);
        sSWebView2.setVisibility(8);
        sSWebView2.setId(com.bytedance.sdk.openadsdk.utils.i.o);
        frameLayout.addView(sSWebView2, new FrameLayout.LayoutParams(-1, -1));
    }

    private void e(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        frameLayout.addView(a(context));
        RFDownloadBarLayout rFDownloadBarLayout = new RFDownloadBarLayout(context);
        rFDownloadBarLayout.setBackgroundResource(s.d(context, "tt_reward_full_new_bar_bg"));
        rFDownloadBarLayout.setPadding(ad.b(context, 15.0f), 0, 0, 0);
        rFDownloadBarLayout.setId(com.bytedance.sdk.openadsdk.utils.i.l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ad.b(context, 76.0f));
        layoutParams.gravity = 80;
        layoutParams.leftMargin = ad.b(context, 10.0f);
        layoutParams.rightMargin = ad.b(context, 10.0f);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(layoutParams.leftMargin);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        layoutParams.bottomMargin = ad.b(context, 14.0f);
        frameLayout.addView(rFDownloadBarLayout, layoutParams);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setId(com.bytedance.sdk.openadsdk.utils.i.m);
        pAGLinearLayout.setVisibility(8);
        frameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.i.n);
        frameLayout.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        SSWebView sSWebView2 = new SSWebView(context, true);
        sSWebView2.setVisibility(8);
        sSWebView2.setId(com.bytedance.sdk.openadsdk.utils.i.o);
        frameLayout.addView(sSWebView2, new FrameLayout.LayoutParams(-1, -1));
    }

    protected final void A() {
        if (this.a.V.isFinishing()) {
            return;
        }
        this.a.Q.m();
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        String str = aVar.f1316f ? "reward_endcard" : "fullscreen_endcard";
        aVar.Q.a(Boolean.valueOf(aVar.V.o()), this.o, str);
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.a;
        aVar2.Q.a(str, aVar2.V);
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar3 = this.a;
        aVar3.I.a(this.o, aVar3.f1314d);
        this.a.Q.e();
    }

    protected boolean B() {
        return true;
    }

    public void a(int i) {
        this.f1346e.m();
        a(false, true, false, i);
        if (this.a.f1316f) {
            this.i.c(10000);
        }
    }

    public void a(Message message) {
        l.b("TTAD.RFAdType", "handleMsg: " + message.what);
        int i = message.what;
        if (i == 1) {
            x();
            return;
        }
        if (i == 300) {
            a(b.a.b);
            com.bytedance.sdk.openadsdk.component.reward.a.l lVar = this.a.G;
            lVar.a(!lVar.z() ? 1 : 0, 1 ^ (this.a.G.z() ? 1 : 0));
            if (this.a.a.au() == null || this.a.a.au().a() == null) {
                return;
            }
            this.a.a.au().a().a(com.bytedance.sdk.openadsdk.core.g.a.a.GENERAL_LINEAR_AD_ERROR);
            return;
        }
        if (i == 400) {
            this.a.G.m();
            a(false, true, false, 3);
            return;
        }
        if (i == 500) {
            if (!t.b(this.a.a)) {
                this.a.R.c(false);
            }
            SSWebView sSWebViewH = this.a.Q.h();
            if (sSWebViewH != null && sSWebViewH.getWebView() != null) {
                sSWebViewH.i();
                sSWebViewH.getWebView().resumeTimers();
            }
            if (this.a.Q.h() != null) {
                this.a.Q.a(1.0f);
                this.a.T.a(1.0f);
            }
            if (!this.a.V.o() && this.a.G.b() && this.a.C.get()) {
                this.a.G.m();
                return;
            }
            return;
        }
        if (i == 600) {
            p();
            return;
        }
        if (i != 700) {
            return;
        }
        int i2 = message.arg1;
        if (this.a.F.get()) {
            return;
        }
        if (i2 <= 0) {
            this.j.removeMessages(700);
            if (t.c(this.b) && this.a.Q.p()) {
                x();
                return;
            } else {
                p();
                return;
            }
        }
        this.a.R.b();
        this.a.R.a((i2 / 1000) + "s");
        this.a.R.e(false);
        Message messageObtain = Message.obtain();
        messageObtain.what = 700;
        messageObtain.arg1 = i2 - 1000;
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.t -= 1000;
        this.j.sendMessageDelayed(messageObtain, 1000L);
    }

    public abstract void a(FrameLayout frameLayout);

    public void a(RewardFullBaseLayout rewardFullBaseLayout) {
        int iB = this.b.B();
        if (iB == 1 && !t.k(this.b)) {
            c(rewardFullBaseLayout);
            return;
        }
        if (iB == 3) {
            d(rewardFullBaseLayout);
        } else if (iB == 5) {
            e(rewardFullBaseLayout);
        } else {
            b(rewardFullBaseLayout);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.a
    public void a(com.bytedance.sdk.openadsdk.core.video.c.b bVar, x xVar) {
        super.a(bVar, xVar);
        if (this.a.V.p()) {
            this.a.Q.a(false);
        }
        if (t.k(this.a.a)) {
            this.a.I.f();
        }
    }

    public void a(com.bytedance.sdk.openadsdk.i.e eVar) {
        this.o = eVar;
        c();
        if (!this.a.a.at() && B()) {
            A();
        }
        if (B()) {
            this.a.S.b();
        }
        if (o.c(this.a.a)) {
            this.j.sendEmptyMessageDelayed(500, 100L);
        }
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.T.a(aVar.k == 100.0f);
        y();
        g();
    }

    public void a(boolean z, boolean z2, boolean z3, int i) {
        this.a.S.a(z, z2, z3, this, i);
    }

    public a d() {
        return null;
    }

    public abstract boolean e();

    public abstract boolean f();

    public abstract void g();

    public RFEndCardBackUpLayout h() {
        return new RFEndCardBackUpLayout(this.a.V);
    }

    public View i() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this.a.V);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(this.a.V);
        pAGRelativeLayout.setId(520093708);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ad.b(this.a.V, 28.0f), ad.b(this.a.V, 28.0f));
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = ad.b(this.a.V, 20.0f);
        layoutParams.rightMargin = ad.b(this.a.V, 24.0f);
        pAGRelativeLayout.setLayoutParams(layoutParams);
        pAGRelativeLayout.setBackgroundResource(s.d(this.a.V, "tt_mute_btn_bg"));
        pAGRelativeLayout.setGravity(17);
        pAGRelativeLayout.setVisibility(8);
        pAGRelativeLayout.setContentDescription(s.a(this.a.V, "tt_ad_close_text"));
        PAGImageView pAGImageView = new PAGImageView(this.a.V);
        pAGImageView.setId(520093706);
        pAGImageView.setLayoutParams(new RelativeLayout.LayoutParams(ad.b(this.a.V, 12.0f), ad.b(this.a.V, 12.0f)));
        pAGImageView.setImageResource(s.d(this.a.V, "tt_video_close_drawable"));
        pAGImageView.setContentDescription(s.a(this.a.V, "tt_ad_close_text"));
        pAGRelativeLayout.addView(pAGImageView);
        PAGLogoView pAGLogoView = new PAGLogoView(this.a.V);
        pAGLogoView.setId(520093757);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, ad.b(this.a.V, 14.0f));
        layoutParams2.gravity = 8388691;
        layoutParams2.leftMargin = ad.b(this.a.V, 16.0f);
        layoutParams2.bottomMargin = ad.b(this.a.V, 100.0f);
        pAGLogoView.setLayoutParams(layoutParams2);
        PAGImageView pAGImageView2 = new PAGImageView(this.a.V);
        pAGImageView2.setId(com.bytedance.sdk.openadsdk.utils.i.bh);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(ad.b(this.a.V, 32.0f), ad.b(this.a.V, 14.0f));
        layoutParams3.gravity = 8388693;
        layoutParams3.rightMargin = ad.b(this.a.V, 7.0f);
        layoutParams3.bottomMargin = ad.b(this.a.V, 100.0f);
        pAGImageView2.setLayoutParams(layoutParams3);
        pAGImageView2.setPadding(ad.b(this.a.V, 9.0f), 0, ad.b(this.a.V, 9.0f), 0);
        pAGImageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
        PlayableLoadingView playableLoadingView = new PlayableLoadingView(this.a.V);
        playableLoadingView.setId(com.bytedance.sdk.openadsdk.utils.i.bi);
        playableLoadingView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        playableLoadingView.setClickable(true);
        playableLoadingView.setFocusable(true);
        View topProxyLayout = new TopProxyLayout(this.a.V);
        topProxyLayout.setId(com.bytedance.sdk.openadsdk.utils.i.bj);
        topProxyLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        pAGFrameLayout.addView(pAGRelativeLayout);
        pAGFrameLayout.addView(pAGLogoView);
        pAGFrameLayout.addView(pAGImageView2);
        pAGFrameLayout.addView(playableLoadingView);
        pAGFrameLayout.addView(topProxyLayout);
        return pAGFrameLayout;
    }

    public View j() {
        PAGRelativeLayout pAGRelativeLayout;
        if (this.b.B() != 5) {
            pAGRelativeLayout = new PAGRelativeLayout(this.a.V);
            pAGRelativeLayout.setId(com.bytedance.sdk.openadsdk.utils.i.bg);
        } else {
            pAGRelativeLayout = null;
        }
        l.b("TTAD.RFAdType", "getLoadingFrameView" + pAGRelativeLayout);
        return pAGRelativeLayout;
    }

    protected int k() {
        float f2 = 100.0f;
        if (this.b.B() == 1 && !t.k(this.b)) {
            f2 = 20.0f;
        }
        return ad.b(this.a.W, com.bytedance.sdk.openadsdk.core.model.l.a(this.b) ? 20.0f : f2);
    }

    public void l() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.K.a(aVar.f1316f);
        this.a.T.b();
        this.a.T.a(k());
        this.a.S.a();
        if (!this.a.a.at()) {
            if (this.a.s) {
                m();
            }
            this.a.Q.a();
        }
        this.a.I.a();
        this.a.R.a();
        if (t.b(this.a.a)) {
            this.a.Q.h().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.a.Q.i().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.a.R.c(true);
            if (t.k(this.a.a)) {
                this.a.T.d();
                ad.a((View) this.a.Q.h(), 4);
                ad.a((View) this.a.Q.i(), 0);
            }
        }
        if (o.c(this.a.a) || o.b(this.a.a)) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.a;
        aVar2.T.a(ad.b(aVar2.W, aVar2.l), ad.b(this.a.W, r4.m));
        this.a.H.a();
        if (t.k(this.a.a)) {
            this.a.Q.a(true);
            this.a.Q.e();
            a(false, false, false, b.a.c);
        } else if (this.a.V.q()) {
            this.a.T.b(0);
        }
    }

    public void m() {
        LinearLayout linearLayout = (LinearLayout) this.a.V.findViewById(com.bytedance.sdk.openadsdk.utils.i.m);
        this.n = linearLayout;
        ad.a((View) linearLayout, 8);
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.P = new com.bytedance.sdk.openadsdk.common.f(aVar.V, aVar.a, "landingpage_endcard");
        this.a.P.c().setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.b.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.a.T.j().performClick();
            }
        });
        this.n.addView(this.a.P.e(), new LinearLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.a;
        aVar2.Q.a(aVar2.P);
    }

    public void n() {
    }

    public void o() {
        com.bytedance.sdk.openadsdk.core.widget.a aVar = this.m;
        if (aVar == null || !aVar.isShowing()) {
            return;
        }
        this.m.dismiss();
    }

    public void p() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        if (aVar.s) {
            return;
        }
        aVar.R.f();
        this.a.T.f(0);
    }

    public void q() {
        this.j.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
    }

    public void r() {
        if (this.a.u.get()) {
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
            if (aVar.s || !aVar.F.getAndSet(false)) {
                return;
            }
            int i = this.a.t;
            if (i >= 0 || i == -1) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 700;
                com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.a;
                messageObtain.arg1 = aVar2.t;
                aVar2.X.sendMessage(messageObtain);
            }
        }
    }

    public void s() {
    }

    public void t() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        if (aVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.view.e eVar = aVar.T;
        if (eVar != null) {
            eVar.q();
        }
        this.a.f1315e = false;
        l.b("TTAD.RFAdType", "onPause mIsActivityShow=" + this.a.f1315e + " mIsMute=" + this.a.f1314d);
        if (!this.a.v.get()) {
            this.a.G.j();
        }
        q();
        this.a.Q.r();
        this.a.I.m();
        if (this.a.u.get()) {
            this.a.F.set(true);
        }
    }

    public void u() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        if (aVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.view.e eVar = aVar.T;
        if (eVar != null) {
            eVar.p();
        }
        l.b("TTAD.RFAdType", "onStop mIsMute=" + this.a.f1314d + " mLast=" + this.a.O.a() + " mVolume=" + DeviceUtils.f());
        this.a.Q.q();
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.a;
        if (aVar2.f1314d) {
            aVar2.V.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.b.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.a.O.a() > 0) {
                        b.this.a.O.a(false);
                    }
                }
            });
        }
    }

    public void v() {
        com.bytedance.sdk.openadsdk.component.reward.view.c cVar = this.a.J;
        if (cVar != null) {
            cVar.f();
        }
        com.bytedance.sdk.openadsdk.component.reward.view.e eVar = this.a.T;
        if (eVar != null) {
            eVar.n();
        }
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        aVar.G.d(aVar.f1316f);
        if (!e() && !this.a.u.get()) {
            this.a.Q.x();
        }
        this.a.Q.n();
        this.a.I.e();
        this.a.T.l();
        this.a.S.c();
        this.a.K.b();
    }

    public void w() {
        com.bytedance.sdk.openadsdk.component.reward.a.g gVar;
        j jVar;
        if (com.bytedance.sdk.openadsdk.core.o.d().s(String.valueOf(this.a.o)) == 1) {
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
            int iA = aVar.f1316f ? t.k(aVar.a) ? com.bytedance.sdk.openadsdk.core.o.d().a(String.valueOf(this.a.o), true) : com.bytedance.sdk.openadsdk.core.o.d().j(String.valueOf(this.a.o)) : t.k(aVar.a) ? com.bytedance.sdk.openadsdk.core.o.d().a(String.valueOf(this.a.o), false) : com.bytedance.sdk.openadsdk.core.o.d().q(String.valueOf(this.a.o));
            com.bytedance.sdk.openadsdk.component.reward.view.e eVar = this.a.T;
            if (eVar != null && eVar.i()) {
                com.bytedance.sdk.openadsdk.component.reward.view.e eVar2 = this.a.T;
                if (eVar2 != null) {
                    eVar2.j().performClick();
                    return;
                }
                return;
            }
            if ((!this.a.u.get() || t.k(this.a.a)) && iA != -1) {
                com.bytedance.sdk.openadsdk.component.reward.a.l lVar = this.a.G;
                if (((lVar == null || lVar.h() < ((long) iA) * 1000) && ((gVar = this.a.I) == null || gVar.j() - this.a.I.k() < iA)) || (jVar = this.a.R) == null) {
                    return;
                }
                jVar.d();
            }
        }
    }

    public void x() {
        this.a.R.c();
        this.a.R.e(true);
    }

    public void y() {
        this.l = this.a.L.c();
    }

    public void z() {
        if (!f() && ((this instanceof g) || (this instanceof h))) {
            this.a.L.b();
        } else {
            if (this.i.a(this.f1346e.i(), false)) {
                return;
            }
            this.j.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
            a(b.a.a);
            com.bytedance.sdk.openadsdk.component.reward.a.l lVar = this.f1346e;
            lVar.a(!lVar.z() ? 1 : 0, 4);
        }
    }
}
