package com.mbridge.msdk.reward.player;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.reward.adapter.RewardUnitCacheManager;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.video.bt.module.MBTempContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.bt.module.b.h;
import com.mbridge.msdk.video.dynview.e.d;
import com.mbridge.msdk.video.signal.activity.AbstractJSActivity;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.b.c;
import com.mbridge.msdk.videocommon.download.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MBRewardVideoActivity extends AbstractJSActivity {
    public static String INTENT_EXTRADATA = "extraData";
    public static String INTENT_ISBID = "isBid";
    public static String INTENT_ISBIG_OFFER = "isBigOffer";
    public static String INTENT_ISIV = "isIV";
    public static String INTENT_IVREWARD_MODETYPE = "ivRewardMode";
    public static String INTENT_IVREWARD_VALUE = "ivRewardValue";
    public static String INTENT_IVREWARD_VALUETYPE = "ivRewardValueType";
    public static String INTENT_MUTE = "mute";
    public static String INTENT_REWARD = "reward";
    public static String INTENT_UNITID = "unitId";
    public static String INTENT_USERID = "userId";
    public static String SAVE_STATE_KEY_REPORT = "hasRelease";
    private boolean A;
    private String I;
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f7461d;
    private int h;
    private int i;
    private int j;
    private h m;
    private com.mbridge.msdk.videocommon.d.c n;
    private com.mbridge.msdk.videocommon.download.a q;
    private CampaignEx r;
    private List<com.mbridge.msdk.videocommon.download.a> s;
    private List<CampaignEx> t;
    private MBTempContainer u;
    private MBridgeBTContainer v;
    private WindVaneWebView w;
    private com.mbridge.msdk.video.bt.module.a.a x;
    private String y;
    private String z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7462e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7463f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7464g = false;
    private boolean k = false;
    private boolean l = false;
    private boolean o = false;
    private boolean p = false;
    private int B = 1;
    private int C = 0;
    private int D = 0;
    private int E = 0;
    private int F = 0;
    private int G = 0;
    private int H = 0;
    private com.mbridge.msdk.video.dynview.e.a J = new com.mbridge.msdk.video.dynview.e.a() { // from class: com.mbridge.msdk.reward.player.MBRewardVideoActivity.1
        @Override // com.mbridge.msdk.video.dynview.e.a
        public final void a(Map<String, Object> map) {
            if (map == null) {
                return;
            }
            if (map.containsKey(CampaignEx.JSON_NATIVE_VIDEO_MUTE)) {
                MBRewardVideoActivity.this.f7462e = ((Integer) map.get(CampaignEx.JSON_NATIVE_VIDEO_MUTE)).intValue();
            }
            if (map.containsKey(o2.h.L)) {
                int iIntValue = ((Integer) map.get(o2.h.L)).intValue();
                if (MBRewardVideoActivity.this.t == null || MBRewardVideoActivity.this.t.size() <= 0 || iIntValue < 1) {
                    return;
                }
                MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
                mBRewardVideoActivity.r = (CampaignEx) mBRewardVideoActivity.t.get(iIntValue);
                MBRewardVideoActivity.b(MBRewardVideoActivity.this);
                int i = iIntValue - 1;
                if (MBRewardVideoActivity.this.t.get(i) != null) {
                    MBRewardVideoActivity.this.C -= ((CampaignEx) MBRewardVideoActivity.this.t.get(i)).getVideoLength();
                }
                MBRewardVideoActivity mBRewardVideoActivity2 = MBRewardVideoActivity.this;
                MBRewardVideoActivity.this.r.setVideoCompleteTime(mBRewardVideoActivity2.a(mBRewardVideoActivity2.r.getVideoCompleteTime(), MBRewardVideoActivity.this.B));
                MBRewardVideoActivity mBRewardVideoActivity3 = MBRewardVideoActivity.this;
                mBRewardVideoActivity3.a(mBRewardVideoActivity3.r);
            }
        }
    };
    private d K = new d() { // from class: com.mbridge.msdk.reward.player.MBRewardVideoActivity.2
        @Override // com.mbridge.msdk.video.dynview.e.d
        public final void a() {
            if (MBRewardVideoActivity.this.v != null) {
                new com.mbridge.msdk.video.dynview.h.b().b(MBRewardVideoActivity.this.v, 500L);
            }
            MBRewardVideoActivity.this.k = true;
            MBRewardVideoActivity.this.b();
            if (MBRewardVideoActivity.this.u != null) {
                MBRewardVideoActivity.this.u.setNotchPadding(MBRewardVideoActivity.this.H, MBRewardVideoActivity.this.D, MBRewardVideoActivity.this.F, MBRewardVideoActivity.this.E, MBRewardVideoActivity.this.G);
            }
        }

        @Override // com.mbridge.msdk.video.dynview.e.d
        public final void a(CampaignEx campaignEx) {
            if (campaignEx == null) {
                MBRewardVideoActivity.this.a("campaign is null");
                return;
            }
            if (MBRewardVideoActivity.this.v != null) {
                new com.mbridge.msdk.video.dynview.h.b().b(MBRewardVideoActivity.this.v, 500L);
            }
            MBRewardVideoActivity.this.r = campaignEx;
            MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
            mBRewardVideoActivity.a(mBRewardVideoActivity.r);
        }
    };

    private static final class a implements Runnable {
        private final List<com.mbridge.msdk.videocommon.download.a> a;
        private final String b;
        private final String c;

        public a(List<com.mbridge.msdk.videocommon.download.a> list, String str, String str2) {
            this.a = list;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.a) {
                    if (aVar != null && aVar.k() != null) {
                        CampaignEx campaignExK = aVar.k();
                        try {
                            AppletModelManager.getInstance().remove(campaignExK);
                        } catch (Exception e2) {
                            if (MBridgeConstans.DEBUG) {
                                aa.b("MBRewardVideoActivity", "AppletModelManager remove error", e2);
                            }
                        }
                        String str = campaignExK.getRequestId() + campaignExK.getId() + campaignExK.getVideoUrlEncode();
                        n nVarC = com.mbridge.msdk.videocommon.download.c.getInstance().c(this.b);
                        if (nVarC != null) {
                            try {
                                nVarC.b(str);
                            } catch (Exception unused) {
                            }
                        }
                        if (campaignExK.getRewardTemplateMode() != null) {
                            if (!TextUtils.isEmpty(campaignExK.getRewardTemplateMode().e())) {
                                com.mbridge.msdk.videocommon.a.b(this.b + "_" + campaignExK.getId() + "_" + this.c + "_" + campaignExK.getRewardTemplateMode().e());
                                com.mbridge.msdk.videocommon.a.b(campaignExK.getAdType(), campaignExK);
                            }
                            if (!TextUtils.isEmpty(campaignExK.getCMPTEntryUrl())) {
                                com.mbridge.msdk.videocommon.a.b(this.b + "_" + this.c + "_" + campaignExK.getCMPTEntryUrl());
                            }
                            com.mbridge.msdk.videocommon.a.a.a().a(campaignExK);
                        }
                    }
                }
            } catch (Exception e3) {
                aa.a("MBRewardVideoActivity", e3.getMessage());
            }
        }
    }

    private static final class b implements Runnable {
        private final List<com.mbridge.msdk.videocommon.download.a> a;
        private final String b;

        public b(String str, List<com.mbridge.msdk.videocommon.download.a> list) {
            this.a = list;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.a) {
                    if (aVar != null && aVar.k() != null) {
                        com.mbridge.msdk.videocommon.a.a.a().a(aVar.k(), this.b);
                    }
                }
            } catch (Throwable th) {
                aa.d("MBRewardVideoActivity", th.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i, int i2) {
        List<CampaignEx> list = this.t;
        if (list == null || list.size() == 0) {
            return i;
        }
        int videoLength = 0;
        int videoCompleteTime = 0;
        for (int i3 = 0; i3 < this.t.size(); i3++) {
            if (this.t.get(0) != null) {
                if (i3 == 0) {
                    videoCompleteTime = this.t.get(0).getVideoCompleteTime();
                }
                videoLength += this.t.get(i3).getVideoLength();
            }
        }
        if (i2 == 1) {
            if (i == 0) {
                if (videoLength >= 45) {
                    return 45;
                }
            } else if (videoLength > i) {
                if (i > 45) {
                    return 45;
                }
                return i;
            }
            return videoLength;
        }
        int videoLength2 = 0;
        for (int i4 = 0; i4 < i2 - 1; i4++) {
            if (this.t.get(i4) != null) {
                videoLength2 += this.t.get(i4).getVideoLength();
            }
        }
        if (videoCompleteTime > videoLength2) {
            return videoCompleteTime - videoLength2;
        }
        return 0;
    }

    private void a() {
        try {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.b.d().a(this.a, this.f7463f ? 287 : 94);
            if (bitmapDrawableA != null) {
                ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.b.d().g());
                af.a(imageView, bitmapDrawableA, getResources().getDisplayMetrics());
                ((ViewGroup) ((ViewGroup) ((ViewGroup) viewGroup.getChildAt(0)).getChildAt(1)).getChildAt(0)).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx) {
        CampaignEx campaignExK;
        try {
            List<com.mbridge.msdk.videocommon.download.a> list = this.s;
            if (list != null && list.size() > 0) {
                for (com.mbridge.msdk.videocommon.download.a aVar : this.s) {
                    if (aVar != null && (campaignExK = aVar.k()) != null && TextUtils.equals(campaignExK.getId(), campaignEx.getId()) && TextUtils.equals(campaignExK.getRequestId(), campaignEx.getRequestId())) {
                        this.q = aVar;
                    }
                }
            }
            this.k = true;
            b();
            MBTempContainer mBTempContainer = this.u;
            if (mBTempContainer != null) {
                mBTempContainer.setNotchPadding(this.H, this.D, this.F, this.E, this.G);
            }
        } catch (Exception e2) {
            aa.d("MBRewardVideoActivity", e2.getMessage());
            a("more offer to one offer exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        aa.d("MBRewardVideoActivity", str);
        h hVar = this.m;
        if (hVar != null) {
            hVar.a(str);
            m.a().a("2000129", this.I, new HashMap());
        }
        finish();
    }

    private void a(List<CampaignEx> list) {
        int dynamicTempCode;
        if (list == null) {
            a("no available campaign");
            return;
        }
        if (list.size() == 0) {
            a("no available campaign");
            return;
        }
        if (list.get(0) != null) {
            dynamicTempCode = list.get(0).getDynamicTempCode();
            this.I = list.get(0).getCurrentLRid();
        } else {
            dynamicTempCode = 0;
        }
        if (dynamicTempCode != 5) {
            c();
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null) {
                this.C += campaignEx.getVideoLength();
            }
        }
        CampaignEx campaignEx2 = list.get(0);
        if (campaignEx2 == null) {
            a("campaign is less");
            return;
        }
        int iA = a(campaignEx2.getVideoCompleteTime(), this.B);
        this.r = campaignEx2;
        campaignEx2.setCampaignIsFiltered(true);
        this.B = 1;
        this.r.setVideoCompleteTime(iA);
        a(this.r);
    }

    static /* synthetic */ int b(MBRewardVideoActivity mBRewardVideoActivity) {
        int i = mBRewardVideoActivity.B;
        mBRewardVideoActivity.B = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        List<CampaignEx> list;
        RewardPlus rewardPlus;
        List<CampaignEx> list2;
        try {
            m.a().a(this.r);
        } catch (Exception unused) {
        }
        int iFindID = findID("mbridge_temp_container");
        if (iFindID < 0) {
            a("no id mbridge_bt_container in mbridge_more_offer_activity layout");
        }
        MBTempContainer mBTempContainer = (MBTempContainer) findViewById(iFindID);
        this.u = mBTempContainer;
        if (mBTempContainer == null) {
            a("env error");
        }
        List<CampaignEx> list3 = this.t;
        if (list3 == null || list3.size() <= 0 || !this.t.get(0).isDynamicView()) {
            this.u.setVisibility(0);
        } else {
            new com.mbridge.msdk.video.dynview.h.b().c(this.u, 500L);
        }
        com.mbridge.msdk.reward.b.a.b = this.r.getCurrentLRid();
        changeHalfScreenPadding(-1);
        this.u.setActivity(this);
        this.u.setBidCampaign(this.f7464g);
        this.u.setBigOffer(this.k);
        this.u.setUnitId(this.a);
        this.u.setCampaign(this.r);
        if (this.r.getDynamicTempCode() == 5 && (list2 = this.t) != null && list2.size() > 1) {
            View viewFindViewById = findViewById(findID("mbridge_reward_root_container"));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.u.removeAllViews();
            this.u.setCampOrderViewData(this.t, this.C);
            this.u.setCamPlayOrderCallback(this.J, this.B);
        }
        this.u.setCampaignDownLoadTask(this.q);
        this.u.setIV(this.f7463f);
        CampaignEx campaignEx = this.r;
        if (campaignEx == null || campaignEx.getAdSpaceT() != 2) {
            this.u.setIVRewardEnable(this.h, this.i, this.j);
        } else {
            this.u.setIVRewardEnable(0, 0, 0);
        }
        this.u.setMute(this.f7462e);
        CampaignEx campaignEx2 = this.r;
        if (((campaignEx2 != null && (rewardPlus = campaignEx2.getRewardPlus()) != null) || ((list = this.t) != null && list.size() > 0 && this.t.get(0) != null && (rewardPlus = this.t.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            c cVar = new c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.b() < 0) {
                cVar.a(1);
            }
            this.f7461d = cVar;
        }
        this.u.setReward(this.f7461d);
        this.u.setRewardUnitSetting(this.n);
        this.u.setPlacementId(this.b);
        this.u.setUserId(this.c);
        this.u.setShowRewardListener(this.m);
        this.u.setDeveloperExtraData(this.z);
        this.u.init(this);
        this.u.onCreate();
        try {
            com.mbridge.msdk.reward.c.a.a(this.r, com.mbridge.msdk.foundation.controller.b.d().g(), "showBTOld", this.a, this.f7464g, "", "", 0L);
        } catch (Exception unused2) {
        }
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).c(campaignEx.getImageUrl());
            }
            if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                return;
            }
            com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).c(campaignEx.getIconUrl());
        }
    }

    private void c() {
        RewardPlus rewardPlus;
        int iFindID = findID("mbridge_bt_container");
        if (iFindID < 0) {
            a("no mbridge_webview_framelayout in mbridge_more_offer_activity layout");
        }
        MBridgeBTContainer mBridgeBTContainer = (MBridgeBTContainer) findViewById(iFindID);
        this.v = mBridgeBTContainer;
        if (mBridgeBTContainer == null) {
            a("env error");
        }
        this.v.setVisibility(0);
        com.mbridge.msdk.video.bt.module.a.a aVarD = d();
        this.x = aVarD;
        this.v.setBTContainerCallback(aVarD);
        this.v.setShowRewardVideoListener(this.m);
        this.v.setChoiceOneCallback(this.K);
        this.v.setCampaigns(this.t);
        this.v.setCampaignDownLoadTasks(this.s);
        this.v.setRewardUnitSetting(this.n);
        this.v.setUnitId(this.a);
        this.v.setPlacementId(this.b);
        this.v.setUserId(this.c);
        this.v.setActivity(this);
        CampaignEx campaignEx = this.r;
        if (((campaignEx != null && (rewardPlus = campaignEx.getRewardPlus()) != null) || (this.t.get(0) != null && (rewardPlus = this.t.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            c cVar = new c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.b() < 0) {
                cVar.a(1);
            }
            this.f7461d = cVar;
        }
        this.v.setReward(this.f7461d);
        this.v.setIVRewardEnable(this.h, this.i, this.j);
        this.v.setIV(this.f7463f);
        this.v.setMute(this.f7462e);
        this.v.setJSFactory((com.mbridge.msdk.video.signal.factory.b) this.jsFactory);
        this.v.setDeveloperExtraData(this.z);
        this.v.init(this);
        this.v.onCreate();
        List<com.mbridge.msdk.videocommon.download.a> list = this.s;
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.reward.c.a.a(this.s.get(0).k(), com.mbridge.msdk.foundation.controller.b.d().g(), "showMoreOffer", this.a, this.f7464g, "", "", 0L);
        } catch (Exception unused) {
        }
    }

    private com.mbridge.msdk.video.bt.module.a.a d() {
        if (this.x == null) {
            this.x = new com.mbridge.msdk.video.bt.module.a.a() { // from class: com.mbridge.msdk.reward.player.MBRewardVideoActivity.3
                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a() {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a();
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(int i, String str, String str2) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(i, str, str2);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(String str) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(str);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(String str, String str2) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(str, str2);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(boolean z, int i) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(z, i);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(boolean z, c cVar) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(z, cVar);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void a(boolean z, String str, String str2) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.a(z, str, str2);
                    }
                }

                @Override // com.mbridge.msdk.video.bt.module.a.a
                public final void b(String str, String str2) {
                    if (MBRewardVideoActivity.this.m != null) {
                        MBRewardVideoActivity.this.m.b(str, str2);
                    }
                }
            };
        }
        return this.x;
    }

    private void e() {
        try {
            List<CampaignEx> list = this.t;
            if (list != null && list.size() > 0) {
                Iterator<CampaignEx> it = this.t.iterator();
                while (it.hasNext()) {
                    b(it.next());
                }
            }
            CampaignEx campaignEx = this.r;
            if (campaignEx != null) {
                b(campaignEx);
            }
        } catch (Throwable th) {
            aa.d("MBRewardVideoActivity", th.getMessage());
        }
    }

    public void changeHalfScreenPadding(int i) {
        try {
            CampaignEx campaignEx = this.r;
            if (campaignEx == null || campaignEx.getAdSpaceT() != 2) {
                return;
            }
            getWindow().getDecorView().setBackground(new ColorDrawable(0));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.u.getLayoutParams();
            int iB = af.b(this, 58.0f);
            int iB2 = af.b(this, 104.0f);
            if (this.r.getRewardTemplateMode().c() == 0) {
                if (i == 2) {
                    layoutParams.setMargins(iB2, iB, iB2, iB);
                } else {
                    layoutParams.setMargins(iB, iB2, iB, iB2);
                }
            } else if (this.r.getRewardTemplateMode().c() == 2) {
                layoutParams.setMargins(iB2, iB, iB2, iB);
            } else {
                layoutParams.setMargins(iB, iB2, iB, iB2);
            }
            this.u.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            aa.d("MBRewardVideoActivity", th.getMessage());
        }
    }

    public int findID(String str) {
        return t.a(getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return t.a(getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        com.mbridge.msdk.foundation.controller.b.d().a(0);
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.u = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.v = null;
        }
        com.mbridge.msdk.foundation.c.b.a().c(this.a);
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onBackPressed();
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onBackPressed();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.u != null) {
            changeHalfScreenPadding(configuration.orientation);
            this.u.onConfigurationChanged(configuration);
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onConfigurationChanged(configuration);
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        CampaignEx campaignEx;
        List<com.mbridge.msdk.videocommon.download.a> list;
        String cMPTEntryUrl = "";
        super.onCreate(bundle);
        MBridgeConstans.isRewardActivityShowing = true;
        com.mbridge.msdk.foundation.controller.b.d().a((Context) this);
        try {
            int iFindLayout = findLayout("mbridge_more_offer_activity");
            if (iFindLayout < 0) {
                a("no mbridge_more_offer_activity layout");
                return;
            }
            setContentView(iFindLayout);
            Intent intent = getIntent();
            String stringExtra = intent.getStringExtra(INTENT_UNITID);
            this.a = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                a("data empty error");
                return;
            }
            this.m = com.mbridge.msdk.reward.b.a.h.get(this.a);
            this.b = intent.getStringExtra(MBridgeConstans.PLACEMENT_ID);
            this.f7461d = c.b(intent.getStringExtra(INTENT_REWARD));
            this.c = intent.getStringExtra(INTENT_USERID);
            this.f7462e = intent.getIntExtra(INTENT_MUTE, 2);
            this.f7463f = intent.getBooleanExtra(INTENT_ISIV, false);
            int i = 287;
            com.mbridge.msdk.foundation.controller.b.d().a(this.f7463f ? 287 : 94);
            this.f7464g = intent.getBooleanExtra(INTENT_ISBID, false);
            this.z = intent.getStringExtra(INTENT_EXTRADATA);
            if (this.f7463f) {
                this.h = intent.getIntExtra(INTENT_IVREWARD_MODETYPE, 0);
                this.i = intent.getIntExtra(INTENT_IVREWARD_VALUETYPE, 0);
                this.j = intent.getIntExtra(INTENT_IVREWARD_VALUE, 0);
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this);
            this.jsFactory = bVar;
            registerJsFactory(bVar);
            if (this.m == null) {
                a("showRewardListener is null");
                return;
            }
            com.mbridge.msdk.videocommon.d.c cVar = RewardUnitCacheManager.getInstance().get(this.b, this.a);
            this.n = cVar;
            if (cVar == null) {
                com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.a);
                this.n = cVarA;
                if (cVarA == null) {
                    this.n = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.a, this.f7463f);
                }
            }
            com.mbridge.msdk.videocommon.d.c cVar2 = this.n;
            if (cVar2 != null) {
                this.f7461d.a(cVar2.m());
                this.f7461d.a(this.n.n());
            }
            c cVar3 = this.f7461d;
            if (cVar3 != null && cVar3.b() <= 0) {
                this.f7461d.a(1);
            }
            int iA = t.a(this, "mbridge_reward_activity_open", "anim");
            int iA2 = t.a(this, "mbridge_reward_activity_stay", "anim");
            if (iA > 1 && iA2 > 1) {
                overridePendingTransition(iA, iA2);
            }
            if (bundle != null) {
                try {
                    this.p = bundle.getBoolean(SAVE_STATE_KEY_REPORT);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.s = com.mbridge.msdk.videocommon.download.c.getInstance().b(this.a);
            this.k = intent.getBooleanExtra(INTENT_ISBIG_OFFER, false);
            aa.a("DynamicViewCampaignResourceDownloader", "进入 show，大模板 " + this.k);
            if (!this.k) {
                List<com.mbridge.msdk.videocommon.download.a> list2 = this.s;
                if (list2 != null && list2.size() > 0) {
                    this.q = this.s.get(0);
                }
                com.mbridge.msdk.videocommon.download.a aVar = this.q;
                if (aVar != null) {
                    this.r = aVar.k();
                    this.q.e(true);
                    this.q.f(false);
                    CampaignEx campaignEx2 = this.r;
                    if (campaignEx2 != null) {
                        this.I = campaignEx2.getCurrentLRid();
                        com.mbridge.msdk.reward.b.a.c = this.r.getLocalRequestId();
                        com.mbridge.msdk.reward.b.a.f7433d = this.r.getEcppv();
                        com.mbridge.msdk.click.b.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.r.getMaitve(), this.r.getMaitve_src());
                    }
                }
                if (this.q == null || this.r == null || this.f7461d == null) {
                    a("data empty error");
                }
                m.a().a("2000129", this.I, new HashMap());
                b();
                a();
                return;
            }
            this.t = com.mbridge.msdk.videocommon.download.c.getInstance().a(this.a);
            m.a().b(this.t);
            this.y = "";
            List<CampaignEx> list3 = this.t;
            if (list3 != null && list3.size() > 0) {
                CampaignEx campaignEx3 = this.t.get(0);
                cMPTEntryUrl = campaignEx3.getCMPTEntryUrl();
                this.y = campaignEx3.getRequestId();
                this.I = campaignEx3.getCurrentLRid();
                com.mbridge.msdk.reward.b.a.c = campaignEx3.getLocalRequestId();
                com.mbridge.msdk.reward.b.a.f7433d = campaignEx3.getEcppv();
                com.mbridge.msdk.click.b.a(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx3.getMaitve(), campaignEx3.getMaitve_src());
            }
            a.C0437a c0437aA = com.mbridge.msdk.videocommon.a.a(this.a + "_" + this.y + "_" + cMPTEntryUrl);
            WindVaneWebView windVaneWebViewA = c0437aA != null ? c0437aA.a() : null;
            this.w = windVaneWebViewA;
            if (windVaneWebViewA == null) {
                if (this.q == null && (list = this.s) != null && list.size() > 0) {
                    this.q = this.s.get(0);
                }
                if (this.q == null) {
                    com.mbridge.msdk.videocommon.download.c cVar4 = com.mbridge.msdk.videocommon.download.c.getInstance();
                    if (!this.f7463f) {
                        i = 94;
                    }
                    String str = this.a;
                    boolean z = this.f7464g;
                    n nVarC = cVar4.c(str);
                    this.q = nVarC != null ? nVarC.b(i, z) : null;
                }
                com.mbridge.msdk.videocommon.download.a aVar2 = this.q;
                if (aVar2 != null) {
                    this.r = aVar2.k();
                    this.q.e(true);
                    this.q.f(false);
                }
                if (this.q != null && (campaignEx = this.r) != null && this.f7461d != null) {
                    this.k = false;
                    try {
                        com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "showMoreOffer showBTOld", this.a, this.f7464g, this.r.getRequestId(), this.r.getRequestIdNotice(), 0L);
                    } catch (Exception unused) {
                    }
                    List<CampaignEx> listA = com.mbridge.msdk.videocommon.a.a.a().a(this.t);
                    if (listA == null) {
                        a("no available campaign");
                        return;
                    }
                    int size = listA.size();
                    if (size == 0) {
                        a("no available campaign");
                        return;
                    }
                    if (listA.get(0) == null || !listA.get(0).isDynamicView()) {
                        m.a().a("2000129", this.r, new HashMap());
                        b();
                    } else if (size == 1) {
                        CampaignEx campaignEx4 = listA.get(0);
                        this.r = campaignEx4;
                        if (campaignEx4 != null) {
                            this.I = campaignEx4.getCurrentLRid();
                            this.r.setCampaignIsFiltered(true);
                            com.mbridge.msdk.reward.c.a.a(this.r, com.mbridge.msdk.foundation.controller.b.d().g(), "no available campaign but to one offer show", this.a, this.f7464g, this.r.getRequestId(), this.r.getRequestIdNotice(), 0L);
                        }
                        m.a().a("2000129", this.r, new HashMap());
                        a(this.r);
                    } else {
                        m.a().a("2000129", this.I, new HashMap());
                        a(listA);
                    }
                }
                a("data empty error");
                return;
            }
            m.a().a("2000129", this.I, new HashMap());
            c();
            a();
        } catch (Throwable th) {
            a("onCreate error" + th);
            m.a().a("2000129", this.I, new HashMap());
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(this.I)) {
            map.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.a);
        }
        m.a().a("2000151", this.I, new HashMap());
        com.mbridge.msdk.video.module.b.b.a(this.a);
        e();
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.u = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.v = null;
        }
        this.J = null;
        this.K = null;
        com.mbridge.msdk.foundation.c.b.a().c(this.a + "_1");
        com.mbridge.msdk.foundation.c.b.a().c(this.a + "_2");
        com.mbridge.msdk.foundation.same.f.b.a().execute(new a(this.s, this.a, this.y));
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onPause();
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onRestart();
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onRestart();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (com.mbridge.msdk.foundation.c.b.c) {
            return;
        }
        com.mbridge.msdk.foundation.controller.b.d().a((Context) this);
        try {
            com.mbridge.msdk.foundation.same.f.b.a().execute(new b(this.a, this.s));
        } catch (Throwable th) {
            aa.d("MBRewardVideoActivity", th.getMessage());
        }
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onResume();
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onResume();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(SAVE_STATE_KEY_REPORT, this.p);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (com.mbridge.msdk.foundation.c.b.c) {
            return;
        }
        new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.reward.player.MBRewardVideoActivity.4
            @Override // com.mbridge.msdk.foundation.c.a
            public final void a() {
                MBRewardVideoActivity.this.onPause();
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void a(String str) {
                MBRewardVideoActivity.this.onResume();
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void b() {
                MBRewardVideoActivity.this.onResume();
            }
        };
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onStart();
            this.r.setCampaignUnitId(this.a);
            com.mbridge.msdk.foundation.c.b.a().a(this.a + "_1", this.r);
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStart();
            List<CampaignEx> list = this.t;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = this.t.get(0);
                campaignEx.setCampaignUnitId(this.a);
                com.mbridge.msdk.foundation.c.b.a().a(this.a + "_1", campaignEx);
            }
        }
        if (this.A) {
            return;
        }
        com.mbridge.msdk.foundation.c.b.a().b(this.a + "_1", 1);
        com.mbridge.msdk.foundation.c.b.a().c(this.a + "_2");
        this.A = true;
    }

    @Override // android.app.Activity
    protected void onStop() {
        MBridgeConstans.isRewardActivityShowing = false;
        super.onStop();
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.onStop();
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStop();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(t.a(this, "mbridge_transparent_theme", "style"));
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i, int i2, int i3, int i4, int i5) {
        this.D = i2;
        this.F = i3;
        this.E = i4;
        this.G = i5;
        this.H = i;
        MBTempContainer mBTempContainer = this.u;
        if (mBTempContainer != null) {
            mBTempContainer.setNotchPadding(i, i2, i3, i4, i5);
        }
        MBridgeBTContainer mBridgeBTContainer = this.v;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.setNotchPadding(i, i2, i3, i4, i5);
        }
        com.mbridge.msdk.video.dynview.a.a.f7506e = i;
        com.mbridge.msdk.video.dynview.a.a.a = i2;
        com.mbridge.msdk.video.dynview.a.a.b = i3;
        com.mbridge.msdk.video.dynview.a.a.c = i4;
        com.mbridge.msdk.video.dynview.a.a.f7505d = i5;
    }
}
