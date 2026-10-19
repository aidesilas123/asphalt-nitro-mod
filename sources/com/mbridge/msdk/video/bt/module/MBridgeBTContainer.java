package com.mbridge.msdk.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.f;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.o;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.bt.module.b.h;
import com.mbridge.msdk.video.dynview.e.d;
import com.mbridge.msdk.video.signal.a.c;
import com.mbridge.msdk.video.signal.a.j;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeBTContainer extends AbstractJSContainer implements com.mbridge.msdk.video.signal.b {
    private static final String a = MBridgeBTContainer.class.getSimpleName();
    private boolean A;
    private String B;
    private boolean C;
    private List<CampaignEx> D;
    private List<com.mbridge.msdk.videocommon.download.a> E;
    private com.mbridge.msdk.video.bt.module.a.a F;
    private h G;
    private h H;
    private com.mbridge.msdk.video.bt.module.a.b I;
    private String J;
    private String K;
    private String L;
    private String M;
    private boolean N;
    private int O;
    private d P;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f7492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MBridgeBTLayout f7493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WindVaneWebView f7494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LayoutInflater f7495g;
    private Context h;
    private TextView i;
    private ImageView y;
    private boolean z;

    private static final class a implements Runnable {
        private List<CampaignEx> a;
        private Context b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7496d;

        public a(List<CampaignEx> list, Context context, String str, String str2) {
            this.a = list;
            this.b = context;
            this.c = str;
            this.f7496d = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            List<CampaignEx> list = this.a;
            if (list == null || list.size() <= 0) {
                return;
            }
            try {
                f.a(com.mbridge.msdk.foundation.db.h.a(this.b)).a(this.c, this.a);
                com.mbridge.msdk.videocommon.a.a.a().c(this.f7496d, this.a.get(0).getAdType());
            } catch (Exception unused) {
                aa.a(MBridgeBTContainer.a, "remove campaign failed");
            }
        }
    }

    private class b extends c.a {
        private b() {
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.video.signal.c.a
        public final void a() {
            super.a();
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.video.signal.c.a
        public final void a(int i, String str) {
            super.a(i, str);
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.video.signal.c.a
        public final void a(boolean z) {
            super.a(z);
            MBridgeBTContainer.this.H.a(z, ((AbstractJSContainer) MBridgeBTContainer.this).l, ((AbstractJSContainer) MBridgeBTContainer.this).k);
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.video.signal.c.a
        public final void b() {
            super.b();
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.out.BaseTrackingListener
        public final void onFinishRedirection(Campaign campaign, String str) {
            super.onFinishRedirection(campaign, str);
            ae.b(campaign, MBridgeBTContainer.this.f7492d);
            if (campaign == null || !(campaign instanceof CampaignEx)) {
                return;
            }
            try {
                CampaignEx campaignEx = (CampaignEx) campaign;
                String strOptString = new JSONObject(MBridgeBTContainer.this.getJSVideoModule().getCurrentProgress()).optString("progress", "");
                if (campaignEx.getLinkType() == 3 && campaignEx.getEndcard_click_result() == 2 && strOptString.equals("1.0") && ((AbstractJSContainer) MBridgeBTContainer.this).j != null) {
                    if (MBridgeBTContainer.this.A) {
                        MBridgeBTContainer.this.onAdClose();
                    } else {
                        ((AbstractJSContainer) MBridgeBTContainer.this).j.finish();
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.out.BaseTrackingListener
        public final void onRedirectionFailed(Campaign campaign, String str) {
            super.onRedirectionFailed(campaign, str);
            ae.b(campaign, MBridgeBTContainer.this.f7492d);
        }

        @Override // com.mbridge.msdk.video.signal.a.c.a, com.mbridge.msdk.out.BaseTrackingListener
        public final void onStartRedirection(Campaign campaign, String str) {
            super.onStartRedirection(campaign, str);
            ae.a(campaign, MBridgeBTContainer.this.f7492d);
        }
    }

    public MBridgeBTContainer(Context context) {
        super(context);
        this.b = 0;
        this.c = 1;
        this.z = false;
        this.A = true;
        this.C = false;
        init(context);
    }

    public MBridgeBTContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.c = 1;
        this.z = false;
        this.A = true;
        this.C = false;
        init(context);
    }

    static /* synthetic */ void a(MBridgeBTContainer mBridgeBTContainer, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                HashMap map = new HashMap();
                List<com.mbridge.msdk.foundation.entity.c> listB = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).b(campaignEx.getCampaignUnitId(), campaignEx.getRequestId());
                if (listB == null || listB.size() <= 0 || listB.get(0) == null) {
                    return;
                }
                int iD = listB.get(0).d();
                String strB = listB.get(0).b();
                if (iD == 1) {
                    map.put("encrypt_p=", "encrypt_p=" + strB);
                    map.put("irlfa=", "irlfa=1");
                    for (Map.Entry entry : map.entrySet()) {
                        campaignEx.setOnlyImpressionURL(campaignEx.getOnlyImpressionURL().replaceAll((String) entry.getKey(), (String) entry.getValue()));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private com.mbridge.msdk.video.bt.module.a.b c() {
        if (this.I == null) {
            this.I = new com.mbridge.msdk.video.bt.module.a.b() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTContainer.3
                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(String str) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).l);
                            jSONObject2.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, ((AbstractJSContainer) MBridgeBTContainer.this).k);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onAdShow " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewPlayStart", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(String str, int i, String str2, String str3) {
                    if (MBridgeBTContainer.this.G != null) {
                        MBridgeBTContainer.this.G.a(i, str2, str3);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(String str, String str2) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).l);
                            jSONObject2.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, ((AbstractJSContainer) MBridgeBTContainer.this).k);
                            jSONObject2.put("error", str2);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onShowFail " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewPlayFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(String str, String str2, String str3) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                            jSONObject2.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, str3);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onVideoAdClicked " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(String str, boolean z, com.mbridge.msdk.videocommon.b.c cVar) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            if (cVar != null) {
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject3.put("name", cVar.a());
                                jSONObject3.put("amount", cVar.b());
                                jSONObject2.put("reward", jSONObject3);
                            }
                            jSONObject2.put("isComplete", z);
                            jSONObject2.put("convert", z ? 1 : 2);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onAdClose " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewDismissed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void a(boolean z, int i) {
                    MBridgeBTContainer.this.N = z;
                    MBridgeBTContainer.this.O = i;
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void b(String str, String str2, String str3) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("convert", true);
                            jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                            jSONObject2.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, str3);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onVideoComplete " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewPlayCompleted", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.b
                public final void c(String str, String str2, String str3) {
                    if (MBridgeBTContainer.this.f7494f != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                            jSONObject2.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, str3);
                            jSONObject.put("data", jSONObject2);
                            aa.a(MBridgeBTContainer.a, " BT Call H5 onEndcardShow " + jSONObject.toString());
                        } catch (JSONException e2) {
                            aa.a(MBridgeBTContainer.a, e2.getMessage());
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onSubPlayTemplateViewEndcardShowSuccess", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }
            };
        }
        return this.I;
    }

    private com.mbridge.msdk.videocommon.download.a d(CampaignEx campaignEx) {
        List<com.mbridge.msdk.videocommon.download.a> list = this.E;
        if (list == null || campaignEx == null) {
            return null;
        }
        for (com.mbridge.msdk.videocommon.download.a aVar : list) {
            if (aVar.k().getId().equals(campaignEx.getId())) {
                aa.a(a, "tempContainer task initSuccess");
                return aVar;
            }
        }
        return null;
    }

    protected final void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx, this.k, it.next(), false, true);
                }
            } catch (Throwable th) {
                aa.d(a, th.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    protected final void a(String str) {
        h hVar = this.G;
        if (hVar != null) {
            hVar.a(str);
        }
        super.a(str);
    }

    public void addNativeCloseButtonWhenWebViewCrash() {
        try {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.b.d().g());
            int iB = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 48.0f);
            int iB2 = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 20.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iB, iB);
            layoutParams.setMargins(iB2, iB2, iB2, iB2);
            layoutParams.gravity = 5;
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_close", "drawable"));
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTContainer.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MBridgeBTContainer.this.onAdClose();
                }
            });
            addView(imageView);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public void appendSubView(MBridgeBTContainer mBridgeBTContainer, MBTempContainer mBTempContainer, JSONObject jSONObject) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (jSONObject != null) {
                Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                int iOptInt = jSONObject.optInt("left", -999);
                int iOptInt2 = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_TOP_KEY, -999);
                int iOptInt3 = jSONObject.optInt(TtmlNode.RIGHT, -999);
                int iOptInt4 = jSONObject.optInt("bottom", -999);
                if (iOptInt != -999 && contextG != null) {
                    layoutParams.leftMargin = af.b(contextG, iOptInt);
                }
                if (iOptInt2 != -999 && contextG != null) {
                    layoutParams.topMargin = af.b(contextG, iOptInt2);
                }
                if (iOptInt3 != -999 && contextG != null) {
                    layoutParams.rightMargin = af.b(contextG, iOptInt3);
                }
                if (iOptInt4 != -999 && contextG != null) {
                    layoutParams.bottomMargin = af.b(contextG, iOptInt4);
                }
                int iOptInt5 = jSONObject.optInt("width");
                int iOptInt6 = jSONObject.optInt("height");
                if (iOptInt5 > 0) {
                    layoutParams.width = iOptInt5;
                }
                if (iOptInt6 > 0) {
                    layoutParams.height = iOptInt6;
                }
            }
            mBridgeBTContainer.addView(mBTempContainer, layoutParams);
            mBTempContainer.setActivity(this.j);
            mBTempContainer.setMute(this.q);
            mBTempContainer.setBidCampaign(this.z);
            mBTempContainer.setIV(this.r);
            mBTempContainer.setBigOffer(this.A);
            mBTempContainer.setIVRewardEnable(this.t, this.u, this.v);
            mBTempContainer.setShowRewardListener(this.H);
            mBTempContainer.setCampaignDownLoadTask(d(mBTempContainer.getCampaign()));
            mBTempContainer.setMBridgeTempCallback(c());
            mBTempContainer.setWebViewFront(getJSCommon().a());
            mBTempContainer.init(this.h);
            mBTempContainer.onCreate();
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f7494f != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", this.b);
                jSONObject2.put("id", this.B);
                jSONObject2.put(o2.h.k0, str);
                jSONObject2.put("data", jSONObject);
                g.a().a((WebView) this.f7494f, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.a.c.a().a((WebView) this.f7494f, "broadcast", this.B);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.d
    public void click(int i, String str) {
    }

    public int findID(String str) {
        return t.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return t.a(getContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public List<CampaignEx> getCampaigns() {
        return this.D;
    }

    @Override // com.mbridge.msdk.video.signal.d
    public void handlerH5Exception(int i, String str) {
    }

    public void init(Context context) {
        this.h = context;
        this.f7495g = LayoutInflater.from(context);
    }

    public void onAdClose() {
        Activity activity = this.j;
        if (activity != null) {
            activity.finish();
        }
    }

    public void onBackPressed() {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).onBackPressed();
                } else if (view instanceof MBridgeBTWebView) {
                    ((MBridgeBTWebView) view).onBackPressed();
                } else if (view instanceof MBridgeBTLayout) {
                    ((MBridgeBTLayout) view).onBackPressed();
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).onConfigurationChanged(configuration);
                } else if (view instanceof MBridgeBTWebView) {
                    ((MBridgeBTWebView) view).onConfigurationChanged(configuration);
                } else if (view instanceof MBridgeBTLayout) {
                    ((MBridgeBTLayout) view).onConfigurationChanged(configuration);
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public void onCreate() {
        String cMPTEntryUrl;
        WindVaneWebView windVaneWebViewA;
        CampaignEx campaignEx;
        try {
            int iFindLayout = findLayout("mbridge_bt_container");
            if (iFindLayout < 0) {
                a("mbridge_bt_container layout null");
                return;
            }
            FrameLayout frameLayout = (FrameLayout) this.f7495g.inflate(iFindLayout, this);
            this.f7492d = frameLayout;
            if (frameLayout == null) {
                a("ViewIds null");
                return;
            }
            this.K = "";
            List<CampaignEx> list = this.D;
            if (list == null || list.size() <= 0) {
                cMPTEntryUrl = "";
            } else {
                CampaignEx campaignEx2 = this.D.get(0);
                cMPTEntryUrl = campaignEx2.getCMPTEntryUrl();
                this.K = campaignEx2.getRequestId();
                this.L = campaignEx2.getCurrentLRid();
            }
            a.C0437a c0437aA = com.mbridge.msdk.videocommon.a.a(this.k + "_" + this.K + "_" + cMPTEntryUrl);
            RelativeLayout.LayoutParams layoutParams = null;
            Object[] objArr = 0;
            if (c0437aA != null) {
                this.B = c0437aA.b();
                aa.a(a, "get BT wraper.getTag = " + this.B);
                c0437aA.a("");
                windVaneWebViewA = c0437aA.a();
            } else {
                windVaneWebViewA = null;
            }
            this.f7494f = windVaneWebViewA;
            com.mbridge.msdk.videocommon.a.b(this.k + "_" + this.K + "_" + cMPTEntryUrl);
            WindVaneWebView windVaneWebView = this.f7494f;
            if (windVaneWebView == null) {
                List<CampaignEx> list2 = this.D;
                if (list2 == null || list2.size() <= 0 || (campaignEx = this.D.get(0)) == null || !campaignEx.isDynamicView()) {
                    a("big template webview is null");
                    return;
                }
                Context context = this.h;
                if (this.P == null) {
                    a("ChoiceOneCallback is null");
                    return;
                }
                HashMap map = new HashMap();
                map.put("choice_one_callback", this.P);
                com.mbridge.msdk.video.dynview.b.a();
                new com.mbridge.msdk.video.dynview.h.a(context, this.D, new com.mbridge.msdk.video.dynview.e.g() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTContainer.2
                    @Override // com.mbridge.msdk.video.dynview.e.g
                    public final void a(com.mbridge.msdk.video.dynview.a aVar) {
                        CampaignEx campaignEx3;
                        String str;
                        if (aVar != null) {
                            if (MBridgeBTContainer.this.f7492d == null || aVar.a() == null) {
                                MBridgeBTContainer.this.a("nativeview is null");
                                return;
                            }
                            MBridgeBTContainer.this.f7492d.removeAllViews();
                            MBridgeBTContainer.this.f7492d.addView(aVar.a());
                            MBridgeBTContainer mBridgeBTContainer = MBridgeBTContainer.this;
                            mBridgeBTContainer.i = (TextView) mBridgeBTContainer.findViewById(mBridgeBTContainer.findID("mbridge_choice_one_countdown_tv"));
                            MBridgeBTContainer mBridgeBTContainer2 = MBridgeBTContainer.this;
                            mBridgeBTContainer2.y = (ImageView) mBridgeBTContainer2.findViewById(mBridgeBTContainer2.findID("mbridge_iv_link"));
                            if (MBridgeBTContainer.this.F != null) {
                                MBridgeBTContainer.this.F.a();
                                MBridgeBTContainer.this.F.a(2, ((AbstractJSContainer) MBridgeBTContainer.this).l, ((AbstractJSContainer) MBridgeBTContainer.this).k);
                            }
                            if (MBridgeBTContainer.this.D == null || MBridgeBTContainer.this.D.size() <= 0 || (campaignEx3 = (CampaignEx) MBridgeBTContainer.this.D.get(0)) == null) {
                                return;
                            }
                            if (campaignEx3.isBidCampaign()) {
                                MBridgeBTContainer.a(MBridgeBTContainer.this, campaignEx3);
                            }
                            String onlyImpressionURL = campaignEx3.getOnlyImpressionURL();
                            com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), ((AbstractJSContainer) MBridgeBTContainer.this).k);
                            int iZ = cVarA != null ? cVarA.z() : 1;
                            if (campaignEx3.getSpareOfferFlag() == 1) {
                                str = onlyImpressionURL + "&to=1&cbt=" + campaignEx3.getCbt() + "&tmorl=" + iZ;
                            } else {
                                str = onlyImpressionURL + "&to=0&cbt=" + campaignEx3.getCbt() + "&tmorl=" + iZ;
                            }
                            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx3, ((AbstractJSContainer) MBridgeBTContainer.this).k, str, false, true, com.mbridge.msdk.click.a.a.h);
                            com.mbridge.msdk.foundation.same.a.d.a.put(campaignEx3.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                            MBridgeBTContainer.this.a(campaignEx3);
                            try {
                                HashMap map2 = new HashMap();
                                map2.put("type", "choseFromTwoShow");
                                com.mbridge.msdk.video.module.b.a.a("2000103", campaignEx3, map2);
                            } catch (Exception e2) {
                                if (MBridgeConstans.DEBUG) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                    }

                    @Override // com.mbridge.msdk.video.dynview.e.g
                    public final void a(com.mbridge.msdk.video.dynview.c.a aVar) {
                        String str;
                        if (aVar != null) {
                            str = "errorCode:" + aVar.a() + "Msg:" + aVar.b();
                        } else {
                            str = "";
                        }
                        MBridgeBTContainer.this.a("nativeview is null" + str);
                    }
                }, map);
                return;
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this.j, this, windVaneWebView);
            registerJsFactory(bVar);
            this.f7494f.setApiManagerJSFactory(bVar);
            if (this.f7494f.getParent() != null) {
                a("preload template webview is null or load error");
                return;
            }
            if (this.f7494f.getObject() instanceof j) {
                bVar.a((j) this.f7494f.getObject());
                if (this.f7494f != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.k, af.e(getContext()));
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.o.a());
                        jSONObject2.put("amount", this.o.b());
                        jSONObject2.put("id", this.p);
                        jSONObject.put("userId", this.n);
                        jSONObject.put("reward", jSONObject2);
                        jSONObject.put("playVideoMute", this.q);
                        jSONObject.put("extra", this.M);
                    } catch (JSONException e2) {
                        aa.a(a, e2.getMessage());
                    } catch (Exception e3) {
                        aa.a(a, e3.getMessage());
                    }
                    this.H = new com.mbridge.msdk.video.bt.module.b.c(c(), "");
                    String string = jSONObject.toString();
                    try {
                        HashMap map2 = new HashMap();
                        map2.put("type", "1");
                        m.a().b("2000133", this.L, map2);
                    } catch (Exception unused) {
                    }
                    getJSNotifyProxy().a(string);
                    getJSCommon().b(true);
                    getJSCommon().a(new b());
                }
                ((c) getJSCommon()).l.a();
            }
            this.f7494f.setBackgroundColor(0);
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || !linkedHashMapB.containsKey(this.B)) {
                a("big template webviewLayout is null");
                return;
            }
            View view = linkedHashMapB.get(this.B);
            if (view instanceof MBridgeBTLayout) {
                this.f7493e = (MBridgeBTLayout) view;
                com.mbridge.msdk.foundation.c.b.a().a(this.k + "_1", new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTContainer.1
                    @Override // com.mbridge.msdk.foundation.c.a
                    public final void a() {
                        String string2;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                                jSONObject3.put("status", 1);
                            }
                            string2 = jSONObject3.toString();
                        } catch (Throwable th) {
                            aa.b(MBridgeBTContainer.a, th.getMessage(), th);
                            string2 = "";
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string2.getBytes(), 2));
                    }

                    @Override // com.mbridge.msdk.foundation.c.a
                    public final void a(String str) {
                        String string2;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                                jSONObject3.put("status", 2);
                            }
                            string2 = jSONObject3.toString();
                        } catch (Throwable th) {
                            aa.b(MBridgeBTContainer.a, th.getMessage(), th);
                            string2 = "";
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string2.getBytes(), 2));
                    }

                    @Override // com.mbridge.msdk.foundation.c.a
                    public final void b() {
                        String string2;
                        try {
                            JSONObject jSONObject3 = new JSONObject();
                            if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                                jSONObject3.put("status", 2);
                            }
                            string2 = jSONObject3.toString();
                        } catch (Throwable th) {
                            aa.b(MBridgeBTContainer.a, th.getMessage(), th);
                            string2 = "";
                        }
                        g.a().a((WebView) MBridgeBTContainer.this.f7494f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string2.getBytes(), 2));
                    }
                });
                this.f7493e.addView(this.f7494f, 0, new FrameLayout.LayoutParams(-1, -1));
                com.mbridge.msdk.foundation.c.b.a().c(this.k + "_2");
                FeedBackButton feedBackButtonB = com.mbridge.msdk.foundation.c.b.a().b(this.k + "_1");
                if (com.mbridge.msdk.foundation.c.b.a().b() && feedBackButtonB != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.c.b.a, com.mbridge.msdk.foundation.c.b.b);
                    }
                    layoutParams.topMargin = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 10.0f);
                    layoutParams.leftMargin = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 10.0f);
                    feedBackButtonB.setLayoutParams(layoutParams);
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(feedBackButtonB);
                    }
                    this.f7493e.addView(feedBackButtonB);
                }
                this.f7493e.setTag(this.B);
                linkedHashMapB.put(this.B, this.f7493e);
                Iterator<View> it = linkedHashMapB.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    View next = it.next();
                    if (next instanceof MBridgeBTRootLayout) {
                        MBridgeBTRootLayout mBridgeBTRootLayout = (MBridgeBTRootLayout) next;
                        this.J = mBridgeBTRootLayout.getInstanceId();
                        this.f7492d.addView(mBridgeBTRootLayout, new FrameLayout.LayoutParams(-1, -1));
                        break;
                    }
                }
                linkedHashMapB.remove(this.J);
                linkedHashMapB.put(this.J, this);
            }
            com.mbridge.msdk.video.bt.a.c.a().a(this.k, this.q);
            com.mbridge.msdk.video.bt.a.c.a().a(this.B, this.K);
            com.mbridge.msdk.video.bt.a.c.a().a(this.J, this.K);
            com.mbridge.msdk.video.bt.a.c.a().a(this.k + "_" + this.K, this.j);
            try {
                com.mbridge.msdk.foundation.same.f.b.a().execute(new a(this.D, getContext().getApplicationContext(), this.k, this.l));
            } catch (Throwable unused2) {
                aa.a(a, "remove campaign failed");
            }
            List<CampaignEx> list3 = this.D;
            if (list3 == null || list3.size() <= 0) {
                return;
            }
            a(this.m, this.D.get(0));
        } catch (Throwable th) {
            a("onCreate exception " + th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        if (this.C) {
            return;
        }
        this.C = true;
        super.onDestroy();
        com.mbridge.msdk.video.bt.a.c.a().d(this.k + "_" + this.K);
        try {
            WindVaneWebView windVaneWebView = this.f7494f;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.f7494f.clearWebView();
                this.f7494f.release();
            }
            if (this.I != null) {
                this.I = null;
            }
            if (this.F != null) {
                this.F = null;
            }
            if (this.h != null) {
                this.h = null;
            }
            List<CampaignEx> list = this.D;
            if (list != null && list.size() > 0) {
                for (CampaignEx campaignEx : this.D) {
                    if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                        com.mbridge.msdk.videocommon.a.b(this.k + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
                com.mbridge.msdk.video.dynview.b.a.a().b();
            }
            com.mbridge.msdk.video.bt.a.c.a().f(this.B);
            com.mbridge.msdk.video.bt.a.c.a().g(this.k);
            com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K).remove(this.B);
            com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K).remove(this.J);
            com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K).clear();
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onPause() {
        CampaignEx campaignEx;
        com.mbridge.msdk.video.dynview.d.a aVar;
        super.onPause();
        List<CampaignEx> list = this.D;
        if (list != null && list.size() > 0 && (campaignEx = this.D.get(0)) != null && campaignEx.isDynamicView() && (aVar = com.mbridge.msdk.video.dynview.b.a.a().a) != null) {
            aVar.b();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onPause();
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onResume() {
        CampaignEx campaignEx;
        com.mbridge.msdk.video.dynview.d.a aVar;
        super.onResume();
        List<CampaignEx> list = this.D;
        if (list != null && list.size() > 0 && (campaignEx = this.D.get(0)) != null && campaignEx.isDynamicView() && (aVar = com.mbridge.msdk.video.dynview.b.a.a().a) != null) {
            aVar.a();
        }
        if (com.mbridge.msdk.foundation.c.b.c) {
            return;
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onResume();
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onStop() {
        CampaignEx campaignEx;
        super.onStop();
        List<CampaignEx> list = this.D;
        if (list != null && list.size() > 0 && (campaignEx = this.D.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.b.a.a().b();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onStop();
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.mbridge.msdk.video.signal.b
    public void reactDeveloper(Object obj, String str) {
        int i;
        if (this.F == null || TextUtils.isEmpty(str)) {
            a(obj, "listener is null");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("type");
            String strOptString = jSONObject.optString(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, getUnitId());
            String strOptString2 = jSONObject.optString(MBridgeConstans.PLACEMENT_ID, getPlacementId());
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            CampaignEx campaignEx = this.D.get(0);
            boolean z = true;
            if (iOptInt == 1 && jSONObjectOptJSONObject != null) {
                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("expired");
                if (campaignEx != null) {
                    if (zOptBoolean) {
                        campaignEx.setSpareOfferFlag(1);
                    } else {
                        campaignEx.setSpareOfferFlag(0);
                    }
                }
            }
            setCBT(campaignEx);
            switch (iOptInt) {
                case 1:
                    this.F.a();
                    this.F.a(2, strOptString2, strOptString);
                    a(obj);
                    break;
                case 2:
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("error") : null;
                    this.F.a(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("msg") : "");
                    this.F.a(4, strOptString2, strOptString);
                    a(obj);
                    break;
                case 3:
                    this.F.a(strOptString2, strOptString);
                    this.F.a(5, strOptString2, strOptString);
                    a(obj);
                    break;
                case 4:
                    try {
                        HashMap map = new HashMap();
                        map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        map.put("update", "1");
                        m.a().b("2000147", this.L, map);
                    } catch (Throwable th) {
                        aa.d(a, th.getMessage());
                    }
                    this.F.b(strOptString2, strOptString);
                    this.F.a(6, strOptString2, strOptString);
                    a(obj);
                    break;
                case 5:
                    this.F.a(jSONObject.optBoolean("isAutoClick"), strOptString2, strOptString);
                    a(obj);
                    break;
                case 6:
                    if (jSONObjectOptJSONObject != null) {
                        if (jSONObjectOptJSONObject.optInt("convert") != 1) {
                            z = false;
                        }
                        jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject("reward");
                        String strOptString3 = jSONObjectOptJSONObject.optString("extra");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            this.M = strOptString3;
                        }
                    } else {
                        z = false;
                    }
                    CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectOptJSONObject.optJSONObject("campaign"));
                    com.mbridge.msdk.videocommon.b.c cVarA = com.mbridge.msdk.videocommon.b.c.a(jSONObjectOptJSONObject);
                    if (cVarA == null) {
                        cVarA = this.o;
                    }
                    this.F.a(7, strOptString2, strOptString);
                    try {
                        HashMap map2 = new HashMap();
                        map2.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        m.a().c(campaignWithBackData.getCurrentLRid(), "2000152", map2);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            e2.printStackTrace();
                        }
                    }
                    if (this.r && ((i = this.t) == com.mbridge.msdk.foundation.same.a.o || i == com.mbridge.msdk.foundation.same.a.p)) {
                        this.F.a(this.N, this.O);
                    }
                    if (!z) {
                        cVarA.a(0);
                    }
                    this.F.a(z, cVarA);
                    aa.a(a, "sendToServerRewardInfo");
                    if (!this.r && z) {
                        if (campaignWithBackData != null) {
                            com.mbridge.msdk.video.module.b.b.a(campaignWithBackData, cVarA, strOptString, this.n, this.M);
                        } else {
                            com.mbridge.msdk.video.module.b.b.a(campaignEx, cVarA, strOptString, this.n, this.M);
                        }
                    }
                    try {
                        m.a().a("2000134", campaignWithBackData, new HashMap());
                    } catch (Throwable th2) {
                        aa.a(a, th2.getMessage());
                    }
                    a(obj);
                    break;
                default:
                    a(obj);
                    break;
            }
        } catch (JSONException e3) {
            a(obj, e3.getMessage());
            aa.a(a, e3.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.b
    public void reportUrls(Object obj, String str) {
        aa.a(a, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                int iOptInt = jSONObject.optInt("type");
                String strA = af.a(jSONObject.optString("url"), "&tun=", w.y() + "");
                int iOptInt2 = jSONObject.optInt("report");
                if (iOptInt2 == 0) {
                    Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                    List<CampaignEx> list = this.D;
                    com.mbridge.msdk.click.a.a(contextG, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextG2 = com.mbridge.msdk.foundation.controller.b.d().g();
                    List<CampaignEx> list2 = this.D;
                    com.mbridge.msdk.click.a.a(contextG2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            g.a().a(obj, Base64.encodeToString("".getBytes(), 2));
        } catch (Throwable th) {
            aa.b(a, "reportUrls", th);
        }
    }

    public void setBTContainerCallback(com.mbridge.msdk.video.bt.module.a.a aVar) {
        this.F = aVar;
    }

    public void setCBT(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getSpareOfferFlag() != 1) {
                campaignEx.setCbt(0);
                return;
            }
            com.mbridge.msdk.videocommon.d.c cVar = this.m;
            if (cVar != null) {
                if (cVar.z() == 1) {
                    campaignEx.setCbt(1);
                } else {
                    campaignEx.setCbt(0);
                }
            }
        }
    }

    public void setCampaignDownLoadTasks(List<com.mbridge.msdk.videocommon.download.a> list) {
        this.E = list;
    }

    public void setCampaigns(List<CampaignEx> list) {
        this.D = list;
    }

    public void setChoiceOneCallback(d dVar) {
        this.P = dVar;
    }

    public void setDeveloperExtraData(String str) {
        this.M = str;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.x = bVar;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4, int i5) {
        TextView textView;
        FrameLayout.LayoutParams layoutParams;
        try {
            String strA = o.a(i, i2, i3, i4, i5);
            aa.d(a, strA);
            WindVaneWebView windVaneWebView = this.f7494f;
            if (windVaneWebView != null && (windVaneWebView.getObject() instanceof j) && !TextUtils.isEmpty(strA)) {
                ((j) this.f7494f.getObject()).b(strA);
                g.a().a((WebView) this.f7494f, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
            }
            List<CampaignEx> list = this.D;
            if (list != null && list.size() > 0) {
                try {
                    if (this.D.get(0).isDynamicView() && (textView = this.i) != null && (layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams()) != null) {
                        if (i2 > 0) {
                            layoutParams.leftMargin = i2;
                        }
                        if (i3 > 0) {
                            layoutParams.rightMargin = i3;
                        }
                        if (i4 > 0) {
                            layoutParams.topMargin = i4;
                        }
                        if (i5 > 0) {
                            layoutParams.bottomMargin = i5;
                        }
                        this.i.setLayoutParams(layoutParams);
                        if (this.y != null) {
                            try {
                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.y.getLayoutParams());
                                layoutParams2.leftMargin = layoutParams.rightMargin;
                                layoutParams2.topMargin = layoutParams.topMargin;
                                this.y.setLayoutParams(layoutParams2);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                } catch (Exception e3) {
                    aa.d(a, e3.getMessage());
                }
            }
            com.mbridge.msdk.video.bt.a.c.a().a(i, i2, i3, i4, i5);
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.k, this.K);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).setNotchPadding(i2, i3, i4, i5);
                }
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).setNotchPadding(i, i2, i3, i4, i5);
                }
                if ((view instanceof WindVaneWebView) && !TextUtils.isEmpty(strA)) {
                    g.a().a(view, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
                }
            }
        } catch (Throwable th) {
            aa.a(a, th.getMessage());
        }
    }

    public void setShowRewardVideoListener(h hVar) {
        this.G = hVar;
    }
}
