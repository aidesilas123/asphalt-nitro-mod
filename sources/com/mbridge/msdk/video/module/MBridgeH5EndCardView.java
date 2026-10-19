package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdError;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.video.signal.g;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeH5EndCardView extends MBridgeBaseView implements h, com.mbridge.msdk.mbsignalcommon.mraid.b, g {
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private long F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private String O;
    private boolean P;
    private boolean Q;
    protected View n;
    protected RelativeLayout o;
    protected ImageView p;
    protected WindVaneWebView q;
    protected Handler r;
    protected String s;
    protected boolean t;
    protected boolean u;
    protected String v;
    Handler w;
    boolean x;
    private boolean y;
    private boolean z;

    private class a implements Runnable {
        private MBridgeH5EndCardView b;

        public a(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.b = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e2) {
                aa.d("CloseRunnable", e2.getMessage());
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.b;
            if (mBridgeH5EndCardView == null || (handler = mBridgeH5EndCardView.w) == null) {
                return;
            }
            handler.sendEmptyMessage(100);
        }
    }

    private class b implements Runnable {
        private MBridgeH5EndCardView b;

        public b(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.b = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.b;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.D) {
                return;
            }
            this.b.D = true;
            this.b.t = false;
            MBridgeH5EndCardView.this.reportRenderResult("timeout", 5);
            this.b.f7551e.a(127, "");
            aa.a(MBridgeBaseView.TAG, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD");
        }
    }

    private static class c implements Runnable {
        private MBridgeH5EndCardView a;
        private int b;

        public c(MBridgeH5EndCardView mBridgeH5EndCardView, int i) {
            this.a = mBridgeH5EndCardView;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.a;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.b == null) {
                return;
            }
            try {
                if (mBridgeH5EndCardView.C) {
                    aa.b(MBridgeBaseView.TAG, "insertEndCardReadyState hasInsertLoadEndCardReport true return");
                    return;
                }
                this.a.C = true;
                n nVar = new n("2000043", 12, (this.b * 1000) + "", this.a.b.getendcard_url(), this.a.b.getId(), this.a.v, "ready timeout", (ak.b(this.a.b.getendcard_url()) && this.a.b.getendcard_url().contains(".zip")) ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP);
                try {
                    if (this.a.b.getAdType() == 287) {
                        nVar.h("3");
                    } else if (this.a.b.getAdType() == 94) {
                        nVar.h("1");
                    } else if (this.a.b.getAdType() == 42) {
                        nVar.h(MBridgeConstans.API_REUQEST_CATEGORY_APP);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                nVar.n(this.a.b.getRequestId());
                nVar.o(this.a.b.getCurrentLRid());
                nVar.p(this.a.b.getRequestIdNotice());
                nVar.c(this.a.b.getAdSpaceT());
                MBridgeH5EndCardView.b(nVar, this.a.b);
                MBridgeH5EndCardView mBridgeH5EndCardView2 = this.a;
                com.mbridge.msdk.foundation.same.report.n.a(nVar, mBridgeH5EndCardView2.v, mBridgeH5EndCardView2.b);
                this.a.isLoadSuccess();
            } catch (Throwable th) {
                aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
            }
        }
    }

    private class d implements Runnable {
        private MBridgeH5EndCardView b;

        public d(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.b = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.b;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.K = true;
            }
        }
    }

    private class e implements Runnable {
        private MBridgeH5EndCardView b;

        public e(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.b = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.b;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.L = true;
            }
        }
    }

    private class f implements Runnable {
        private MBridgeH5EndCardView b;

        public f(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.b = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.b;
            if (mBridgeH5EndCardView != null) {
                if (!mBridgeH5EndCardView.M) {
                    MBridgeH5EndCardView.this.setCloseVisible(0);
                }
                this.b.H = true;
            }
        }
    }

    public MBridgeH5EndCardView(Context context) {
        super(context);
        this.y = false;
        this.r = new Handler();
        this.t = false;
        this.u = false;
        this.z = false;
        this.A = 1;
        this.B = 1;
        this.C = false;
        this.D = false;
        this.E = 1;
        this.F = 0L;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = "";
        this.w = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.video.module.MBridgeH5EndCardView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 100) {
                    return;
                }
                if (MBridgeH5EndCardView.this.G) {
                    MBridgeH5EndCardView.this.f7551e.a(122, "");
                }
                MBridgeH5EndCardView.this.f7551e.a(103, "");
            }
        };
        this.P = false;
        this.Q = false;
        this.x = false;
    }

    public MBridgeH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = false;
        this.r = new Handler();
        this.t = false;
        this.u = false;
        this.z = false;
        this.A = 1;
        this.B = 1;
        this.C = false;
        this.D = false;
        this.E = 1;
        this.F = 0L;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = "";
        this.w = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.video.module.MBridgeH5EndCardView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 100) {
                    return;
                }
                if (MBridgeH5EndCardView.this.G) {
                    MBridgeH5EndCardView.this.f7551e.a(122, "");
                }
                MBridgeH5EndCardView.this.f7551e.a(103, "");
            }
        };
        this.P = false;
        this.Q = false;
        this.x = false;
    }

    static /* synthetic */ void a(MBridgeH5EndCardView mBridgeH5EndCardView, long j, boolean z) {
        String str;
        int i;
        int i2;
        try {
            if (mBridgeH5EndCardView.C) {
                return;
            }
            mBridgeH5EndCardView.C = true;
            String str2 = (ak.b(mBridgeH5EndCardView.b.getendcard_url()) && mBridgeH5EndCardView.b.getendcard_url().contains(".zip")) ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP;
            if (z) {
                str = "ready timeout";
                i = 12;
                i2 = 2;
            } else if (mBridgeH5EndCardView.E == 2) {
                str = "ready no";
                i = 11;
                i2 = 3;
            } else {
                str = "ready yes";
                i = 10;
                i2 = 1;
            }
            String str3 = str;
            String str4 = str;
            int i3 = i2;
            n nVar = new n("2000043", i, j + "", mBridgeH5EndCardView.b.getendcard_url(), mBridgeH5EndCardView.b.getId(), mBridgeH5EndCardView.v, str3, str2);
            try {
                if (mBridgeH5EndCardView.b.getAdType() == 287) {
                    nVar.h("3");
                } else if (mBridgeH5EndCardView.b.getAdType() == 94) {
                    nVar.h("1");
                } else if (mBridgeH5EndCardView.b.getAdType() == 42) {
                    nVar.h(MBridgeConstans.API_REUQEST_CATEGORY_APP);
                }
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
            nVar.n(mBridgeH5EndCardView.b.getRequestId());
            nVar.o(mBridgeH5EndCardView.b.getCurrentLRid());
            nVar.p(mBridgeH5EndCardView.b.getRequestIdNotice());
            nVar.c(mBridgeH5EndCardView.b.getAdSpaceT());
            b(nVar, mBridgeH5EndCardView.b);
            com.mbridge.msdk.foundation.same.report.n.a(nVar, mBridgeH5EndCardView.v, mBridgeH5EndCardView.b);
            if (mBridgeH5EndCardView.isLoadSuccess() || i3 != 1) {
                return;
            }
            nVar.e(i3);
            nVar.u(String.valueOf(j));
            nVar.r(mBridgeH5EndCardView.b.getId());
            nVar.t(str4);
            if (mBridgeH5EndCardView.b.isMraid()) {
                nVar.b(n.a);
            } else {
                nVar.f(mBridgeH5EndCardView.b.getendcard_url());
                nVar.g(str2);
                nVar.b(n.b);
            }
            com.mbridge.msdk.foundation.same.report.n.b(nVar, mBridgeH5EndCardView.v, mBridgeH5EndCardView.b);
        } catch (Throwable th) {
            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(n nVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), campaignEx.getCampaignUnitId());
            if (cVarA != null) {
                nVar.l(cVarA.l());
            }
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            if (aVarB != null) {
                nVar.k(aVarB.c());
            }
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    static /* synthetic */ void d(MBridgeH5EndCardView mBridgeH5EndCardView) {
        CampaignEx campaignEx = mBridgeH5EndCardView.b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i = mBridgeH5EndCardView.getResources().getConfiguration().orientation;
        String str = AdError.UNDEFINED_DOMAIN;
        if (i != 0) {
            if (i == 1) {
                str = o2.h.D;
            } else if (i == 2) {
                str = o2.h.C;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        HashMap map = new HashMap();
        map.put("placementType", "Interstitial");
        map.put("state", "default");
        map.put("viewable", "true");
        map.put("currentAppOrientation", jSONObject);
        if (mBridgeH5EndCardView.getContext() instanceof Activity) {
            float fL = w.l(mBridgeH5EndCardView.getContext());
            float fM = w.m(mBridgeH5EndCardView.getContext());
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) mBridgeH5EndCardView.getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f2 = displayMetrics.widthPixels;
            float f3 = displayMetrics.heightPixels;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(mBridgeH5EndCardView.q, fL, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(mBridgeH5EndCardView.q, f2, f3);
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(mBridgeH5EndCardView.q, r7.getLeft(), mBridgeH5EndCardView.q.getTop(), mBridgeH5EndCardView.q.getWidth(), mBridgeH5EndCardView.q.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(mBridgeH5EndCardView.q, r13.getLeft(), mBridgeH5EndCardView.q.getTop(), mBridgeH5EndCardView.q.getWidth(), mBridgeH5EndCardView.q.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(mBridgeH5EndCardView.q, map);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(mBridgeH5EndCardView.q, com.mbridge.msdk.mbsignalcommon.mraid.d.a);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(mBridgeH5EndCardView.q);
    }

    static /* synthetic */ void f(MBridgeH5EndCardView mBridgeH5EndCardView) {
        CampaignEx campaignEx = mBridgeH5EndCardView.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(mBridgeH5EndCardView.v);
            com.mbridge.msdk.foundation.c.b.a().c(mBridgeH5EndCardView.v + "_1");
            com.mbridge.msdk.foundation.c.b.a().a(mBridgeH5EndCardView.v + "_2", mBridgeH5EndCardView.b);
        }
        CampaignEx campaignEx2 = mBridgeH5EndCardView.b;
        if (campaignEx2 == null || !campaignEx2.isMraid()) {
            return;
        }
        ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.b.d().g());
        imageView.setBackgroundResource(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_notice", "drawable"));
        ImageView imageView2 = mBridgeH5EndCardView.p;
        RelativeLayout.LayoutParams layoutParams = imageView2 != null ? (RelativeLayout.LayoutParams) imageView2.getLayoutParams() : null;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f), af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f));
        layoutParams2.addRule(9);
        layoutParams2.addRule(10);
        if (layoutParams != null) {
            layoutParams2.leftMargin = layoutParams.rightMargin;
            layoutParams2.topMargin = layoutParams.topMargin;
            layoutParams2.width = layoutParams.width;
            layoutParams2.height = layoutParams.height;
        } else {
            layoutParams2.leftMargin = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f);
            layoutParams2.topMargin = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f);
        }
        mBridgeH5EndCardView.addView(imageView, layoutParams2);
        af.a(4, imageView, mBridgeH5EndCardView.b, com.mbridge.msdk.foundation.controller.b.d().g(), false, new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.module.MBridgeH5EndCardView.5
            @Override // com.mbridge.msdk.foundation.c.a
            public final void a() {
                String string;
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                        jSONObject.put("status", 1);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
                    string = "";
                }
                com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) MBridgeH5EndCardView.this.q, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void a(String str) {
                String string;
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                        jSONObject.put("status", 2);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
                    string = "";
                }
                com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) MBridgeH5EndCardView.this.q, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void b() {
                String string;
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                        jSONObject.put("status", 2);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
                    string = "";
                }
                com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) MBridgeH5EndCardView.this.q, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
            }
        });
    }

    protected String a() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null) {
            this.G = false;
            return null;
        }
        this.G = true;
        if (campaignEx.isMraid()) {
            this.z = false;
            String mraid = this.b.getMraid();
            if (TextUtils.isEmpty(mraid)) {
                return this.b.getEndScreenUrl();
            }
            File file = new File(mraid);
            try {
                if (file.exists() && file.isFile() && file.canRead()) {
                    mraid = "file:////" + mraid;
                } else {
                    mraid = this.b.getEndScreenUrl();
                }
                return mraid;
            } catch (Throwable th) {
                if (!MBridgeConstans.DEBUG) {
                    return mraid;
                }
                th.printStackTrace();
                return mraid;
            }
        }
        String str = this.b.getendcard_url();
        if (ak.a(str)) {
            this.z = false;
            return this.b.getEndScreenUrl();
        }
        this.z = true;
        String strB = com.mbridge.msdk.videocommon.download.g.a().b(str);
        if (!TextUtils.isEmpty(strB)) {
            return strB + "&native_adtype=" + this.b.getAdType();
        }
        try {
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(".zip")) {
                String endScreenUrl = this.b.getEndScreenUrl();
                if (TextUtils.isEmpty(endScreenUrl)) {
                    return null;
                }
                this.z = false;
                excuteTask();
                return endScreenUrl;
            }
        } catch (Throwable th2) {
            aa.d(MBridgeBaseView.TAG, th2.getMessage());
        }
        return str + "&native_adtype=" + this.b.getAdType();
    }

    protected RelativeLayout.LayoutParams b() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected final void c() {
        super.c();
        if (this.f7552f) {
            this.p.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeH5EndCardView.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MBridgeH5EndCardView.this.onCloseViewClick();
                }
            });
        }
    }

    public boolean canBackPress() {
        ImageView imageView = this.p;
        return imageView != null && imageView.getVisibility() == 0;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    protected void e() {
        if (this.f7552f) {
            setMatchParent();
        }
    }

    public void excuteEndCardShowTask(int i) {
        this.r.postDelayed(new c(this, i), i * 1000);
    }

    public void excuteTask() {
        if (this.z || this.A <= -1) {
            return;
        }
        this.r.postDelayed(new f(this), this.A * 1000);
    }

    public void executeEndCardShow(int i) {
        this.r.postDelayed(new b(this), i * 1000);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z) {
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.b;
    }

    public void handlerPlayableException(String str) {
        if (this.u) {
            return;
        }
        this.u = true;
        this.t = false;
        if (this.b != null) {
            n nVar = new n();
            nVar.n(this.b.getRequestId());
            nVar.p(this.b.getRequestIdNotice());
            nVar.r(this.b.getId());
            nVar.t(str);
            com.mbridge.msdk.foundation.same.report.n.d(nVar, this.a.getApplicationContext(), this.v);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_endcard_h5");
        if (iFindLayout >= 0) {
            View viewInflate = this.c.inflate(iFindLayout, (ViewGroup) null);
            this.n = viewInflate;
            try {
                this.p = (ImageView) viewInflate.findViewById(findID("mbridge_windwv_close"));
                this.o = (RelativeLayout) viewInflate.findViewById(findID("mbridge_windwv_content_rl"));
                this.q = new WindVaneWebView(getContext());
                this.q.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.o.addView(this.q);
                this.f7552f = isNotNULL(this.p, this.q);
            } catch (Exception unused) {
                this.f7552f = false;
            }
            addView(this.n, b());
            c();
            e();
        }
    }

    public void install(CampaignEx campaignEx) {
    }

    public boolean isLoadSuccess() {
        return this.t;
    }

    public boolean isPlayable() {
        return this.z;
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void notifyCloseBtn(int i) {
        if (i == 0) {
            this.I = true;
        } else {
            if (i != 1) {
                return;
            }
            this.J = true;
        }
    }

    public void onBackPress() {
        boolean z;
        if (this.H || (((z = this.I) && this.J) || (!(z || !this.K || this.x) || (!z && this.L && this.x)))) {
            onCloseViewClick();
        }
    }

    public void onCloseViewClick() {
        try {
            if (this.q != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) this.q, "onSystemDestory", "");
                new Thread(new a(this)).start();
            } else {
                this.f7551e.a(103, "");
                this.f7551e.a(119, "webview is null when closing webview");
            }
        } catch (Exception e2) {
            this.f7551e.a(103, "");
            this.f7551e.a(119, "close webview exception" + e2.getMessage());
            aa.a(MBridgeBaseView.TAG, e2.getMessage());
        }
        try {
            HashMap map = new HashMap();
            map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            m.a().c(this.b.getCurrentLRid(), "2000152", map);
            m.a().a("2000134", this.b, new HashMap());
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        ae.b(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        ae.b(campaign, this);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        ae.a(campaign, this);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0 || this.N) {
            return;
        }
        this.N = true;
        setFocusableInTouchMode(true);
        requestFocus();
        requestFocusFromTouch();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        if (z) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.q, "true");
        } else {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.q, "false");
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        try {
            String clickURL = this.b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.b.setClickURL(str);
                CampaignEx mraidCampaign = getMraidCampaign();
                if (mraidCampaign != null) {
                    new p(getContext()).b(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.v, str, this.b.isBidCampaign());
                }
            }
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), this.v);
            aVar.a(this);
            aVar.a(this.b);
            this.b.setClickURL(clickURL);
            this.f7551e.a(126, "");
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", o2.h.C);
            } else {
                jSONObject.put("orientation", o2.h.D);
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) this.q, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122 A[Catch: all -> 0x012a, TryCatch #0 {all -> 0x012a, blocks: (B:27:0x0099, B:29:0x00bb, B:31:0x00c1, B:34:0x00c9, B:36:0x00cf, B:38:0x00d7, B:40:0x00df, B:42:0x00e2, B:44:0x00e6, B:46:0x00ee, B:48:0x00f6, B:50:0x00fc, B:52:0x0103, B:60:0x0122, B:61:0x0126, B:53:0x010e, B:55:0x0113, B:57:0x0119), top: B:72:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0126 A[Catch: all -> 0x012a, TRY_LEAVE, TryCatch #0 {all -> 0x012a, blocks: (B:27:0x0099, B:29:0x00bb, B:31:0x00c1, B:34:0x00c9, B:36:0x00cf, B:38:0x00d7, B:40:0x00df, B:42:0x00e2, B:44:0x00e6, B:46:0x00ee, B:48:0x00f6, B:50:0x00fc, B:52:0x0103, B:60:0x0122, B:61:0x0126, B:53:0x010e, B:55:0x0113, B:57:0x0119), top: B:72:0x0099 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b r11) {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeH5EndCardView.preLoadData(com.mbridge.msdk.video.signal.factory.b):void");
    }

    public void readyStatus(int i) {
    }

    public void release() {
        Handler handler = this.r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.r = null;
        }
        Handler handler2 = this.w;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.w = null;
        }
        this.o.removeAllViews();
        m.a().a(this.b);
        this.q.release();
        this.q = null;
    }

    public void reportRenderResult(String str, int i) {
        if (this.b == null || this.u) {
            return;
        }
        n nVar = new n();
        nVar.n(this.b.getRequestId());
        nVar.p(this.b.getRequestIdNotice());
        nVar.r(this.b.getId());
        nVar.e(i);
        nVar.u(String.valueOf(System.currentTimeMillis() - this.F));
        nVar.t(str);
        int adType = this.b.getAdType();
        String str2 = MBridgeConstans.API_REUQEST_CATEGORY_APP;
        if (adType == 287) {
            nVar.h("3");
        } else if (this.b.getAdType() == 94) {
            nVar.h("1");
        } else if (this.b.getAdType() == 42) {
            nVar.h(MBridgeConstans.API_REUQEST_CATEGORY_APP);
        }
        if (this.b.isMraid()) {
            nVar.b(n.a);
        } else {
            nVar.f(this.b.getendcard_url());
            if (ak.b(this.b.getendcard_url()) && this.b.getendcard_url().contains(".zip")) {
                str2 = "1";
            }
            nVar.g(str2);
            nVar.b(n.b);
        }
        com.mbridge.msdk.foundation.same.report.n.b(nVar, this.v, this.b);
    }

    public void setCloseDelayShowTime(int i) {
        this.A = i;
    }

    public void setCloseVisible(int i) {
        if (this.f7552f) {
            this.p.setVisibility(i);
        }
    }

    public void setCloseVisibleForMraid(int i) {
        if (this.f7552f) {
            this.M = true;
            if (i == 4) {
                this.p.setImageDrawable(new ColorDrawable(16711680));
            } else {
                this.p.setImageResource(findDrawable("mbridge_reward_close"));
            }
            this.p.setVisibility(0);
        }
    }

    public void setError(boolean z) {
        this.u = z;
    }

    public void setHtmlSource(String str) {
        this.s = str;
    }

    public void setLoadPlayable(boolean z) {
        this.x = z;
    }

    public void setNotchValue(String str, int i, int i2, int i3, int i4) {
        this.O = str;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
            return;
        }
        aa.d(MBridgeBaseView.TAG, "NOTCH H5ENDCARD " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
        int iB = af.b(getContext(), 20.0f);
        layoutParams.setMargins(i + iB, i3 + iB, i2 + iB, i4 + iB);
        this.p.setLayoutParams(layoutParams);
    }

    public void setPlayCloseBtnTm(int i) {
        this.B = i;
    }

    public void setUnitId(String str) {
        this.v = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String str = this.b.getendcard_url();
            int iA = 15;
            if (ak.b(str) && str.contains("wfl=1")) {
                String[] strArrSplit = str.split(o2.i.c);
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str2 : strArrSplit) {
                        if (ak.b(str2) && str2.contains("timeout") && str2.split(o2.i.b) != null && str2.split(o2.i.b).length > 0) {
                            iA = af.a((Object) str2.split(o2.i.b)[1]);
                        }
                    }
                }
                executeEndCardShow(iA);
            }
        } catch (Throwable th) {
            aa.a(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void toggleCloseBtn(int i) {
        int visibility = this.p.getVisibility();
        if (i == 1) {
            this.H = true;
            visibility = 0;
        } else if (i == 2) {
            this.H = false;
            visibility = 8;
            if (this.x) {
                if (!this.Q && !this.I) {
                    this.Q = true;
                    int i2 = this.B;
                    if (i2 == 0) {
                        this.L = true;
                    } else {
                        this.L = false;
                        if (i2 > -1) {
                            this.r.postDelayed(new e(this), this.B * 1000);
                        }
                    }
                }
            } else if (!this.P && !this.I) {
                this.P = true;
                int i3 = this.A;
                if (i3 == 0) {
                    this.K = true;
                } else {
                    this.K = false;
                    if (i3 > -1) {
                        this.r.postDelayed(new d(this), this.A * 1000);
                    }
                }
            }
        }
        setCloseVisible(visibility);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z) {
        try {
            setCloseVisibleForMraid(z ? 4 : 0);
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void volumeChange(double d2) {
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.q, d2);
    }

    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.q;
        if (windVaneWebView != null) {
            windVaneWebView.post(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeH5EndCardView.4
                @Override // java.lang.Runnable
                public final void run() {
                    String string;
                    try {
                        aa.a(MBridgeBaseView.TAG, "webviewshow");
                        try {
                            int[] iArr = new int[2];
                            MBridgeH5EndCardView.this.q.getLocationOnScreen(iArr);
                            aa.d(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                            JSONObject jSONObject = new JSONObject();
                            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                            if (contextG != null) {
                                jSONObject.put("startX", af.a(contextG, iArr[0]));
                                jSONObject.put("startY", af.a(contextG, iArr[1]));
                                jSONObject.put(com.mbridge.msdk.foundation.same.a.k, af.e(contextG));
                            }
                            string = jSONObject.toString();
                        } catch (Throwable th) {
                            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
                            string = "";
                        }
                        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) MBridgeH5EndCardView.this.q, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
                        MBridgeH5EndCardView.this.f7551e.a(109, "");
                        MBridgeH5EndCardView.d(MBridgeH5EndCardView.this);
                        MBridgeH5EndCardView.this.startCounterEndCardShowTimer();
                        com.mbridge.msdk.mbsignalcommon.windvane.g gVarA = com.mbridge.msdk.mbsignalcommon.windvane.g.a();
                        MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
                        gVarA.a((WebView) mBridgeH5EndCardView.q, "oncutoutfetched", Base64.encodeToString(mBridgeH5EndCardView.O.getBytes(), 0));
                        MBridgeH5EndCardView.f(MBridgeH5EndCardView.this);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }
}
