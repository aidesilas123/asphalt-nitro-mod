package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.f;
import com.bytedance.sdk.openadsdk.core.nativeexpress.m;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.RatioImageView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.gameloft.adsmanager.JavaUtils;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class BannerExpressBackupView extends BackupView {
    public static m[] a = {new m(1, 6.4f, JavaUtils.Constants.BANNER_WIDTH_DP, 50), new m(4, 1.2f, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 250)};
    private static final AtomicInteger m = new AtomicInteger(1);
    private a n;
    private NativeExpressView o;
    private String p;
    private PAGBannerAdWrapperListener q;

    private static class a {
        public RatioImageView a;
        public TextView b;
        public TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f1469d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f1470e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f1471f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TTRatingBar2 f1472g;
        View h;
        TextView i;
        ImageView j;
        private RatioFrameLayout k;

        a(ImageView imageView, TextView textView, View view, TextView textView2, ImageView imageView2, TextView textView3, TextView textView4, RatioImageView ratioImageView) {
            this(imageView, textView, null, null, view, textView2, imageView2);
            this.c = textView3;
            this.b = textView4;
            this.a = ratioImageView;
        }

        a(ImageView imageView, TextView textView, TextView textView2, TTRatingBar2 tTRatingBar2, View view, TextView textView3, ImageView imageView2) {
            this.f1469d = imageView;
            this.f1470e = textView;
            this.f1471f = textView2;
            this.f1472g = tTRatingBar2;
            this.h = view;
            this.i = textView3;
            this.j = imageView2;
        }

        a(TextView textView, View view, TextView textView2, ImageView imageView, TextView textView3, RatioFrameLayout ratioFrameLayout) {
            this(null, textView, null, null, view, textView2, imageView);
            this.b = textView3;
            this.k = ratioFrameLayout;
        }
    }

    public BannerExpressBackupView(@NonNull Context context) {
        super(context);
        this.b = context;
    }

    public static m a(int i, int i2) {
        try {
            return ((double) i2) >= Math.floor((((double) i) * 450.0d) / 600.0d) ? a[1] : a[0];
        } catch (Throwable unused) {
            return a[0];
        }
    }

    private void a(ImageView imageView) {
        com.bytedance.sdk.openadsdk.k.c.a().a(this.c.Q().get(0), imageView, this.c);
    }

    private void b() {
        m mVarA = a(this.o.getExpectExpressWidth(), this.o.getExpectExpressHeight());
        if (this.o.getExpectExpressWidth() <= 0 || this.o.getExpectExpressHeight() <= 0) {
            int iC = ad.c(this.b);
            this.f1617g = iC;
            this.h = Float.valueOf(iC / mVarA.b).intValue();
        } else {
            this.f1617g = ad.b(this.b, this.o.getExpectExpressWidth());
            this.h = ad.b(this.b, this.o.getExpectExpressHeight());
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
        int i2 = mVarA.a;
        if (i2 == 1) {
            c();
        } else if (i2 == 4) {
            d();
        } else {
            d();
        }
    }

    private void c() {
        float fB = (this.h * 1.0f) / ad.b(this.b, 50.0f);
        float f2 = this.h * 1.0f;
        int i = this.f1617g;
        if (f2 / i > 0.21875f) {
            fB = (i * 1.0f) / ad.b(this.b, 320.0f);
        }
        a aVarE = e();
        this.n = aVarE;
        ImageView imageView = aVarE.j;
        ImageView imageView2 = aVarE.f1469d;
        TextView textView = aVarE.f1470e;
        TextView textView2 = aVarE.f1471f;
        TTRatingBar2 tTRatingBar2 = aVarE.f1472g;
        TextView textView3 = aVarE.i;
        textView.setTextSize(2, ad.a(this.b, textView.getTextSize()) * fB);
        textView2.setTextSize(2, ad.a(this.b, textView2.getTextSize()) * fB);
        textView3.setTextSize(2, ad.a(this.b, textView3.getTextSize()) * fB);
        View view = this.n.h;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.a(((BackupView) BannerExpressBackupView.this).b, ((BackupView) BannerExpressBackupView.this).c, ((BackupView) BannerExpressBackupView.this).f1616f);
                }
            });
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BannerExpressBackupView.this.a();
            }
        });
        ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (ad.b(this.b, 45.0f) * fB);
            layoutParams.height = (int) (ad.b(this.b, 45.0f) * fB);
        }
        if (this.c.N() != null && !TextUtils.isEmpty(this.c.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.c.N().a(), this.c.N().b(), this.c.N().c(), imageView2, this.c);
        }
        textView.setText(getTitle());
        if (TextUtils.isEmpty(this.c.X())) {
            textView3.setVisibility(8);
        } else {
            textView3.setText(this.c.X());
        }
        ad.a(textView2, tTRatingBar2, this.c);
        a((View) imageView2, true);
        imageView2.setTag(520093762, Boolean.TRUE);
        a((View) this, true);
        a((View) textView3, true);
    }

    private void d() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        q qVar = this.c;
        if (qVar != null) {
            int iAd = qVar.ad();
            float fB = (this.h * 1.0f) / ad.b(this.b, 250.0f);
            if (this.c.K() != null) {
                a aVarG = g();
                this.n = aVarG;
                ImageView imageView = aVarG.j;
                TextView textView4 = aVarG.f1470e;
                TextView textView5 = aVarG.b;
                TextView textView6 = aVarG.i;
                RatioFrameLayout ratioFrameLayout = aVarG.k;
                textView4.setTextSize(2, ad.a(this.b, textView4.getTextSize()) * fB);
                textView5.setTextSize(2, ad.a(this.b, textView5.getTextSize()) * fB);
                textView6.setTextSize(2, ad.a(this.b, textView6.getTextSize()) * fB);
                View view = this.n.h;
                if (view != null) {
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            TTWebsiteActivity.a(((BackupView) BannerExpressBackupView.this).b, ((BackupView) BannerExpressBackupView.this).c, ((BackupView) BannerExpressBackupView.this).f1616f);
                        }
                    });
                }
                if (iAd == 15) {
                    ratioFrameLayout.setRatio(0.5625f);
                } else if (iAd == 5) {
                    ratioFrameLayout.setRatio(1.7777778f);
                } else {
                    ratioFrameLayout.setRatio(1.0f);
                }
                ratioFrameLayout.removeAllViews();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                NativeVideoTsView videoView = getVideoView();
                if (videoView != null) {
                    NativeExpressView nativeExpressView = this.o;
                    if (nativeExpressView instanceof NativeExpressVideoView) {
                        videoView.setVideoAdInteractionListener((NativeExpressVideoView) nativeExpressView);
                    }
                    ratioFrameLayout.addView(videoView, layoutParams);
                    videoView.setAdCreativeClickListener(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.6
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                        public void a(View view2, int i) {
                            if (BannerExpressBackupView.this.q != null) {
                                BannerExpressBackupView.this.q.onAdClicked(view2, i);
                            }
                        }
                    });
                    f clickCreativeListener = this.o.getClickCreativeListener();
                    if (clickCreativeListener != null) {
                        clickCreativeListener.a(videoView.getNativeVideoController());
                    }
                }
                textView4.setText(getNameOrSource());
                textView5.setText(getDescription());
                if (TextUtils.isEmpty(this.c.X())) {
                    textView6.setVisibility(8);
                } else {
                    textView6.setText(this.c.X());
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BannerExpressBackupView.this.a();
                    }
                });
                int iB = ad.b(this.b, 15.0f);
                ad.a(imageView, iB, iB, iB, iB);
                a((View) videoView, true);
                if (videoView != null) {
                    videoView.setTag(520093762, Boolean.TRUE);
                }
                a((View) this, true);
                a((View) textView6, true);
                a(ratioFrameLayout);
                return;
            }
            a aVarF = f();
            this.n = aVarF;
            ImageView imageView2 = aVarF.j;
            RatioImageView ratioImageView = aVarF.a;
            ImageView imageView3 = aVarF.f1469d;
            TextView textView7 = aVarF.f1470e;
            TextView textView8 = aVarF.b;
            TextView textView9 = aVarF.c;
            TextView textView10 = aVarF.i;
            ViewGroup.LayoutParams layoutParams2 = imageView3.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.width = (int) (ad.b(this.b, 45.0f) * fB);
                layoutParams2.height = (int) (ad.b(this.b, 45.0f) * fB);
            }
            textView7.setTextSize(2, ad.a(this.b, textView7.getTextSize()) * fB);
            textView8.setTextSize(2, ad.a(this.b, textView8.getTextSize()) * fB);
            textView9.setTextSize(2, ad.a(this.b, textView9.getTextSize()) * fB);
            textView10.setTextSize(2, ad.a(this.b, textView10.getTextSize()) * fB);
            try {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) textView7.getLayoutParams();
                float f2 = fB - 1.0f;
                if (f2 > 0.0f) {
                    layoutParams3.topMargin = ad.b(this.b, f2 * 8.0f);
                }
                ((LinearLayout.LayoutParams) textView10.getLayoutParams()).setMargins(0, (int) (ad.b(this.b, 16.0f) * fB), 0, 0);
            } catch (Throwable unused) {
            }
            View view2 = this.n.h;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        TTWebsiteActivity.a(((BackupView) BannerExpressBackupView.this).b, ((BackupView) BannerExpressBackupView.this).c, ((BackupView) BannerExpressBackupView.this).f1616f);
                    }
                });
            }
            if (iAd == 33) {
                ratioImageView.setRatio(1.0f);
            } else {
                if (ratioImageView.getParent() instanceof FrameLayout) {
                    ((LinearLayout.LayoutParams) ((FrameLayout) ratioImageView.getParent()).getLayoutParams()).weight = 2.5f;
                }
                ratioImageView.setRatio(1.91f);
            }
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    BannerExpressBackupView.this.a();
                }
            });
            int iB2 = ad.b(this.b, 15.0f);
            ad.a(imageView2, iB2, iB2, iB2, iB2);
            a((ImageView) ratioImageView);
            if (this.c.N() == null || TextUtils.isEmpty(this.c.N().a())) {
                textView = textView9;
                textView2 = textView8;
                textView3 = textView7;
            } else {
                textView = textView9;
                textView2 = textView8;
                textView3 = textView7;
                com.bytedance.sdk.openadsdk.k.c.a().a(this.c.N().a(), this.c.N().b(), this.c.N().c(), imageView3, this.c);
            }
            textView.setText(getNameOrSource());
            textView3.setText(getNameOrSource());
            textView2.setText(getDescription());
            if (TextUtils.isEmpty(this.c.X())) {
                textView10.setVisibility(8);
            } else {
                textView10.setText(this.c.X());
            }
            a((View) ratioImageView, true);
            ratioImageView.setTag(520093762, Boolean.TRUE);
            a((View) this, true);
            a((View) textView10, true);
        }
    }

    private a e() {
        int iB = ad.b(this.b, 45.0f);
        int iB2 = ad.b(this.b, 25.0f);
        int i = (int) (((double) iB2) / 5.0d);
        int iB3 = ad.b(this.b, 10.0f);
        int iB4 = ad.b(this.b, 2.0f);
        int iB5 = ad.b(this.b, 3.0f);
        ad.b(this.b, 11.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.b);
        addView(relativeLayout, -1, -1);
        ImageView imageView = new ImageView(this.b);
        imageView.setId(520093738);
        TextView textView = new TextView(this.b);
        textView.setId(520093730);
        TextView textView2 = new TextView(this.b);
        textView2.setId(520093731);
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(this.b, null);
        tTRatingBar2.setId(520093735);
        View pAGLogoView = new PAGLogoView(this.b);
        pAGLogoView.setId(520093739);
        TextView textView3 = new TextView(this.b);
        textView3.setId(520093703);
        ImageView imageView2 = new ImageView(this.b);
        imageView2.setId(520093697);
        a aVar = new a(imageView, textView, textView2, tTRatingBar2, pAGLogoView, textView3, imageView2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB, iB);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams.addRule(20);
        }
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(s.h(this.b, "tt_white"));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout.addView(imageView);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, iB2);
        if (i2 >= 17) {
            layoutParams2.setMarginStart(iB3);
            layoutParams2.addRule(16, textView3.getId());
            layoutParams2.addRule(17, imageView.getId());
            textView.setTextDirection(5);
        }
        layoutParams2.leftMargin = iB3;
        layoutParams2.addRule(0, textView3.getId());
        layoutParams2.addRule(1, imageView.getId());
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(80);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF333333"));
        textView.setTextSize(12.0f);
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, iB2);
        layoutParams3.addRule(3, textView.getId());
        if (i2 >= 17) {
            layoutParams3.setMarginStart(iB3);
            layoutParams3.addRule(17, imageView.getId());
        }
        layoutParams3.leftMargin = iB3;
        layoutParams3.topMargin = iB4;
        layoutParams3.addRule(1, imageView.getId());
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMaxLines(1);
        textView2.setTextColor(Color.parseColor("#FF333333"));
        textView2.setTextSize(12.0f);
        textView2.setTypeface(Typeface.defaultFromStyle(1));
        textView2.setLayoutParams(layoutParams3);
        relativeLayout.addView(textView2);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = iB4;
        layoutParams4.addRule(3, textView.getId());
        layoutParams4.addRule(6, textView2.getId());
        if (i2 >= 17) {
            layoutParams4.setMarginStart(iB4);
            layoutParams4.addRule(17, textView2.getId());
            layoutParams4.addRule(16, textView3.getId());
        }
        layoutParams4.leftMargin = iB4;
        layoutParams4.addRule(1, textView2.getId());
        layoutParams4.addRule(0, textView3.getId());
        tTRatingBar2.setLayoutParams(layoutParams4);
        relativeLayout.addView(tTRatingBar2);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        if (i2 >= 17) {
            layoutParams5.addRule(21);
            layoutParams5.setMarginEnd(iB5);
        }
        layoutParams5.addRule(11);
        layoutParams5.addRule(12);
        layoutParams5.topMargin = iB5;
        layoutParams5.rightMargin = iB5;
        pAGLogoView.setLayoutParams(layoutParams5);
        relativeLayout.addView(pAGLogoView);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(11);
        layoutParams6.addRule(15);
        if (i2 >= 17) {
            layoutParams6.setMarginEnd(iB2);
            layoutParams6.addRule(21);
        }
        layoutParams6.rightMargin = iB2;
        textView3.setBackgroundResource(s.d(this.b, "tt_backup_btn_1"));
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setGravity(17);
        textView3.setMaxLines(1);
        textView3.setPadding(iB3, i, iB3, i);
        textView3.setText(s.a(this.b, "tt_video_download_apk"));
        textView3.setTextColor(Color.parseColor("#f0f0f0"));
        textView3.setTextSize(10.0f);
        textView3.setLayoutParams(layoutParams6);
        relativeLayout.addView(textView3);
        int i3 = iB5 * 5;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i3, i3);
        if (i2 >= 17) {
            layoutParams7.addRule(21);
            layoutParams7.setMarginEnd(iB5);
        }
        layoutParams7.addRule(11);
        layoutParams7.topMargin = iB5;
        layoutParams7.rightMargin = iB5;
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView2.setImageResource(s.d(this.b, "tt_dislike_icon"));
        imageView2.setLayoutParams(layoutParams7);
        relativeLayout.addView(imageView2);
        return aVar;
    }

    private a f() {
        float fB = ad.b(this.b, 5.0f);
        float fB2 = ad.b(this.b, 7.0f);
        float fB3 = ad.b(this.b, 8.0f);
        float fB4 = ad.b(this.b, 18.0f);
        float fB5 = ad.b(this.b, 15.0f);
        float fB6 = ad.b(this.b, 45.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.b);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        int i = (int) fB3;
        relativeLayout.setPadding(i, i, i, i);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        TextView textView = new TextView(this.b);
        textView.setId(520093730);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.width = -1;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams2.setMarginEnd((int) fB4);
            textView.setTextDirection(5);
        }
        int i3 = (int) fB4;
        layoutParams2.rightMargin = i3;
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(GravityCompat.START);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(14.0f);
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        TextView textView2 = new TextView(this.b);
        textView2.setId(520093733);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.width = -1;
        layoutParams3.addRule(3, textView.getId());
        layoutParams3.topMargin = (int) (fB3 / 2.0f);
        if (i2 >= 17) {
            layoutParams3.setMarginEnd(i3);
            textView2.setTextDirection(5);
        }
        layoutParams3.rightMargin = i3;
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setGravity(GravityCompat.START);
        textView2.setMaxLines(2);
        textView2.setTextColor(Color.parseColor("#FFAEAEAE"));
        textView2.setTextSize(12.0f);
        textView2.setLayoutParams(layoutParams3);
        relativeLayout.addView(textView2);
        ImageView imageView = new ImageView(this.b);
        imageView.setId(520093697);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        int i4 = (int) fB5;
        layoutParams4.width = i4;
        layoutParams4.height = i4;
        if (i2 >= 17) {
            layoutParams4.addRule(21);
        }
        layoutParams4.addRule(11);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageResource(s.d(this.b, "tt_titlebar_close_press_for_dark"));
        imageView.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView);
        LinearLayout linearLayout = new LinearLayout(this.b);
        if (i2 >= 17) {
            linearLayout.setLayoutDirection(3);
        }
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(3, textView2.getId());
        linearLayout.setLayoutParams(layoutParams5);
        linearLayout.setOrientation(0);
        relativeLayout.addView(linearLayout);
        FrameLayout frameLayout = new FrameLayout(this.b);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
        layoutParams6.weight = 1.0f;
        frameLayout.setLayoutParams(layoutParams6);
        linearLayout.addView(frameLayout);
        RatioImageView ratioImageView = new RatioImageView(this.b);
        ratioImageView.setId(520093736);
        ratioImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        frameLayout.addView(ratioImageView, new FrameLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout2 = new LinearLayout(this.b);
        linearLayout2.setId(520093737);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
        layoutParams7.weight = 1.0f;
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams7);
        linearLayout.addView(linearLayout2);
        ImageView imageView2 = new ImageView(this.b);
        imageView2.setId(520093738);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
        int i5 = (int) fB6;
        layoutParams8.width = i5;
        layoutParams8.height = i5;
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView2.setLayoutParams(layoutParams8);
        linearLayout2.addView(imageView2);
        TextView textView3 = new TextView(this.b);
        textView3.setId(520093730);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.topMargin = (int) fB2;
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setGravity(17);
        textView3.setMaxLines(1);
        textView3.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView3.setTextSize(12.0f);
        textView3.setLayoutParams(layoutParams9);
        linearLayout2.addView(textView3);
        TextView textView4 = new TextView(this.b);
        textView4.setId(520093703);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams10.topMargin = (int) (fB3 * 2.0f);
        textView4.setBackgroundResource(s.d(this.b, "tt_backup_btn_1"));
        textView4.setEllipsize(TextUtils.TruncateAt.END);
        textView4.setMaxLines(1);
        int i6 = (int) (2.0f * fB);
        int i7 = (int) fB;
        textView4.setPadding(i6, i7, i6, i7);
        textView4.setText(s.a(this.b, "tt_video_download_apk"));
        textView4.setTextColor(s.h(this.b, "tt_white"));
        textView4.setTextSize(10.0f);
        textView4.setLayoutParams(layoutParams10);
        linearLayout2.addView(textView4);
        View pAGLogoView = new PAGLogoView(this.b);
        pAGLogoView.setId(520093739);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams11.addRule(12);
        pAGLogoView.setLayoutParams(layoutParams11);
        relativeLayout.addView(pAGLogoView);
        return new a(imageView2, textView, pAGLogoView, textView4, imageView, textView3, textView2, ratioImageView);
    }

    private a g() {
        float fB = ad.b(this.b, 4.0f);
        float fB2 = ad.b(this.b, 5.0f);
        float fB3 = ad.b(this.b, 8.0f);
        float fB4 = ad.b(this.b, 15.0f);
        float fB5 = ad.b(this.b, 18.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.b);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        int i = (int) fB3;
        relativeLayout.setPadding(i, i, i, i);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        TextView textView = new TextView(this.b);
        textView.setId(520093730);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.width = -1;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams2.setMarginEnd((int) fB5);
            textView.setTextDirection(5);
        }
        layoutParams2.rightMargin = (int) fB5;
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(GravityCompat.START);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(14.0f);
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        ImageView imageView = new ImageView(this.b);
        imageView.setId(520093697);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        int i3 = (int) fB4;
        layoutParams3.width = i3;
        layoutParams3.height = i3;
        if (i2 >= 17) {
            layoutParams3.addRule(21);
        }
        layoutParams3.addRule(11);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageResource(s.d(this.b, "tt_titlebar_close_press_for_dark"));
        imageView.setLayoutParams(layoutParams3);
        relativeLayout.addView(imageView);
        TextView textView2 = new TextView(this.b);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        textView2.setId(520093703);
        layoutParams4.addRule(11);
        if (i2 >= 17) {
            layoutParams4.addRule(21);
        }
        layoutParams4.addRule(12);
        layoutParams4.topMargin = i;
        textView2.setBackgroundResource(s.d(this.b, "tt_backup_btn_1"));
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        int i4 = (int) (2.0f * fB2);
        int i5 = (int) fB2;
        textView2.setPadding(i4, i5, i4, i5);
        textView2.setText(s.a(this.b, "tt_video_download_apk"));
        textView2.setTextColor(s.h(this.b, "tt_white"));
        textView2.setTextSize(10.0f);
        textView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(textView2);
        TextView textView3 = new TextView(this.b);
        textView3.setId(520093733);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(4, textView2.getId());
        if (i2 >= 17) {
            layoutParams5.addRule(20);
            layoutParams5.addRule(16, textView2.getId());
            textView3.setTextDirection(5);
        }
        layoutParams5.addRule(12);
        layoutParams5.rightMargin = (int) fB;
        layoutParams5.addRule(0, textView2.getId());
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setGravity(GravityCompat.START);
        textView3.setMaxLines(1);
        textView3.setTextColor(Color.parseColor("#FFAEAEAE"));
        textView3.setTextSize(12.0f);
        textView3.setLayoutParams(layoutParams5);
        relativeLayout.addView(textView3);
        FrameLayout frameLayout = new FrameLayout(this.b);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams6.addRule(2, textView2.getId());
        layoutParams6.addRule(3, textView.getId());
        layoutParams6.topMargin = i;
        frameLayout.setLayoutParams(layoutParams6);
        relativeLayout.addView(frameLayout);
        RatioFrameLayout ratioFrameLayout = new RatioFrameLayout(this.b);
        ratioFrameLayout.setId(520093736);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams7.gravity = 17;
        ratioFrameLayout.setLayoutParams(layoutParams7);
        frameLayout.addView(ratioFrameLayout);
        View pAGLogoView = new PAGLogoView(this.b);
        pAGLogoView.setId(520093739);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(2, textView2.getId());
        pAGLogoView.setLayoutParams(layoutParams8);
        relativeLayout.addView(pAGLogoView);
        return new a(textView, pAGLogoView, textView2, imageView, textView3, ratioFrameLayout);
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
            TTDelegateActivity.a(this.c, this.p);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(View view, int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
        a aVar;
        NativeExpressView nativeExpressView = this.o;
        if (nativeExpressView != null) {
            if ((i == 1 || i == 2) && (aVar = this.n) != null) {
                ImageView imageView = aVar.j;
                if (i == 1) {
                    nativeExpressView.getClickListener().b(imageView);
                } else {
                    nativeExpressView.getClickCreativeListener().b(imageView);
                }
            }
            this.o.a(view, i, mVar);
        }
    }

    void a(q qVar, NativeExpressView nativeExpressView, com.com.bytedance.overseas.sdk.a.c cVar) {
        setBackgroundColor(-1);
        this.c = qVar;
        this.o = nativeExpressView;
        this.f1616f = "banner_ad";
        nativeExpressView.addView(this, new ViewGroup.LayoutParams(-2, -2));
        b();
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.q = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.p = str;
    }
}
