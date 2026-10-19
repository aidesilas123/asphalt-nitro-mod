package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.a;
import com.mbridge.msdk.foundation.same.c.c;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.video.module.a.a.j;
import com.mbridge.msdk.video.signal.factory.b;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeNativeEndCardView extends MBridgeBaseView {
    private LinearLayout A;
    private Runnable B;
    private RelativeLayout C;
    private b D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int I;
    private AlphaAnimation J;
    private int K;
    private int L;
    private int M;
    private int N;
    private Bitmap O;
    private View P;
    private View Q;
    private FeedBackButton R;
    private String S;
    private CampaignUnit T;
    private MBShakeView U;
    private com.mbridge.msdk.shake.b V;
    private MBridgeBaitClickView W;
    private boolean aa;
    private ViewGroup n;
    private ViewGroup o;
    private RelativeLayout p;
    private RelativeLayout q;
    private ImageView r;
    private ImageView s;
    private ImageView t;
    private ImageView u;
    private ImageView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private LinearLayout z;

    public MBridgeNativeEndCardView(Context context) {
        super(context);
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = 0;
        this.aa = false;
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = 0;
        this.aa = false;
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet, boolean z, int i, boolean z2, int i2, int i3) {
        super(context, attributeSet, z, i, z2, i2, i3);
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = 0;
        this.aa = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c();
        if (!this.f7552f) {
            this.f7551e.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.J = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void a(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.D);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            b(view);
            c();
        }
        b();
    }

    static /* synthetic */ void a(MBridgeNativeEndCardView mBridgeNativeEndCardView, int i) {
        JSONObject jSONObject;
        CampaignEx campaignEx = mBridgeNativeEndCardView.b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = mBridgeNativeEndCardView.b.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.b() + "";
                }
                q.a(com.mbridge.msdk.foundation.controller.b.d().g(), "end_card_click", mBridgeNativeEndCardView.b.getCampaignUnitId(), mBridgeNativeEndCardView.b.isBidCampaign(), mBridgeNativeEndCardView.b.getRequestId(), mBridgeNativeEndCardView.b.getRequestIdNotice(), mBridgeNativeEndCardView.b.getId(), str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(a.h, mBridgeNativeEndCardView.a(i));
                if (mBridgeNativeEndCardView.b.getDynamicTempCode() == 5) {
                    jSONObject.put("camp_position", 0);
                }
            } catch (JSONException e3) {
                e = e3;
                jSONObject2 = jSONObject;
                e.printStackTrace();
                jSONObject = jSONObject2;
            }
        } catch (JSONException e4) {
            e = e4;
        }
        mBridgeNativeEndCardView.f7551e.a(105, jSONObject);
    }

    static /* synthetic */ void a(MBridgeNativeEndCardView mBridgeNativeEndCardView, final Bitmap bitmap) {
        try {
            com.mbridge.msdk.foundation.same.f.b.c().execute(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.12
                @Override // java.lang.Runnable
                public final void run() {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView2 = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView2.O = mBridgeNativeEndCardView2.blurBitmap(bitmap);
                    if (MBridgeNativeEndCardView.this.O == null || MBridgeNativeEndCardView.this.O.isRecycled() || MBridgeNativeEndCardView.this.r == null) {
                        return;
                    }
                    MBridgeNativeEndCardView.this.r.post(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.12.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MBridgeNativeEndCardView mBridgeNativeEndCardView3 = MBridgeNativeEndCardView.this;
                            if (mBridgeNativeEndCardView3.i) {
                                mBridgeNativeEndCardView3.r.setBackground(null);
                            }
                            aa.d("async", "执行异步加载图");
                            MBridgeNativeEndCardView.this.r.setImageBitmap(MBridgeNativeEndCardView.this.O);
                        }
                    });
                }
            });
        } catch (Exception e2) {
            aa.a(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    private void b() {
        RelativeLayout relativeLayout;
        if (!this.f7552f || (relativeLayout = this.C) == null) {
            return;
        }
        relativeLayout.postDelayed(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (MBridgeNativeEndCardView.this.C != null) {
                    CampaignEx campaignEx = MBridgeNativeEndCardView.this.b;
                    if (campaignEx != null && !campaignEx.isDynamicView() && MBridgeNativeEndCardView.this.b.getAdSpaceT() != 2) {
                        MBridgeNativeEndCardView.this.C.setPadding(MBridgeNativeEndCardView.this.K, MBridgeNativeEndCardView.this.M, MBridgeNativeEndCardView.this.L, MBridgeNativeEndCardView.this.N);
                        MBridgeNativeEndCardView.this.C.startAnimation(MBridgeNativeEndCardView.this.J);
                    }
                    MBridgeNativeEndCardView.this.C.setVisibility(0);
                }
                if (MBridgeNativeEndCardView.this.P != null && MBridgeNativeEndCardView.this.P.getVisibility() != 0 && MBridgeNativeEndCardView.this.F) {
                    MBridgeNativeEndCardView.this.P.setVisibility(0);
                }
                MBridgeNativeEndCardView.n(MBridgeNativeEndCardView.this);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(View view) {
        try {
            this.p = (RelativeLayout) view.findViewById(filterFindViewId(this.aa, "mbridge_native_ec_layout"));
            this.q = (RelativeLayout) view.findViewById(filterFindViewId(this.aa, "mbridge_native_ec_layer_layout"));
            this.s = (ImageView) view.findViewById(filterFindViewId(this.aa, "mbridge_iv_adbanner"));
            this.t = (ImageView) view.findViewById(filterFindViewId(this.aa, "mbridge_iv_icon"));
            this.u = (ImageView) view.findViewById(filterFindViewId(this.aa, "mbridge_iv_flag"));
            this.v = (ImageView) view.findViewById(filterFindViewId(this.aa, "mbridge_iv_link"));
            this.w = (TextView) view.findViewById(filterFindViewId(this.aa, "mbridge_tv_apptitle"));
            this.z = (LinearLayout) view.findViewById(filterFindViewId(this.aa, "mbridge_sv_starlevel"));
            this.A = (LinearLayout) view.findViewById(filterFindViewId(this.aa, "mbridge_sv_heat_count_level"));
            this.P = view.findViewById(filterFindViewId(this.aa, "mbridge_iv_close"));
            this.Q = view.findViewById(filterFindViewId(this.aa, "mbridge_tv_cta"));
            this.R = (FeedBackButton) view.findViewById(filterFindViewId(this.aa, "mbridge_native_endcard_feed_btn"));
            this.C = (RelativeLayout) view.findViewById(filterFindViewId(this.aa, "mbridge_native_ec_controller"));
            this.r = (ImageView) view.findViewById(filterFindViewId(this.aa, "mbridge_iv_adbanner_bg"));
            this.W = (MBridgeBaitClickView) findViewById(filterFindViewId(this.aa, "mbridge_animation_click_view"));
            if (!this.i) {
                this.x = (TextView) view.findViewById(filterFindViewId(this.aa, "mbridge_tv_appdesc"));
                TextView textView = (TextView) view.findViewById(filterFindViewId(this.aa, "mbridge_tv_number"));
                this.y = textView;
                return isNotNULL(this.r, this.s, this.t, this.w, this.x, textView, this.z, this.P, this.Q);
            }
            ImageView imageView = this.s;
            if (imageView != null && (imageView instanceof RoundImageView)) {
                ((RoundImageView) imageView).setBorderRadius(10);
            }
            ImageView imageView2 = this.t;
            if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                ((RoundImageView) imageView2).setBorderRadius(10);
            }
            return isNotNULL(this.r, this.s, this.t, this.w, this.z, this.P, this.Q);
        } catch (Throwable th) {
            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    static /* synthetic */ void n(MBridgeNativeEndCardView mBridgeNativeEndCardView) {
        CampaignEx campaignEx = mBridgeNativeEndCardView.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(mBridgeNativeEndCardView.S);
            com.mbridge.msdk.foundation.c.b.a().a(mBridgeNativeEndCardView.S + "_2", mBridgeNativeEndCardView.b);
        }
        if (!com.mbridge.msdk.foundation.c.b.a().b()) {
            FeedBackButton feedBackButton = mBridgeNativeEndCardView.R;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.c.b.a().a(mBridgeNativeEndCardView.S + "_2", new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.4
            @Override // com.mbridge.msdk.foundation.c.a
            public final void a() {
                MBridgeNativeEndCardView.this.H = true;
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void a(String str) {
                MBridgeNativeEndCardView.this.H = false;
            }

            @Override // com.mbridge.msdk.foundation.c.a
            public final void b() {
                MBridgeNativeEndCardView.this.H = false;
            }
        });
        com.mbridge.msdk.foundation.c.b.a().c(mBridgeNativeEndCardView.S + "_1");
        if (mBridgeNativeEndCardView.R != null) {
            com.mbridge.msdk.foundation.c.b.a().a(mBridgeNativeEndCardView.S + "_2", mBridgeNativeEndCardView.R);
        }
    }

    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript renderScriptCreate = RenderScript.create(this.a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(25.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected final void c() {
        if (this.f7552f) {
            this.p.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (MBridgeNativeEndCardView.this.E) {
                        MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 1);
                    }
                }
            });
            this.P.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (MBridgeNativeEndCardView.this.i) {
                        try {
                            com.mbridge.msdk.video.dynview.moffer.a.a().b();
                        } catch (Exception e2) {
                            aa.d(MBridgeBaseView.TAG, e2.getMessage());
                        }
                        try {
                            if (MBridgeNativeEndCardView.this.b != null) {
                                HashMap map = new HashMap();
                                String strA = al.a(MBridgeNativeEndCardView.this.b.getendcard_url(), "ec_id");
                                String strA2 = al.a(MBridgeNativeEndCardView.this.b.getendcard_url(), "mof");
                                map.put("type", "choseFromTwoClose");
                                map.put("endcard_id", strA);
                                map.put("mof", strA2);
                                com.mbridge.msdk.video.module.b.a.a("2000103", MBridgeNativeEndCardView.this.b, map);
                            }
                        } catch (Exception e3) {
                            if (MBridgeConstans.DEBUG) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    try {
                        if (MBridgeNativeEndCardView.this.b != null) {
                            HashMap map2 = new HashMap();
                            map2.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                            m.a().c(MBridgeNativeEndCardView.this.b.getCurrentLRid(), "2000152", map2);
                            m.a().a("2000134", MBridgeNativeEndCardView.this.b, new HashMap());
                        }
                    } catch (Throwable th) {
                        if (MBridgeConstans.DEBUG) {
                            th.printStackTrace();
                        }
                    }
                    MBridgeNativeEndCardView.this.f7551e.a(104, "");
                }
            });
            this.Q.setOnClickListener(new com.mbridge.msdk.widget.a() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.15
                @Override // com.mbridge.msdk.widget.a
                protected final void a(View view) {
                    MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 0);
                }
            });
            this.t.setOnClickListener(new com.mbridge.msdk.widget.a() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.16
                @Override // com.mbridge.msdk.widget.a
                protected final void a(View view) {
                    MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 0);
                }
            });
            this.s.setOnClickListener(new com.mbridge.msdk.widget.a() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.2
                @Override // com.mbridge.msdk.widget.a
                protected final void a(View view) {
                    MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 0);
                }
            });
        }
    }

    public boolean canBackPress() {
        View view = this.P;
        return view != null && view.getVisibility() == 0;
    }

    public void clearMoreOfferBitmap() {
        CampaignUnit campaignUnit;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView() || (campaignUnit = this.T) == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx2 : this.T.getAds()) {
            if (!TextUtils.isEmpty(campaignEx2.getIconUrl())) {
                com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).c(campaignEx2.getIconUrl());
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    public boolean isDyXmlSuccess() {
        return this.aa;
    }

    public void notifyShowListener() {
        this.f7551e.a(110, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        int i;
        int i2;
        int i3;
        MBridgeBaitClickView mBridgeBaitClickView;
        super.onAttachedToWindow();
        if (this.B == null) {
            this.B = new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.1
                @Override // java.lang.Runnable
                public final void run() {
                    MBridgeNativeEndCardView.this.F = true;
                    if (MBridgeNativeEndCardView.this.P != null) {
                        MBridgeNativeEndCardView.this.P.setVisibility(0);
                    }
                }
            };
        }
        Runnable runnable = this.B;
        if (runnable != null) {
            postDelayed(runnable, this.I * 1000);
            if (!this.G) {
                this.G = true;
            }
            try {
                CampaignEx campaignEx = this.b;
                if (campaignEx != null && campaignEx.isDynamicView()) {
                    String endScreenUrl = this.b.getendcard_url();
                    if (TextUtils.isEmpty(endScreenUrl)) {
                        endScreenUrl = this.b.getEndScreenUrl();
                    }
                    String strA = al.a(endScreenUrl, "alac");
                    if (!TextUtils.isEmpty(strA) && strA.equals("1")) {
                        postDelayed(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 2);
                            }
                        }, 1000L);
                    }
                }
            } catch (Throwable th) {
                aa.d(MBridgeBaseView.TAG, th.getMessage());
            }
        }
        try {
            CampaignEx campaignEx2 = this.b;
            if (campaignEx2 != null && campaignEx2.isDynamicView()) {
                String endScreenUrl2 = this.b.getendcard_url();
                if (TextUtils.isEmpty(endScreenUrl2)) {
                    endScreenUrl2 = this.b.getEndScreenUrl();
                }
                String strA2 = al.a(endScreenUrl2, "bait_click");
                try {
                    i3 = Integer.parseInt(strA2);
                } catch (Throwable th2) {
                    aa.d(MBridgeBaseView.TAG, th2.getMessage());
                    i3 = 1;
                }
                if (!TextUtils.isEmpty(strA2) && i3 != 0 && (mBridgeBaitClickView = this.W) != null) {
                    mBridgeBaitClickView.setVisibility(0);
                    this.W.init(1342177280, i3);
                    this.W.startAnimation();
                    this.W.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 0);
                        }
                    });
                }
            }
        } catch (Throwable th3) {
            aa.d(MBridgeBaseView.TAG, th3.getMessage());
        }
        try {
            CampaignEx campaignEx3 = this.b;
            if (campaignEx3 != null && campaignEx3.isDynamicView()) {
                String endScreenUrl3 = this.b.getendcard_url();
                if (TextUtils.isEmpty(endScreenUrl3)) {
                    endScreenUrl3 = this.b.getEndScreenUrl();
                }
                String strA3 = al.a(endScreenUrl3, "shake_show");
                String strA4 = al.a(endScreenUrl3, "shake_strength");
                String strA5 = al.a(endScreenUrl3, "shake_time");
                if (!TextUtils.isEmpty(strA3) && strA3.equals("1") && this.U == null) {
                    MBridgeBaitClickView mBridgeBaitClickView2 = this.W;
                    if (mBridgeBaitClickView2 != null) {
                        mBridgeBaitClickView2.setVisibility(8);
                    }
                    MBShakeView mBShakeView = new MBShakeView(getContext());
                    this.U = mBShakeView;
                    mBShakeView.initView(this.b.getAdCall(), true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    if (isLandscape()) {
                        layoutParams.addRule(13);
                    } else {
                        layoutParams.addRule(2, filterFindViewId(this.aa, "mbridge_iv_logo"));
                        layoutParams.addRule(14);
                        this.U.setPadding(0, 0, 0, af.b(getContext(), 20.0f));
                    }
                    this.U.setLayoutParams(layoutParams);
                    RelativeLayout relativeLayout = this.p;
                    if (relativeLayout != null && relativeLayout.isShown()) {
                        this.p.addView(this.U);
                        View view = this.Q;
                        if (view != null) {
                            view.setVisibility(4);
                        }
                        this.Q.setVisibility(4);
                        this.U.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, 0);
                            }
                        });
                        int i4 = 10;
                        if (!TextUtils.isEmpty(strA4) && (i2 = Integer.parseInt(strA4)) > 0) {
                            i4 = i2;
                        }
                        int i5 = 5000;
                        if (!TextUtils.isEmpty(strA5) && (i = Integer.parseInt(strA5)) > 0) {
                            i5 = i * 1000;
                        }
                        this.V = new com.mbridge.msdk.shake.b(i4, i5) { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.6
                            @Override // com.mbridge.msdk.shake.b
                            public final void a() {
                                if (!MBridgeNativeEndCardView.this.H && MBridgeNativeEndCardView.this.G) {
                                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                                    mBridgeNativeEndCardView.f7553g = 0.0f;
                                    mBridgeNativeEndCardView.h = 0.0f;
                                    MBridgeNativeEndCardView.a(mBridgeNativeEndCardView, 4);
                                }
                            }
                        };
                        com.mbridge.msdk.shake.a.a().a(this.V);
                    }
                }
            }
        } catch (Throwable th4) {
            aa.d(MBridgeBaseView.TAG, th4.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.B;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        if (this.V != null) {
            com.mbridge.msdk.shake.a.a().b(this.V);
            this.V = null;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            RelativeLayout relativeLayout = this.C;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(4);
            }
            int i = configuration.orientation;
            this.f7550d = i;
            if (i == 2) {
                removeView(this.n);
                a(this.o);
            } else {
                removeView(this.o);
                a(this.n);
            }
        }
    }

    public void preLoadData(b bVar) {
        ImageView imageView;
        this.D = bVar;
        try {
            if (this.b == null || !this.f7552f) {
                return;
            }
            com.mbridge.msdk.foundation.same.c.b.a(this.a.getApplicationContext()).a(this.b.getImageUrl(), new c() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.10
                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onFailedLoad(String str, String str2) {
                }

                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onSuccessLoad(Bitmap bitmap, String str) {
                    if (bitmap == null || bitmap.isRecycled()) {
                        return;
                    }
                    try {
                        if (MBridgeNativeEndCardView.this.s != null) {
                            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                            if (mBridgeNativeEndCardView.i) {
                                mBridgeNativeEndCardView.s.setBackground(null);
                            }
                            MBridgeNativeEndCardView.this.s.setImageBitmap(bitmap);
                        }
                        MBridgeNativeEndCardView.a(MBridgeNativeEndCardView.this, bitmap);
                    } catch (Throwable unused) {
                        if (MBridgeNativeEndCardView.this.r != null) {
                            MBridgeNativeEndCardView.this.r.setVisibility(4);
                        }
                    }
                }
            });
            com.mbridge.msdk.foundation.same.c.b.a(this.a.getApplicationContext()).a(this.b.getIconUrl(), new j(this.t, af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 8.0f)));
            this.w.setText(this.b.getAppName());
            View view = this.Q;
            if (view != null && (view instanceof TextView)) {
                ((TextView) view).setText(this.b.getAdCall());
            }
            TextView textView = this.x;
            if (textView != null) {
                textView.setText(this.b.getAppDesc());
            }
            TextView textView2 = this.y;
            if (textView2 != null) {
                textView2.setText(this.b.getNumberRating() + ")");
            }
            this.z.removeAllViews();
            double rating = this.b.getRating();
            if (rating <= 0.0d) {
                rating = 5.0d;
            }
            LinearLayout linearLayout = this.z;
            if (linearLayout instanceof StarLevelView) {
                ((StarLevelView) linearLayout).initScore(rating);
            }
            LinearLayout linearLayout2 = this.z;
            if (linearLayout2 instanceof MBridgeLevelLayoutView) {
                ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, this.b.getNumberRating());
            }
            LinearLayout linearLayout3 = this.z;
            if (linearLayout3 instanceof MBStarLevelLayoutView) {
                ((MBStarLevelLayoutView) linearLayout3).setRating((int) rating);
            }
            LinearLayout linearLayout4 = this.A;
            if (linearLayout4 != null && (linearLayout4 instanceof MBHeatLevelLayoutView)) {
                ((MBHeatLevelLayoutView) linearLayout4).setHeatCount(this.b.getNumberRating());
            }
            if (!TextUtils.isEmpty(this.b.getendcard_url()) && this.b.getendcard_url().contains("alecfc=1")) {
                this.E = true;
            }
            String language = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                this.u.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.b.d().b())));
            } else {
                this.u.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.b.d().b())));
            }
            af.a(2, this.v, this.b, this.a, true, new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.11
                @Override // com.mbridge.msdk.foundation.c.a
                public final void a() {
                    MBridgeNativeEndCardView.this.H = true;
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void a(String str) {
                    MBridgeNativeEndCardView.this.H = false;
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void b() {
                    MBridgeNativeEndCardView.this.H = false;
                }
            });
            if (!this.F) {
                this.P.setVisibility(8);
            }
            if (Build.VERSION.SDK_INT >= 17 || (imageView = this.r) == null) {
                return;
            }
            imageView.setVisibility(8);
        } catch (Throwable th) {
            aa.a(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.J;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.B = null;
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void setCloseBtnDelay(int i) {
        this.I = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setLayout() {
        /*
            r6 = this;
            boolean r0 = r6.i
            if (r0 == 0) goto L25
            com.mbridge.msdk.video.dynview.j.c r0 = new com.mbridge.msdk.video.dynview.j.c
            r0.<init>()
            android.content.Context r1 = r6.getContext()
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = r6.b
            int r3 = r6.j
            java.lang.String r4 = "en_"
            com.mbridge.msdk.video.dynview.c r0 = r0.a(r1, r2, r3, r4)
            com.mbridge.msdk.video.dynview.b r1 = com.mbridge.msdk.video.dynview.b.a()
            com.mbridge.msdk.video.module.MBridgeNativeEndCardView$9 r2 = new com.mbridge.msdk.video.module.MBridgeNativeEndCardView$9
            r2.<init>()
            r1.a(r0, r2)
            goto L91
        L25:
            int r0 = r6.l
            java.lang.String r1 = "mbridge_reward_endcard_native_half_landscape"
            java.lang.String r2 = "mbridge_reward_endcard_native_land"
            java.lang.String r3 = "mbridge_reward_endcard_native_half_portrait"
            java.lang.String r4 = "mbridge_reward_endcard_native_hor"
            if (r0 != 0) goto L42
            boolean r0 = r6.k
            if (r0 == 0) goto L36
            goto L37
        L36:
            r3 = r4
        L37:
            boolean r0 = r6.isLandscape()
            if (r0 == 0) goto L58
            boolean r0 = r6.k
            if (r0 == 0) goto L56
            goto L57
        L42:
            r5 = 1
            if (r0 != r5) goto L4c
            boolean r5 = r6.k
            if (r5 == 0) goto L4a
            goto L4e
        L4a:
            r3 = r4
            goto L4e
        L4c:
            java.lang.String r3 = ""
        L4e:
            r4 = 2
            if (r0 != r4) goto L58
            boolean r0 = r6.k
            if (r0 == 0) goto L56
            goto L57
        L56:
            r1 = r2
        L57:
            r3 = r1
        L58:
            int r0 = r6.findLayout(r3)
            if (r0 <= 0) goto L91
            boolean r1 = r6.isLandscape()
            r2 = 0
            if (r1 == 0) goto L79
            android.view.LayoutInflater r1 = r6.c
            android.view.View r0 = r1.inflate(r0, r2)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r6.o = r0
            r6.addView(r0)
            android.view.ViewGroup r0 = r6.o
            boolean r0 = r6.b(r0)
            goto L8c
        L79:
            android.view.LayoutInflater r1 = r6.c
            android.view.View r0 = r1.inflate(r0, r2)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r6.n = r0
            r6.addView(r0)
            android.view.ViewGroup r0 = r6.n
            boolean r0 = r6.b(r0)
        L8c:
            r6.f7552f = r0
            r6.a()
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.setLayout():void");
    }

    public void setMoreOfferCampaignUnit(CampaignUnit campaignUnit) {
        MBShakeView mBShakeView;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            return;
        }
        this.T = campaignUnit;
        if (campaignUnit == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 5 || (mBShakeView = this.U) == null) {
            return;
        }
        mBShakeView.setPadding(0, 0, 0, af.b(getContext(), 5.0f));
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        aa.d(MBridgeBaseView.TAG, "NOTCH NativeEndCard " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        this.K = i;
        this.L = i2;
        this.M = i3;
        this.N = i4;
        b();
    }

    public void setOnPause() {
        this.G = false;
    }

    public void setOnResume() {
        this.G = true;
    }

    public void setUnitId(String str) {
        this.S = str;
    }
}
