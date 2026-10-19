package com.mbridge.msdk.mbbanner.common.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.iab.omid.library.mmadbridge.ScriptInjector;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.json.b4;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.h;
import com.mbridge.msdk.foundation.db.k;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.mbbanner.common.b.f;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbanner.view.MBBannerWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.MBAdChoice;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: BannerShowManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private float A;
    com.mbridge.msdk.click.a a;
    private com.mbridge.msdk.mbbanner.common.b.c b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CampaignEx f7288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MBBannerView f7289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f7290f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MBBannerWebView f7291g;
    private ImageView h;
    private ImageView i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private final String q;
    private final String r;
    private List<CampaignEx> s;
    private int t;
    private com.mbridge.msdk.mbbanner.common.bridge.a v;
    private AdSession w;
    private float z;
    private final long u = 15000;
    private final Handler x = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.mbbanner.common.c.c.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            try {
                if (c.this.w != null) {
                    AdEvents.createAdEvents(c.this.w).impressionOccurred();
                    c.this.w.finish();
                    c.this.w = null;
                }
            } catch (Throwable th) {
                aa.a("BannerShowManager", th.getMessage());
            }
        }
    };
    private final com.mbridge.msdk.foundation.same.e.a y = new com.mbridge.msdk.foundation.same.e.a() { // from class: com.mbridge.msdk.mbbanner.common.c.c.6
        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void a() {
            c.this.a("banner render failed because render is timeout");
        }

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void b() {
        }
    };
    private final View.OnClickListener B = new View.OnClickListener() { // from class: com.mbridge.msdk.mbbanner.common.c.c.7
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (c.this.p) {
                c.c(c.this);
            }
        }
    };
    private com.mbridge.msdk.mbbanner.common.b.a C = new com.mbridge.msdk.mbbanner.common.b.a() { // from class: com.mbridge.msdk.mbbanner.common.c.c.8
        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a() {
            c.c(c.this);
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a(int i) {
            if (i == 2) {
                c.d(c.this);
            } else {
                c.this.f();
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a(CampaignEx campaignEx) {
            c.this.a(campaignEx);
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a(String str) {
            c.c(c.this);
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a(boolean z) {
            if (c.this.b != null) {
                c.this.o = z;
                if (z) {
                    c.this.b.c();
                } else {
                    c.this.b.d();
                }
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void a(boolean z, String str) {
            try {
                if (c.this.b != null) {
                    if (TextUtils.isEmpty(str)) {
                        c.this.b.a();
                        c.this.b.b();
                        return;
                    }
                    CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(c.this.f7288d));
                    campaignWithBackData.setClickURL(str);
                    if (z) {
                        String str2 = c.this.q;
                        try {
                            if (!TextUtils.isEmpty(str)) {
                                new p(com.mbridge.msdk.foundation.controller.b.d().g()).b(campaignWithBackData.getRequestId(), campaignWithBackData.getRequestIdNotice(), campaignWithBackData.getId(), str2, str, campaignWithBackData.isBidCampaign());
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    c.this.a(campaignWithBackData);
                }
            } catch (Exception e3) {
                aa.d("BannerShowManager", e3.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.a
        public final void b(int i) {
            if (i != 1) {
                c.this.c();
            } else {
                c.this.d();
                c.this.a("", 1);
            }
        }
    };
    private com.mbridge.msdk.mbsignalcommon.b.b D = new com.mbridge.msdk.mbsignalcommon.b.b() { // from class: com.mbridge.msdk.mbbanner.common.c.c.4
        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView) {
            c.this.c();
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            c.this.a(str);
            c.this.a(str, 2);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            c.this.l = true;
            aa.d("BannerCallJS", "fireOnSignalCommunication");
            g.a().a(webView);
            c.this.n = true;
            if (c.this.f7288d == null || c.this.f7288d.isHasMBTplMark()) {
                return;
            }
            c.this.d();
            c.this.a("", 1);
        }
    };

    public c(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.b.c cVar, String str, String str2, boolean z, h hVar) {
        this.c = z;
        this.f7289e = mBBannerView;
        this.q = str2;
        this.r = str;
        this.b = new f(cVar, hVar);
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, it.next(), false, true);
                }
            } catch (Throwable th) {
                aa.d("BannerShowManager", th.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.f7288d == null || e()) {
            return;
        }
        this.x.removeCallbacks(this.y);
        com.mbridge.msdk.mbbanner.common.b.c cVar = this.b;
        if (cVar != null) {
            cVar.a(str);
        }
        q.b(com.mbridge.msdk.foundation.controller.b.d().g(), this.f7288d, this.q, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        if (this.f7288d != null) {
            com.mbridge.msdk.mbbanner.common.d.a.a(com.mbridge.msdk.mbbanner.common.a.a.a().c(this.f7288d.getId()).b(this.q).e(this.f7288d.getRequestId()).d(this.f7288d.getRequestIdNotice()).g(str).a(i).a(this.f7288d.isBidCampaign()), this.q);
        }
    }

    private String b(CampaignEx campaignEx) {
        String strInjectScriptContentIntoHtml;
        if (campaignEx == null) {
            return "";
        }
        String strB = com.mbridge.msdk.videocommon.download.h.a().b(campaignEx.getBannerUrl());
        if (!TextUtils.isEmpty(strB)) {
            return ScriptInjector.injectScriptContentIntoHtml(MBridgeConstans.OMID_JS_SERVICE_CONTENT, strB);
        }
        String bannerHtml = campaignEx.getBannerHtml();
        if (!campaignEx.isActiveOm()) {
            File file = new File(bannerHtml);
            if (file.exists() && file.isFile() && file.canRead()) {
                strInjectScriptContentIntoHtml = "file:////" + bannerHtml;
                return strInjectScriptContentIntoHtml;
            }
            return bannerHtml;
        }
        try {
            File file2 = new File(bannerHtml);
            strInjectScriptContentIntoHtml = ScriptInjector.injectScriptContentIntoHtml(MBridgeConstans.OMID_JS_SERVICE_CONTENT, file2.exists() ? y.a(file2) : "");
        } catch (Exception unused) {
            File file3 = new File(bannerHtml);
            if (file3.exists() && file3.isFile() && file3.canRead()) {
                strInjectScriptContentIntoHtml = "file:////" + bannerHtml;
            }
            return bannerHtml;
        }
        return strInjectScriptContentIntoHtml;
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.a.a.h);
            } catch (Throwable th) {
                aa.d("BannerShowManager", th.getMessage());
            }
        }
    }

    private boolean b() {
        String strB = b(this.f7288d);
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        if (this.f7289e != null) {
            if (this.f7291g == null) {
                try {
                    MBBannerWebView mBBannerWebView = new MBBannerWebView(com.mbridge.msdk.foundation.controller.b.d().g());
                    this.f7291g = mBBannerWebView;
                    mBBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f7291g.setWebViewClient(new com.mbridge.msdk.mbbanner.view.a(this.q, this.s, this.C));
                } catch (Throwable unused) {
                    a("banner show failed because WebView is not available and try to show default", 1);
                    return false;
                }
            }
            ImageView imageView = this.f7290f;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (this.f7291g.getVisibility() != 0) {
                this.f7291g.setVisibility(0);
            }
            if (this.f7291g.getParent() == null) {
                this.f7289e.addView(this.f7291g);
            }
            d(this.f7288d.isMraid());
            if (this.f7288d.isMraid()) {
                g();
            }
            this.f7288d.setCampaignUnitId(this.q);
            com.mbridge.msdk.foundation.c.b.a().a(this.q, this.f7288d);
            f();
            com.mbridge.msdk.mbbanner.common.bridge.a aVar = new com.mbridge.msdk.mbbanner.common.bridge.a(this.f7289e.getContext(), this.r, this.q);
            this.v = aVar;
            aVar.a(this.s);
            this.v.a(this.C);
            this.v.a(this.t);
            this.f7291g.setWebViewListener(this.D);
            this.f7291g.setObject(this.v);
            if (strB.startsWith("file")) {
                this.f7291g.loadUrl(strB);
            } else {
                if (this.f7288d.isActiveOm()) {
                    strB = com.mbridge.msdk.a.b.c(strB);
                }
                this.f7291g.loadDataWithBaseURL(this.f7288d.getBannerUrl(), strB, "text/html", b4.L, null);
            }
        } else {
            a("banner render failed because banner view is null", 2);
            a("banner show failed because banner view is exception");
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f7289e == null) {
            a("banner show failed because banner view is exception");
            return;
        }
        MBBannerWebView mBBannerWebView = this.f7291g;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f7289e.removeView(this.f7291g);
        }
        if (this.f7290f == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.b.d().g());
            this.f7290f = imageView;
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mbridge.msdk.mbbanner.common.c.c.9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    c.this.z = motionEvent.getRawX();
                    c.this.A = motionEvent.getRawY();
                    aa.d("BannerShowManager", c.this.z + "  " + c.this.A);
                    return false;
                }
            });
            this.f7290f.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.mbbanner.common.c.c.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.this.a(BannerUtils.managerCampaignEX(com.mbridge.msdk.mbsignalcommon.communication.b.a(c.this.z, c.this.A), c.this.f7288d));
                }
            });
        }
        String imageUrl = this.f7288d.getImageUrl();
        if (TextUtils.isEmpty(imageUrl)) {
            a("banner show failed because campain is exception");
        } else {
            com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(imageUrl, new com.mbridge.msdk.foundation.same.c.c() { // from class: com.mbridge.msdk.mbbanner.common.c.c.11
                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onFailedLoad(String str, String str2) {
                    c.this.a("banner show failed because banner default view is exception");
                }

                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onSuccessLoad(Bitmap bitmap, String str) {
                    if (c.this.f7290f != null) {
                        c.this.f7290f.setImageBitmap(bitmap);
                    }
                    c.this.l = true;
                    c.n(c.this);
                    c.this.f();
                    c.this.g();
                    if (c.this.p) {
                        return;
                    }
                    c.this.d();
                }
            });
        }
    }

    private void c(final CampaignEx campaignEx, final Context context, String str) {
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.c.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        k.a(com.mbridge.msdk.foundation.db.h.a(context)).b(campaignEx.getId());
                    } catch (Exception e2) {
                        aa.d("BannerShowManager", e2.getMessage());
                    }
                }
            }).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.a.a.f6792g);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().p() == null) {
            return;
        }
        m.a().a("2000141", campaignEx, new HashMap());
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().p(), false, false);
    }

    static /* synthetic */ void c(c cVar) {
        MBBannerWebView mBBannerWebView = cVar.f7291g;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            cVar.f7289e.removeView(cVar.f7291g);
        }
        ImageView imageView = cVar.f7290f;
        if (imageView != null && imageView.getParent() != null) {
            cVar.f7290f.setVisibility(8);
            cVar.f7289e.removeView(cVar.f7290f);
        }
        ImageView imageView2 = cVar.h;
        if (imageView2 != null && imageView2.getParent() != null) {
            cVar.f7289e.removeView(cVar.h);
            cVar.h.setVisibility(8);
        }
        ImageView imageView3 = cVar.i;
        if (imageView3 != null && imageView3.getParent() != null) {
            cVar.f7289e.removeView(cVar.i);
            cVar.i.setVisibility(8);
        }
        com.mbridge.msdk.mbbanner.common.a.a aVarA = com.mbridge.msdk.mbbanner.common.a.a.a().b(cVar.q).e(cVar.f7288d.getRequestId()).d(cVar.f7288d.getRequestIdNotice()).c(cVar.f7288d.getId()).f(cVar.f7288d.getCreativeId() + "").a(cVar.f7288d.isBidCampaign());
        String str = cVar.q;
        if (aVarA != null) {
            aVarA.a("2000069");
            if (com.mbridge.msdk.foundation.same.report.k.a().c()) {
                com.mbridge.msdk.foundation.same.report.k.a().a(aVarA.b());
            } else {
                n.a(aVarA.b(), com.mbridge.msdk.foundation.controller.b.d().g(), str);
            }
        }
        BannerUtils.inserCloseId(cVar.q, cVar.s);
        com.mbridge.msdk.mbbanner.common.b.c cVar2 = cVar.b;
        if (cVar2 != null) {
            cVar2.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d() {
        /*
            Method dump skipped, instruction units count: 1037
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbbanner.common.c.c.d():void");
    }

    static /* synthetic */ void d(c cVar) {
        ImageView imageView;
        if (cVar.c && (imageView = cVar.h) != null && imageView.getVisibility() == 0) {
            cVar.h.setVisibility(8);
            cVar.h.setOnClickListener(null);
            if (cVar.f7289e == null || cVar.h.getParent() == null) {
                return;
            }
            cVar.f7289e.removeView(cVar.h);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void d(boolean z) {
        if (this.f7289e != null) {
            FeedBackButton feedBackButtonB = com.mbridge.msdk.foundation.c.b.a().b(this.q);
            if (com.mbridge.msdk.foundation.c.b.a().b() && z && feedBackButtonB != null) {
                ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonB);
                }
                feedBackButtonB.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.c.b.a, com.mbridge.msdk.foundation.c.b.b);
                }
                layoutParams.addRule(12);
                feedBackButtonB.setLayoutParams(layoutParams);
                this.f7289e.addView(feedBackButtonB);
            }
            com.mbridge.msdk.foundation.c.b.a().a(this.q, new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.mbbanner.common.c.c.5
                @Override // com.mbridge.msdk.foundation.c.a
                public final void a() {
                    String string;
                    c.this.f7289e.onPause();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                            jSONObject.put("status", 1);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        aa.b("BannerShowManager", th.getMessage(), th);
                        string = "";
                    }
                    g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void a(String str) {
                    String string;
                    c.this.f7289e.onResume();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                            jSONObject.put("status", 2);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        aa.b("BannerShowManager", th.getMessage(), th);
                        string = "";
                    }
                    g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void b() {
                    String string;
                    c.this.f7289e.onResume();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                            jSONObject.put("status", 2);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        aa.b("BannerShowManager", th.getMessage(), th);
                        string = "";
                    }
                    g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
                }
            });
            this.f7288d.setCampaignUnitId(this.q);
            com.mbridge.msdk.foundation.c.b.a().a(this.q, this.f7288d);
        }
    }

    private synchronized boolean e() {
        boolean zIsReport;
        zIsReport = this.f7288d.isReport();
        if (!zIsReport) {
            this.f7288d.setReport(true);
        }
        return zIsReport;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ImageView imageView;
        if (!this.c || (imageView = this.h) == null) {
            return;
        }
        if (imageView.getVisibility() != 0) {
            this.h.setVisibility(0);
            this.h.setOnClickListener(this.B);
        }
        if (this.h.getParent() != null || this.f7289e == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f), af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 12.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        this.f7289e.addView(this.h, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f7289e == null) {
            return;
        }
        CampaignEx campaignEx = this.f7288d;
        if (campaignEx != null) {
            if (!(campaignEx.getPrivacyButtonTemplateVisibility() == 1)) {
                return;
            }
        }
        MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.b.d().g());
        mBAdChoice.setCampaign(this.f7288d);
        mBAdChoice.setFeedbackDialogEventListener(new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.mbbanner.common.c.c.13
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
                    aa.b("BannerShowManager", th.getMessage(), th);
                    string = "";
                }
                g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void a(String str) {
                String string;
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                        jSONObject.put("status", 1);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    aa.b("BannerShowManager", th.getMessage(), th);
                    string = "";
                }
                g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
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
                    aa.b("BannerShowManager", th.getMessage(), th);
                    string = "";
                }
                g.a().a((WebView) c.this.f7291g, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 6.0f), af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 6.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        this.f7289e.addView(mBAdChoice, layoutParams);
    }

    static /* synthetic */ void n(c cVar) {
        if (cVar.f7290f != null) {
            MBBannerWebView mBBannerWebView = cVar.f7291g;
            if (mBBannerWebView != null) {
                mBBannerWebView.setVisibility(8);
            }
            if (cVar.f7290f.getVisibility() != 0) {
                cVar.f7290f.setVisibility(0);
            }
            if (cVar.f7289e != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                cVar.f7290f.setScaleType(ImageView.ScaleType.FIT_XY);
                if (cVar.f7290f.getParent() == null) {
                    cVar.f7289e.addView(cVar.f7290f, layoutParams);
                }
                cVar.d(true);
            }
        }
    }

    public final void a() {
        AdSession adSession = this.w;
        if (adSession != null) {
            adSession.finish();
            this.w = null;
        }
        if (this.b != null) {
            this.b = null;
        }
        MBBannerWebView mBBannerWebView = this.f7291g;
        if (mBBannerWebView != null) {
            mBBannerWebView.setWebViewListener(null);
        }
        if (this.D != null) {
            this.D = null;
        }
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.f7290f;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        MBBannerView mBBannerView = this.f7289e;
        if (mBBannerView != null) {
            mBBannerView.removeAllViews();
        }
        MBBannerWebView mBBannerWebView2 = this.f7291g;
        if (mBBannerWebView2 != null) {
            mBBannerWebView2.release();
        }
        com.mbridge.msdk.mbbanner.common.bridge.a aVar = this.v;
        if (aVar != null) {
            aVar.a();
        }
        if (this.C != null) {
            this.C = null;
        }
        com.mbridge.msdk.foundation.c.b.a().c(this.q);
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        MBBannerWebView mBBannerWebView = this.f7291g;
        aa.d("BannerCallJS", "fireOnBannerViewSizeChange");
        try {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(mBBannerWebView, i, i2);
        } catch (Throwable th) {
            aa.b("BannerCallJS", "fireOnBannerViewSizeChange", th);
        }
    }

    public final void a(CampaignEx campaignEx) {
        if (this.p) {
            if (this.a == null) {
                this.a = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.q);
            }
            this.a.a(new NativeListener.TrackingExListener() { // from class: com.mbridge.msdk.mbbanner.common.c.c.3
                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final void onDismissLoading(Campaign campaign) {
                }

                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final void onDownloadFinish(Campaign campaign) {
                }

                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final void onDownloadProgress(int i) {
                }

                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final void onDownloadStart(Campaign campaign) {
                }

                @Override // com.mbridge.msdk.out.BaseTrackingListener
                public final void onFinishRedirection(Campaign campaign, String str) {
                    ae.b(campaign, c.this.f7289e);
                }

                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final boolean onInterceptDefaultLoadingDialog() {
                    return false;
                }

                @Override // com.mbridge.msdk.out.NativeListener.TrackingExListener
                public final void onLeaveApp() {
                    if (c.this.b != null) {
                        c.this.b.b();
                    }
                }

                @Override // com.mbridge.msdk.out.BaseTrackingListener
                public final void onRedirectionFailed(Campaign campaign, String str) {
                    ae.b(campaign, c.this.f7289e);
                }

                @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
                public final void onShowLoading(Campaign campaign) {
                }

                @Override // com.mbridge.msdk.out.BaseTrackingListener
                public final void onStartRedirection(Campaign campaign, String str) {
                    ae.a(campaign, c.this.f7289e);
                }
            });
            campaignEx.setCampaignUnitId(this.q);
            this.a.a(campaignEx);
            if (!this.f7288d.isReportClick()) {
                this.f7288d.setReportClick(true);
                Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                if (campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().l() != null) {
                    m.a().a("2000142", campaignEx, new HashMap());
                    com.mbridge.msdk.click.a.a(contextG, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().l(), false, false);
                }
            }
            com.mbridge.msdk.mbbanner.common.b.c cVar = this.b;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.mbridge.msdk.foundation.entity.CampaignUnit r5) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbbanner.common.c.c.a(com.mbridge.msdk.foundation.entity.CampaignUnit):void");
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(boolean z, int i) {
        this.t = i;
        if (i == 0) {
            h hVarE = com.mbridge.msdk.c.f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), this.q);
            if (hVarE == null) {
                return;
            } else {
                z = hVarE.d() == 1;
            }
        }
        this.c = z;
    }

    public final void b(boolean z) {
        this.j = z;
        d();
        if (z) {
            return;
        }
        CampaignEx campaignEx = this.f7288d;
        String str = this.q;
        if (campaignEx != null) {
            String strA = com.mbridge.msdk.mbsignalcommon.mraid.c.a(campaignEx.getId());
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str, strA, campaignEx.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.b(campaignEx.getId());
        }
    }

    public final void c(boolean z) {
        this.k = z;
        d();
    }
}
