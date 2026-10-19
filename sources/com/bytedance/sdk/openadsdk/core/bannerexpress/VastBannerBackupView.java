package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.m;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.ShadowImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class VastBannerBackupView extends BackupView implements c.InterfaceC0092c, c.d {
    public boolean a;
    private NativeExpressView m;
    private com.com.bytedance.overseas.sdk.a.c n;
    private NativeVideoTsView o;
    private ShadowImageView p;
    private String q;
    private long r;
    private PAGBannerAdWrapperListener s;

    private static class a {
        public FrameLayout a;
        public RatioFrameLayout b;
        public ShadowImageView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ShadowImageView f1477d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public PAGLogoView f1478e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PAGImageView f1479f;

        private a() {
        }
    }

    public VastBannerBackupView(@NonNull Context context) {
        super(context);
        this.a = true;
        this.b = context;
    }

    private void f() {
        m mVarA = BannerExpressBackupView.a(this.m.getExpectExpressWidth(), this.m.getExpectExpressHeight());
        if (this.m.getExpectExpressWidth() <= 0 || this.m.getExpectExpressHeight() <= 0) {
            int iC = ad.c(this.b);
            this.f1617g = iC;
            this.h = Float.valueOf(iC / mVarA.b).intValue();
        } else {
            this.f1617g = ad.b(this.b, this.m.getExpectExpressWidth());
            this.h = ad.b(this.b, this.m.getExpectExpressHeight());
        }
        int i = this.f1617g;
        if (i > 0 && i > ad.c(this.b)) {
            this.f1617g = ad.c(this.b);
            this.h = Float.valueOf(this.h * (ad.c(this.b) / this.f1617g)).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f1617g, this.h);
        }
        layoutParams.width = this.f1617g;
        layoutParams.height = this.h;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        g();
    }

    private void g() {
        View view;
        q qVar = this.c;
        if (qVar != null) {
            int iAd = qVar.ad();
            a aVarH = h();
            if (aVarH == null || (view = aVarH.a) == null) {
                return;
            }
            addView(view);
            ShadowImageView shadowImageView = aVarH.f1477d;
            PAGLogoView pAGLogoView = aVarH.f1478e;
            PAGImageView pAGImageView = aVarH.f1479f;
            if (pAGImageView != null && this.c.h()) {
                ad.a((View) pAGImageView, 0);
                com.bytedance.sdk.openadsdk.k.c.a().a((int) ad.a(o.a(), 11.0f, true), pAGImageView, this.c);
            }
            this.p = aVarH.c;
            NativeVideoTsView videoView = getVideoView();
            if (videoView instanceof NativeVideoTsView) {
                this.o = videoView;
                videoView.setVideoAdLoadListener(this);
                this.o.setVideoAdInteractionListener(this);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Pair(shadowImageView, FriendlyObstructionPurpose.CLOSE_AD));
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                arrayList.add(new Pair(pAGLogoView, friendlyObstructionPurpose));
                arrayList.add(new Pair(pAGImageView, friendlyObstructionPurpose));
                arrayList.add(new Pair(this.p, FriendlyObstructionPurpose.VIDEO_CONTROLS));
                this.o.a(arrayList);
                this.o.setAdCreativeClickListener(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                    public void a(View view2, int i) {
                        if (VastBannerBackupView.this.s != null) {
                            VastBannerBackupView.this.s.onAdClicked(view2, i);
                        }
                    }
                });
            }
            if (pAGLogoView != null) {
                pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        TTWebsiteActivity.a(((BackupView) VastBannerBackupView.this).b, ((BackupView) VastBannerBackupView.this).c, ((BackupView) VastBannerBackupView.this).f1616f);
                    }
                });
            }
            if (shadowImageView != null) {
                shadowImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        VastBannerBackupView.this.a();
                    }
                });
                NativeExpressView nativeExpressView = this.m;
                if (nativeExpressView != null) {
                    if (nativeExpressView.getClickListener() != null) {
                        this.m.getClickListener().b(shadowImageView);
                    }
                    if (this.m.getClickCreativeListener() != null) {
                        this.m.getClickCreativeListener().b(shadowImageView);
                    }
                }
            }
            ShadowImageView shadowImageView2 = this.p;
            if (shadowImageView2 != null) {
                shadowImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (VastBannerBackupView.this.o != null) {
                            boolean z = !VastBannerBackupView.this.o.i();
                            VastBannerBackupView vastBannerBackupView = VastBannerBackupView.this;
                            int iD = z ? s.d(vastBannerBackupView.getContext(), "tt_mute_wrapper") : s.d(vastBannerBackupView.getContext(), "tt_unmute_wrapper");
                            VastBannerBackupView.this.o.setIsQuiet(z);
                            VastBannerBackupView.this.p.setImageResource(iD);
                            if (((BackupView) VastBannerBackupView.this).c == null || ((BackupView) VastBannerBackupView.this).c.au() == null || ((BackupView) VastBannerBackupView.this).c.au().a() == null) {
                                return;
                            }
                            if (z) {
                                ((BackupView) VastBannerBackupView.this).c.au().a().h(VastBannerBackupView.this.r);
                            } else {
                                ((BackupView) VastBannerBackupView.this).c.au().a().i(VastBannerBackupView.this.r);
                            }
                        }
                    }
                });
            }
            RatioFrameLayout ratioFrameLayout = aVarH.b;
            q qVar2 = this.c;
            if (qVar2 != null && qVar2.au() != null && ratioFrameLayout != null) {
                int iL = this.c.au().l();
                float fM = this.c.au().m();
                if (iL > 0 && fM > 0.0f) {
                    ratioFrameLayout.setRatio(iL / fM);
                } else if (iAd == 15) {
                    ratioFrameLayout.setRatio(0.5625f);
                } else if (iAd == 5) {
                    ratioFrameLayout.setRatio(1.7777778f);
                } else {
                    ratioFrameLayout.setRatio(1.0f);
                }
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (videoView != null && ratioFrameLayout != null) {
                ratioFrameLayout.addView(videoView, layoutParams);
                videoView.setTag(520093762, Boolean.TRUE);
            }
            a((View) videoView, true);
            a((View) this, true);
            a(ratioFrameLayout);
        }
    }

    private a h() {
        a aVar = new a();
        aVar.a = new FrameLayout(this.b);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        layoutParams.width = -1;
        layoutParams.height = -1;
        aVar.a.setLayoutParams(layoutParams);
        aVar.b = new RatioFrameLayout(this.b);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = 17;
        aVar.b.setLayoutParams(layoutParams2);
        aVar.a.addView(aVar.b);
        int iB = ad.b(this.b, 20.0f);
        int iB2 = ad.b(this.b, 5.0f);
        aVar.c = new ShadowImageView(this.b);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iB, iB);
        layoutParams3.setMargins(iB2, iB2, iB2, iB2);
        aVar.c.setScaleType(ImageView.ScaleType.CENTER);
        aVar.c.setImageDrawable(s.c(this.b, "tt_mute_wrapper"));
        aVar.c.setBackground(s.c(this.b, "tt_mute_btn_bg"));
        aVar.c.setLayoutParams(layoutParams3);
        aVar.a.addView(aVar.c);
        ShadowImageView shadowImageView = new ShadowImageView(this.b);
        aVar.f1477d = shadowImageView;
        shadowImageView.setId(520093697);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(iB, iB);
        layoutParams4.gravity = GravityCompat.END;
        int iB3 = ad.b(this.b, 7.0f);
        int iB4 = ad.b(this.b, 3.0f);
        layoutParams4.setMargins(iB3, iB3, iB3, iB3);
        aVar.f1477d.setScaleType(ImageView.ScaleType.FIT_CENTER);
        aVar.f1477d.setPadding(iB4, iB4, iB4, iB4);
        aVar.f1477d.setImageDrawable(s.c(this.b, "tt_pangle_ad_close_drawable"));
        aVar.f1477d.setBackground(s.c(this.b, "tt_mute_btn_bg"));
        aVar.f1477d.setLayoutParams(layoutParams4);
        aVar.a.addView(aVar.f1477d);
        aVar.f1478e = new PAGLogoView(this.b);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 8388691;
        layoutParams5.setMargins(iB2, iB2, iB2, iB2);
        aVar.f1478e.setLayoutParams(layoutParams5);
        aVar.a.addView(aVar.f1478e);
        aVar.f1479f = new PAGImageView(this.b);
        int iB5 = ad.b(this.b, 11.0f);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(iB5, iB5);
        layoutParams6.gravity = 8388693;
        layoutParams6.rightMargin = iB2;
        layoutParams6.bottomMargin = iB2;
        aVar.f1479f.setVisibility(8);
        aVar.f1479f.setScaleType(ImageView.ScaleType.FIT_CENTER);
        aVar.f1479f.setLayoutParams(layoutParams6);
        aVar.a.addView(aVar.f1479f);
        return aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void a() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f1615e;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.dislike.b bVar = this.f1614d;
        if (bVar != null) {
            bVar.a();
        } else {
            TTDelegateActivity.a(this.c, this.q);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void a(int i, int i2) {
        ShadowImageView shadowImageView = this.p;
        if (shadowImageView != null) {
            shadowImageView.setVisibility(8);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a(long j, long j2) {
        this.r = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(View view, int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
        NativeExpressView nativeExpressView = this.m;
        if (nativeExpressView != null) {
            nativeExpressView.a(view, i, mVar);
            NativeVideoTsView nativeVideoTsView = this.o;
            if (nativeVideoTsView == null || !(nativeVideoTsView.getNativeVideoController() instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.c)) {
                return;
            }
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.c) this.o.getNativeVideoController()).G();
        }
    }

    public void a(q qVar, NativeExpressView nativeExpressView, com.com.bytedance.overseas.sdk.a.c cVar) {
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.c = qVar;
        this.m = nativeExpressView;
        this.n = cVar;
        this.f1616f = "banner_ad";
        nativeExpressView.addView(this, new ViewGroup.LayoutParams(-2, -2));
        f();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void d_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void e_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void f_() {
        ShadowImageView shadowImageView = this.p;
        if (shadowImageView != null) {
            shadowImageView.setVisibility(8);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void g_() {
    }

    public long getVideoProgress() {
        return this.r;
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.s = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.q = str;
    }
}
