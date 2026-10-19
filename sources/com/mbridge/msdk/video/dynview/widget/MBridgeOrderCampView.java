package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.video.bt.module.b.f;
import com.mbridge.msdk.video.dynview.e.b;
import com.mbridge.msdk.video.dynview.e.c;
import com.mbridge.msdk.video.dynview.e.g;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeOrderCampView extends MBridgeBaseView {
    private MBridgeOrderCampView n;
    private List<CampaignEx> o;
    private int p;
    private int q;
    private int r;
    private int s;
    private String t;
    private FeedBackButton u;
    private ImageView v;
    private boolean w;
    private c x;
    private b y;
    private boolean z;

    public MBridgeOrderCampView(Context context) {
        super(context);
        this.w = false;
        this.x = new c() { // from class: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.1
            @Override // com.mbridge.msdk.video.dynview.e.c
            public final void a() {
                MBridgeOrderCampView.a(MBridgeOrderCampView.this);
            }

            @Override // com.mbridge.msdk.video.dynview.e.c
            public final void a(CampaignEx campaignEx, int i) {
                if (campaignEx != null) {
                    try {
                        MBridgeOrderCampView.this.setCampaign(campaignEx);
                        MBridgeOrderCampView.a(MBridgeOrderCampView.this, campaignEx, 0, i);
                    } catch (Exception e2) {
                        aa.d(MBridgeBaseView.TAG, e2.getMessage());
                    }
                }
            }
        };
        this.z = false;
    }

    public MBridgeOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = false;
        this.x = new c() { // from class: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.1
            @Override // com.mbridge.msdk.video.dynview.e.c
            public final void a() {
                MBridgeOrderCampView.a(MBridgeOrderCampView.this);
            }

            @Override // com.mbridge.msdk.video.dynview.e.c
            public final void a(CampaignEx campaignEx, int i) {
                if (campaignEx != null) {
                    try {
                        MBridgeOrderCampView.this.setCampaign(campaignEx);
                        MBridgeOrderCampView.a(MBridgeOrderCampView.this, campaignEx, 0, i);
                    } catch (Exception e2) {
                        aa.d(MBridgeBaseView.TAG, e2.getMessage());
                    }
                }
            }
        };
        this.z = false;
    }

    static /* synthetic */ void a(MBridgeOrderCampView mBridgeOrderCampView) {
        try {
            HashMap map = new HashMap();
            map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            m.a().c(mBridgeOrderCampView.b.getCurrentLRid(), "2000152", map);
            m.a().a("2000134", mBridgeOrderCampView.b, new HashMap());
        } catch (Throwable th) {
            aa.a(MBridgeBaseView.TAG, th.getMessage());
        }
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
        com.mbridge.msdk.video.module.a.a aVar = mBridgeOrderCampView.f7551e;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    static /* synthetic */ void a(MBridgeOrderCampView mBridgeOrderCampView, CampaignEx campaignEx, int i, int i2) {
        JSONObject jSONObject;
        JSONException e2;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.b() + "";
                }
                String str2 = str;
                q.a(com.mbridge.msdk.foundation.controller.b.d().g(), "order_view_click" + str2, campaignEx.getCampaignUnitId(), campaignEx.isBidCampaign(), campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str2);
            } catch (Exception e3) {
                aa.d(MBridgeBaseView.TAG, e3.getMessage());
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.h, mBridgeOrderCampView.a(i));
                jSONObject.put("camp_position", i2);
            } catch (JSONException e4) {
                e2 = e4;
                e2.printStackTrace();
            }
        } catch (JSONException e5) {
            jSONObject = null;
            e2 = e5;
        }
        com.mbridge.msdk.video.module.a.a aVar = mBridgeOrderCampView.f7551e;
        if (aVar != null) {
            aVar.a(105, jSONObject);
        }
    }

    public void createView(final ViewGroup viewGroup) {
        if (this.o == null) {
            b bVar = this.y;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put("order_view_callback", this.x);
        com.mbridge.msdk.video.dynview.c cVarB = new com.mbridge.msdk.video.dynview.j.c().b(com.mbridge.msdk.foundation.controller.b.d().g(), this.o);
        com.mbridge.msdk.video.dynview.b.a();
        new com.mbridge.msdk.video.dynview.h.a(cVarB, new g() { // from class: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.2
            @Override // com.mbridge.msdk.video.dynview.e.g
            public final void a(com.mbridge.msdk.video.dynview.a aVar) {
                if (aVar != null) {
                    try {
                        MBridgeOrderCampView.this.n.addView(aVar.a());
                        MBridgeOrderCampView.this.w = aVar.c();
                        viewGroup.removeAllViews();
                        viewGroup.addView(MBridgeOrderCampView.this.n);
                        f.a(com.mbridge.msdk.foundation.controller.b.d().g(), (List<CampaignEx>) MBridgeOrderCampView.this.o, ((CampaignEx) MBridgeOrderCampView.this.o.get(0)).getCampaignUnitId());
                        MBridgeOrderCampView.this.setViewStatus();
                        if (MBridgeOrderCampView.this.y != null) {
                            MBridgeOrderCampView.this.y.a();
                        }
                    } catch (Exception e2) {
                        aa.d(MBridgeBaseView.TAG, e2.getMessage());
                    }
                }
            }

            @Override // com.mbridge.msdk.video.dynview.e.g
            public final void a(com.mbridge.msdk.video.dynview.c.a aVar) {
                try {
                    f.a(com.mbridge.msdk.foundation.controller.b.d().g(), (List<CampaignEx>) MBridgeOrderCampView.this.o, ((CampaignEx) MBridgeOrderCampView.this.o.get(0)).getCampaignUnitId(), aVar.b());
                    if (MBridgeOrderCampView.this.y != null) {
                        MBridgeOrderCampView.this.y.b();
                    }
                } catch (Exception e2) {
                    aa.d(MBridgeBaseView.TAG, e2.getMessage());
                }
            }
        }, map);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        this.n = this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        JSONObject jSONObject;
        JSONException e2;
        super.onAttachedToWindow();
        if (this.o == null) {
            return;
        }
        for (int i = 0; i < this.o.size(); i++) {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("camp_position", i);
                } catch (JSONException e3) {
                    e2 = e3;
                    e2.printStackTrace();
                }
            } catch (JSONException e4) {
                jSONObject = null;
                e2 = e4;
            }
            com.mbridge.msdk.video.module.a.a aVar = this.f7551e;
            if (aVar != null) {
                aVar.a(110, jSONObject);
            }
        }
    }

    public void setCampOrderViewBuildCallback(b bVar) {
        this.y = bVar;
    }

    public void setCampaignExes(List<CampaignEx> list) {
        this.o = list;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        this.p = i;
        this.q = i2;
        this.r = i3;
        this.s = i4;
        setViewStatus();
    }

    public void setRewarded(boolean z) {
        this.z = z;
    }

    public void setViewStatus() {
        MBridgeOrderCampView mBridgeOrderCampView = this.n;
        if (mBridgeOrderCampView == null || !this.z) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) mBridgeOrderCampView.findViewById(filterFindViewId(this.w, "mbridge_native_order_camp_controller"));
        this.u = (FeedBackButton) this.n.findViewById(filterFindViewId(this.w, "mbridge_native_order_camp_feed_btn"));
        this.v = (ImageView) this.n.findViewById(filterFindViewId(this.w, "mbridge_iv_link"));
        if (relativeLayout != null) {
            relativeLayout.setPadding(this.p, this.r, this.q, this.s);
        }
        if (this.u != null) {
            try {
                List<CampaignEx> list = this.o;
                if (list == null || list.get(0) == null) {
                    FeedBackButton feedBackButton = this.u;
                    if (feedBackButton != null) {
                        feedBackButton.setVisibility(8);
                    }
                } else {
                    this.t = this.o.get(0).getCampaignUnitId();
                    this.b = this.o.get(0);
                    com.mbridge.msdk.foundation.c.b.a().a(this.t + "_2", this.b);
                    if (this.u != null) {
                        if (com.mbridge.msdk.foundation.c.b.a().b()) {
                            com.mbridge.msdk.foundation.c.b.a().a(this.t + "_2", new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.3
                                @Override // com.mbridge.msdk.foundation.c.a
                                public final void a() {
                                }

                                @Override // com.mbridge.msdk.foundation.c.a
                                public final void a(String str) {
                                }

                                @Override // com.mbridge.msdk.foundation.c.a
                                public final void b() {
                                }
                            });
                            com.mbridge.msdk.foundation.c.b.a().a(this.t + "_2", this.u);
                        } else {
                            this.u.setVisibility(8);
                        }
                    }
                }
            } catch (Exception e2) {
                aa.d(MBridgeBaseView.TAG, e2.getMessage());
            }
        }
        ImageView imageView = this.v;
        if (imageView == null || imageView == null) {
            return;
        }
        try {
            e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                this.v.setVisibility(8);
                return;
            }
            final String strAl = eVarB.al();
            if (TextUtils.isEmpty(strAl)) {
                this.v.setVisibility(8);
            }
            this.v.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.mbridge.msdk.click.b.b(((MBridgeBaseView) MBridgeOrderCampView.this).a, strAl);
                }
            });
        } catch (Exception e3) {
            aa.d(MBridgeBaseView.TAG, e3.getMessage());
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.n.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.n.startAnimation(translateAnimation);
    }
}
