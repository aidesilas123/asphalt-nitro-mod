package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.b.j;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserDownloadButton;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserNewBottomBar;
import com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout;
import com.bytedance.sdk.openadsdk.common.PangleViewStub;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.g;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.CornerIV;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowImageView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowTextView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.a.e;
import com.bytedance.sdk.openadsdk.g.d;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTVideoLandingPageLink2Activity extends TTVideoLandingPageActivity implements d {
    TTAdDislikeDialog P;
    TTAdDislikeToast Q;
    private LandingPageLoadingLayout T;
    private View U;
    private View V;
    private boolean W;
    private TextView X;
    private TextView Y;
    private long Z;
    private boolean ab;
    private g ac;
    private LinearLayout ad;
    private boolean aa = false;
    final AtomicBoolean R = new AtomicBoolean(false);
    final AtomicBoolean S = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        c.a(this.o, "landingpage_split_screen", "click_video", (JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        LandingPageLoadingLayout landingPageLoadingLayout = this.T;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.b();
        }
    }

    private void o() {
        TTAdDislikeToast tTAdDislikeToast = this.Q;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.a(TTAdDislikeToast.getDislikeTip());
    }

    private void p() {
        try {
            if (this.P == null) {
                TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.f1131e, this.o);
                this.P = tTAdDislikeDialog;
                tTAdDislikeDialog.setCallback(new TTAdDislikeDialog.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.5
                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(int i, FilterWord filterWord) {
                        if (TTVideoLandingPageLink2Activity.this.S.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTVideoLandingPageLink2Activity.this.S.set(true);
                        TTVideoLandingPageLink2Activity.this.q();
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(View view) {
                        TTVideoLandingPageLink2Activity.this.R.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void b(View view) {
                        TTVideoLandingPageLink2Activity.this.R.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void c(View view) {
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.addView(this.P);
            if (this.Q == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.f1131e);
                this.Q = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.Q) == null) {
            return;
        }
        tTAdDislikeToast.a(TTAdDislikeToast.getDislikeSendTip());
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected View a() {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this);
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setBackgroundColor(-1);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this);
        pAGLinearLayout.addView(pAGFrameLayout, new LinearLayout.LayoutParams(-1, ad.b(this, 220.0f)));
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(this);
        pAGFrameLayout2.setId(i.H);
        pAGFrameLayout.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(this);
        pAGLinearLayout2.setOrientation(0);
        pAGLinearLayout2.setPadding(0, ad.b(this, 20.0f), 0, 0);
        pAGFrameLayout.addView(pAGLinearLayout2, new FrameLayout.LayoutParams(-1, -2));
        View view = new View(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        pAGLinearLayout2.addView(view, layoutParams);
        ShadowTextView shadowTextView = new ShadowTextView(this);
        shadowTextView.setId(520093713);
        shadowTextView.setGravity(17);
        shadowTextView.setText(s.b(this, "tt_reward_feedback"));
        shadowTextView.setTextColor(-1);
        shadowTextView.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, ad.b(this, 28.0f));
        int iB = ad.b(this, 16.0f);
        layoutParams2.rightMargin = iB;
        layoutParams2.leftMargin = iB;
        pAGLinearLayout2.addView(shadowTextView, layoutParams2);
        ShadowImageView shadowImageView = new ShadowImageView(this);
        shadowImageView.setId(i.I);
        shadowImageView.setPadding(ad.b(this, 7.0f), ad.b(this, 7.0f), ad.b(this, 7.0f), ad.b(this, 7.0f));
        shadowImageView.setImageResource(s.d(this, "tt_video_close_drawable"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(ad.b(this, 28.0f), ad.b(this, 28.0f));
        layoutParams3.rightMargin = ad.b(this, 12.0f);
        pAGLinearLayout2.addView(shadowImageView, layoutParams3);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(this);
        pAGRelativeLayout.setVisibility(8);
        pAGRelativeLayout.setId(i.J);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = ad.b(this, 10.0f);
        pAGLinearLayout.addView(pAGRelativeLayout, layoutParams4);
        CornerIV cornerIV = new CornerIV(this);
        cornerIV.setId(i.K);
        cornerIV.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        cornerIV.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ad.b(this, 44.0f), ad.b(this, 44.0f));
        layoutParams5.addRule(9);
        layoutParams5.leftMargin = ad.b(this, 5.0f);
        pAGRelativeLayout.addView(cornerIV, layoutParams5);
        PAGTextView pAGTextView = new PAGTextView(this);
        int i = i.L;
        pAGTextView.setId(i);
        pAGTextView.setBackgroundResource(s.d(this, "tt_circle_solid_mian"));
        pAGTextView.setGravity(17);
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 19.0f);
        pAGTextView.setTypeface(Typeface.DEFAULT_BOLD);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(ad.b(this, 44.0f), ad.b(this, 44.0f));
        layoutParams6.addRule(9);
        layoutParams6.leftMargin = ad.b(this, 5.0f);
        pAGRelativeLayout.addView(pAGTextView, layoutParams6);
        PAGTextView pAGTextView2 = new PAGTextView(this);
        pAGTextView2.setId(i.M);
        pAGTextView2.setMaxLines(1);
        pAGTextView2.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView2.setTextColor(Color.parseColor("#e5000000"));
        pAGTextView2.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(15);
        layoutParams7.leftMargin = ad.b(this, 5.0f);
        layoutParams7.rightMargin = ad.b(this, 80.0f);
        layoutParams7.addRule(1, i);
        pAGRelativeLayout.addView(pAGTextView2, layoutParams7);
        PAGTextView pAGTextView3 = new PAGTextView(this);
        pAGTextView3.setId(i.N);
        pAGTextView3.setClickable(true);
        pAGTextView3.setMaxLines(1);
        pAGTextView3.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView3.setFocusable(true);
        pAGTextView3.setGravity(17);
        pAGTextView3.setText(s.b(this, "tt_video_mobile_go_detail"));
        pAGTextView3.setTextColor(-1);
        pAGTextView3.setTextSize(2, 14.0f);
        pAGTextView3.setPadding(ad.b(this, 2.0f), ad.b(this, 2.0f), ad.b(this, 2.0f), ad.b(this, 2.0f));
        pAGTextView3.setBackgroundResource(s.d(this, "tt_ad_cover_btn_begin_bg"));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(ad.b(this, 90.0f), ad.b(this, 36.0f));
        layoutParams8.addRule(11);
        layoutParams8.addRule(15);
        layoutParams8.rightMargin = ad.b(this, 5.0f);
        pAGRelativeLayout.addView(pAGTextView3, layoutParams8);
        PAGFrameLayout pAGFrameLayout3 = new PAGFrameLayout(this);
        pAGLinearLayout.addView(pAGFrameLayout3, new LinearLayout.LayoutParams(-1, -1));
        SSWebView sSWebView = new SSWebView(this);
        sSWebView.setId(i.O);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams9.topMargin = ad.b(this, 2.0f);
        pAGFrameLayout3.addView(sSWebView, layoutParams9);
        PAGRelativeLayout pAGRelativeLayout2 = new PAGRelativeLayout(this);
        pAGRelativeLayout2.setId(i.P);
        pAGRelativeLayout2.setBackgroundColor(Color.parseColor("#F8F8F8"));
        pAGFrameLayout3.addView(pAGRelativeLayout2, new FrameLayout.LayoutParams(-1, -1));
        LandingPageLoadingLayout landingPageLoadingLayout = new LandingPageLoadingLayout(this);
        landingPageLoadingLayout.setId(i.Q);
        pAGRelativeLayout2.addView(landingPageLoadingLayout, new RelativeLayout.LayoutParams(-1, -1));
        PAGLinearLayout pAGLinearLayout3 = new PAGLinearLayout(this);
        pAGLinearLayout3.setId(i.G);
        pAGLinearLayout3.setOrientation(1);
        pAGLinearLayout3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(13);
        pAGRelativeLayout2.addView(pAGLinearLayout3, layoutParams10);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(this);
        tTRoundRectImageView.setId(i.R);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(ad.b(this, 80.0f), ad.b(this, 80.0f));
        layoutParams11.gravity = 17;
        pAGLinearLayout3.addView(tTRoundRectImageView, layoutParams11);
        PAGTextView pAGTextView4 = new PAGTextView(this);
        pAGTextView4.setId(i.S);
        pAGTextView4.setTextColor(Color.parseColor("#161823"));
        pAGTextView4.setTextSize(0, ad.b(this, 24.0f));
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams12.gravity = 17;
        layoutParams12.topMargin = ad.b(this, 12.0f);
        pAGLinearLayout3.addView(pAGTextView4, layoutParams12);
        PAGTextView pAGTextView5 = new PAGTextView(this);
        pAGTextView5.setId(i.T);
        pAGTextView5.setTextColor(Color.parseColor("#80161823"));
        pAGTextView5.setTextSize(0, ad.b(this, 16.0f));
        if (Build.VERSION.SDK_INT >= 17) {
            pAGTextView5.setTextAlignment(4);
        }
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams13.gravity = 17;
        int iB2 = ad.b(this, 60.0f);
        layoutParams13.rightMargin = iB2;
        layoutParams13.leftMargin = iB2;
        layoutParams13.topMargin = ad.b(this, 8.0f);
        pAGLinearLayout3.addView(pAGTextView5, layoutParams13);
        PAGTextView pAGTextView6 = new PAGTextView(this);
        pAGTextView6.setId(i.U);
        pAGTextView6.setGravity(17);
        pAGTextView6.setTextColor(-1);
        pAGTextView6.setText(s.b(this, "tt_video_mobile_go_detail"));
        pAGTextView6.setBackgroundResource(s.d(this, "tt_reward_video_download_btn_bg"));
        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(ad.b(this, 255.0f), ad.b(this, 44.0f));
        layoutParams14.gravity = 17;
        layoutParams14.topMargin = ad.b(this, 32.0f);
        pAGLinearLayout3.addView(pAGTextView6, layoutParams14);
        PAGLogoView pAGLogoView = new PAGLogoView(this);
        pAGLogoView.setId(i.V);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, ad.b(this, 14.0f));
        layoutParams15.addRule(12);
        layoutParams15.leftMargin = ad.b(this, 16.0f);
        layoutParams15.bottomMargin = ad.b(this, 20.0f);
        pAGRelativeLayout2.addView(pAGLogoView, layoutParams15);
        View pangleViewStub = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.8
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserDownloadButton(context);
            }
        });
        pangleViewStub.setId(i.W);
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-1, ad.b(this, 48.0f));
        layoutParams16.gravity = 81;
        pAGFrameLayout3.addView(pangleViewStub, layoutParams16);
        View pangleViewStub2 = new PangleViewStub(this, new PangleViewStub.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.9
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.a
            public View a(Context context) {
                return new LandingPageBrowserNewBottomBar(context);
            }
        });
        pangleViewStub2.setId(i.X);
        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, ad.b(this, 44.0f));
        layoutParams17.gravity = 80;
        pAGFrameLayout3.addView(pangleViewStub2, layoutParams17);
        return pAGLinearLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void c() {
        super.c();
        TextView textView = (TextView) findViewById(520093713);
        if (textView != null) {
            textView.setText(s.a(o.a(), "tt_reward_feedback"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoLandingPageLink2Activity.this.l();
                }
            });
        }
        this.X = (TextView) findViewById(520093714);
        this.T = (LandingPageLoadingLayout) findViewById(i.Q);
        this.U = findViewById(i.P);
        this.V = findViewById(i.G);
        TextView textView2 = (TextView) findViewById(i.S);
        TextView textView3 = (TextView) findViewById(i.T);
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) findViewById(i.R);
        this.Y = (TextView) findViewById(i.U);
        if (this.o.N() != null && !TextUtils.isEmpty(this.o.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.o.N(), tTRoundRectImageView, this.o);
        }
        textView2.setText(this.o.L());
        textView3.setText(this.o.W());
        findViewById(i.V).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                TTWebsiteActivity.a(tTVideoLandingPageLink2Activity.f1131e, tTVideoLandingPageLink2Activity.o, tTVideoLandingPageLink2Activity.D);
            }
        });
        boolean zV = o.d().v();
        this.ab = zV;
        if (zV) {
            ((PangleViewStub) findViewById(i.X)).setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) findViewById(i.ah);
            this.ad = linearLayout;
            linearLayout.setVisibility(8);
            this.ac = new g(this, this.ad, this.a, this.o, "landingpage_split_screen");
            if (this.a.getWebView() != null) {
                this.a.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.12
                    float a = 0.0f;

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            this.a = motionEvent.getY();
                        }
                        j jVar = TTVideoLandingPageLink2Activity.this.K;
                        if (jVar != null) {
                            jVar.b(motionEvent.getActionMasked());
                        }
                        if (motionEvent.getAction() == 2) {
                            float y = motionEvent.getY();
                            float f2 = this.a;
                            if (y - f2 > 8.0f) {
                                if (TTVideoLandingPageLink2Activity.this.ac != null) {
                                    TTVideoLandingPageLink2Activity.this.ac.a();
                                }
                                return false;
                            }
                            if (y - f2 < -8.0f && TTVideoLandingPageLink2Activity.this.ac != null) {
                                TTVideoLandingPageLink2Activity.this.ac.b();
                            }
                        }
                        return false;
                    }
                });
            }
        } else if (this.a.getWebView() != null) {
            this.a.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.13
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    j jVar = TTVideoLandingPageLink2Activity.this.K;
                    if (jVar == null) {
                        return false;
                    }
                    jVar.b(motionEvent.getActionMasked());
                    return false;
                }
            });
        }
        LandingPageLoadingLayout landingPageLoadingLayout = this.T;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.a(this.o, this.D);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void d() {
        if (!e()) {
            try {
                ImageView imageView = new ImageView(this);
                imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                com.bytedance.sdk.openadsdk.k.c.a().a(this.o.Q().get(0), imageView, this.o);
                this.k.setVisibility(0);
                this.k.removeAllViews();
                this.k.addView(imageView);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        c.b(TTVideoLandingPageLink2Activity.this.o, "landingpage_split_screen");
                    }
                });
                return;
            } catch (Exception unused) {
                return;
            }
        }
        super.d();
        NativeVideoTsView nativeVideoTsView = this.m;
        if (nativeVideoTsView != null) {
            if (nativeVideoTsView.getNativeVideoController() != null) {
                this.m.getNativeVideoController().a(false);
                ((com.bytedance.sdk.openadsdk.core.video.nativevideo.c) this.m.getNativeVideoController()).g(false);
                this.k.setClickable(true);
                this.k.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        TTVideoLandingPageLink2Activity.this.m();
                        return false;
                    }
                });
            }
            this.m.getNativeVideoController().a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.3
                @Override // com.bykv.vk.openvk.component.video.api.d.c.a
                public void a() {
                }

                @Override // com.bykv.vk.openvk.component.video.api.d.c.a
                public void a(long j, int i) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.d.c.a
                public void a(long j, long j2) {
                    if (TTVideoLandingPageLink2Activity.this.X != null) {
                        int iMax = (int) Math.max(0L, (j2 - j) / 1000);
                        TTVideoLandingPageLink2Activity.this.X.setText(String.valueOf(iMax));
                        if (iMax <= 0) {
                            TTVideoLandingPageLink2Activity.this.X.setVisibility(8);
                        }
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.d.c.a
                public void b(long j, int i) {
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    protected boolean e() {
        int i = this.l;
        return i == 5 || i == 15 || i == 50;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity
    @SuppressLint({"ClickableViewAccessibility"})
    public void i() {
        super.i();
        q qVar = this.o;
        if (qVar != null) {
            qVar.e(true);
        }
        TextView textView = this.Y;
        if (textView != null) {
            textView.setText(b());
            this.Y.setClickable(true);
            this.Y.setOnClickListener(this.O);
            this.Y.setOnTouchListener(this.O);
        }
    }

    protected void l() {
        if (isFinishing()) {
            return;
        }
        if (this.S.get()) {
            o();
            return;
        }
        if (this.P == null) {
            p();
        }
        this.P.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LandingPageLoadingLayout landingPageLoadingLayout = this.T;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!l.e() || this.o == null || this.a == null) {
            finish();
            return;
        }
        this.ab = o.d().v();
        this.a.setWebViewClient(new e(this.f1131e, this.i, this.f1133g, this.K, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTVideoLandingPageLink2Activity.this.U != null && !TTVideoLandingPageLink2Activity.this.W) {
                        TTVideoLandingPageLink2Activity.this.U.setVisibility(8);
                    }
                    if (TTVideoLandingPageLink2Activity.this.ad != null) {
                        TTVideoLandingPageLink2Activity.this.ad.setVisibility(0);
                    }
                    TTVideoLandingPageLink2Activity.this.aa = true;
                    TTVideoLandingPageLink2Activity.this.n();
                    TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                    com.bytedance.sdk.openadsdk.b.c.a(tTVideoLandingPageLink2Activity.o, tTVideoLandingPageLink2Activity.D, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Z, true);
                } catch (Throwable unused) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.e, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                TTVideoLandingPageLink2Activity.this.Z = System.currentTimeMillis();
            }
        });
        this.a.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.a.d(this.i, this.K) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.d, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTVideoLandingPageLink2Activity.this.ab && TTVideoLandingPageLink2Activity.this.ac != null && i == 100) {
                    TTVideoLandingPageLink2Activity.this.ac.a(webView);
                }
                if (TTVideoLandingPageLink2Activity.this.T != null) {
                    TTVideoLandingPageLink2Activity.this.T.a(i);
                }
            }
        });
        TextView textView = (TextView) findViewById(i.bt);
        if (textView != null && this.o.i() != null) {
            textView.setText(this.o.i().c());
        }
        long jA = 10000;
        q qVar = this.o;
        if (qVar != null && qVar.i() != null) {
            jA = this.o.i().a() * 1000;
        }
        l.c().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTVideoLandingPageLink2Activity.this.W = true;
                    if (TTVideoLandingPageLink2Activity.this.T != null) {
                        TTVideoLandingPageLink2Activity.this.T.b();
                    }
                    TTVideoLandingPageLink2Activity.this.V.setVisibility(0);
                    if (TTVideoLandingPageLink2Activity.this.aa) {
                        return;
                    }
                    TTVideoLandingPageLink2Activity tTVideoLandingPageLink2Activity = TTVideoLandingPageLink2Activity.this;
                    com.bytedance.sdk.openadsdk.b.c.a(tTVideoLandingPageLink2Activity.o, tTVideoLandingPageLink2Activity.D, System.currentTimeMillis() - TTVideoLandingPageLink2Activity.this.Z, false);
                } catch (Exception unused) {
                }
            }
        }, jA);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity, android.app.Activity
    protected void onDestroy() {
        n();
        if (!this.W && this.K != null && this.a != null && this.T.getVisibility() == 8) {
            this.K.a(this.a);
        }
        super.onDestroy();
    }
}
