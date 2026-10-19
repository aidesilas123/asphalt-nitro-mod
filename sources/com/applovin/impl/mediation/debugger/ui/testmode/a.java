package com.applovin.impl.mediation.debugger.ui.testmode;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.mediation.debugger.a.a;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.ads.MaxRewardedInterstitialAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.json.hc;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a implements a.InterfaceC0065a, AdControlButton.a, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {
    private MaxInterstitialAd apY;
    private MaxAppOpenAd apZ;
    private MaxRewardedInterstitialAd aqa;
    private MaxRewardedAd aqb;
    private MaxNativeAdLoader aqc;
    private MaxAd aqd;

    @Nullable
    private List<String> aqf;
    private com.applovin.impl.mediation.debugger.b.c.b arV;
    private MaxAdView atS;
    private MaxAdView atT;
    private String atU;
    private AdControlButton atV;
    private AdControlButton atW;
    private AdControlButton atX;
    private AdControlButton atY;
    private AdControlButton atZ;
    private AdControlButton aua;
    private AdControlButton aub;
    private Button auc;
    private Button aud;
    private FrameLayout aue;
    private FrameLayout auf;
    private Switch aug;
    private Switch auh;
    private Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.a> aui;
    private n sdk;

    private void b(MaxAdFormat maxAdFormat) {
        MaxAdFormat maxAdFormat2 = MaxAdFormat.BANNER;
        boolean z = (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) && this.aug.isChecked();
        MaxAdFormat maxAdFormat3 = MaxAdFormat.MREC;
        boolean z2 = maxAdFormat3 == maxAdFormat && this.auh.isChecked();
        if (z || z2) {
            this.sdk.CE().bT(this.arV.vu());
        } else {
            this.sdk.CE().bT(getTestModeNetwork(maxAdFormat));
        }
        if (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.atS.loadAd();
            return;
        }
        if (maxAdFormat3 == maxAdFormat) {
            this.atT.loadAd();
            this.auc.callOnClick();
            return;
        }
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.apY.loadAd();
            return;
        }
        if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.apZ.loadAd();
            return;
        }
        if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.aqa.loadAd();
            return;
        }
        if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.aqb.loadAd();
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.aqc.loadAd();
            this.aud.callOnClick();
        }
    }

    private AdControlButton bS(String str) {
        if (str.equals("test_mode_banner") || str.equals("test_mode_leader")) {
            return this.atV;
        }
        if (str.equals("test_mode_mrec")) {
            return this.atW;
        }
        if (str.equals("test_mode_interstitial")) {
            return this.atX;
        }
        if (str.equals("test_mode_app_open")) {
            return this.atY;
        }
        if (str.equals("test_mode_rewarded_interstitial")) {
            return this.atZ;
        }
        if (str.equals(this.atU)) {
            return this.aua;
        }
        if (str.equals("test_mode_native")) {
            return this.aub;
        }
        throw new IllegalArgumentException("Invalid test mode ad unit identifier provided " + str);
    }

    private void c(MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.apY.showAd();
            return;
        }
        if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.apZ.showAd();
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.aqa.showAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.aqb.showAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(View view) {
        this.aue.setVisibility(0);
        this.auf.setVisibility(8);
        this.auc.setBackgroundColor(-1);
        this.aud.setBackgroundColor(-3355444);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(View view) {
        this.auf.setVisibility(0);
        this.aue.setVisibility(8);
        this.aud.setBackgroundColor(-1);
        this.auc.setBackgroundColor(-3355444);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(View view) {
        this.atT.removeAllViews();
        this.atW.setControlState(AdControlButton.b.LOAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(View view) {
        this.atS.removeAllViews();
        this.atV.setControlState(AdControlButton.b.LOAD);
    }

    private void xe() {
        MaxAdFormat maxAdFormat;
        String str;
        boolean zIsTablet = AppLovinSdkUtils.isTablet(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.banner_ad_view_container);
        if (zIsTablet) {
            maxAdFormat = MaxAdFormat.LEADER;
            ((TextView) findViewById(R.id.banner_label)).setText("Leader");
            str = "test_mode_leader";
        } else {
            maxAdFormat = MaxAdFormat.BANNER;
            str = "test_mode_banner";
        }
        if (!this.arV.vy().contains(maxAdFormat)) {
            findViewById(R.id.banner_control_view).setVisibility(8);
            frameLayout.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, this.sdk.getWrappingSdk(), this);
        this.atS = maxAdView;
        maxAdView.setExtraParameter(AppLovinSdkExtraParameterKey.IS_ADAPTIVE_BANNER, "false");
        this.atS.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES, "true");
        this.atS.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_PRECACHE, "true");
        this.atS.setExtraParameter(AppLovinSdkExtraParameterKey.ALLOW_IMMEDIATE_AUTO_REFRESH_PAUSE, "true");
        this.atS.stopAutoRefresh();
        this.atS.setListener(this);
        frameLayout.addView(this.atS, new FrameLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getWidth()), AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getHeight())));
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.banner_control_button);
        this.atV = adControlButton;
        adControlButton.setOnClickListener(this);
        this.atV.setFormat(maxAdFormat);
    }

    private void xf() {
        this.aue = (FrameLayout) findViewById(R.id.mrec_ad_view_container);
        List<MaxAdFormat> listVy = this.arV.vy();
        MaxAdFormat maxAdFormat = MaxAdFormat.MREC;
        if (!listVy.contains(maxAdFormat)) {
            findViewById(R.id.mrec_control_view).setVisibility(8);
            this.aue.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView("test_mode_mrec", maxAdFormat, this.sdk.getWrappingSdk(), this);
        this.atT = maxAdView;
        maxAdView.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES, "true");
        this.atT.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_PRECACHE, "true");
        this.atT.setExtraParameter(AppLovinSdkExtraParameterKey.ALLOW_IMMEDIATE_AUTO_REFRESH_PAUSE, "true");
        this.atT.stopAutoRefresh();
        this.atT.setListener(this);
        this.aue.addView(this.atT, new FrameLayout.LayoutParams(-1, -1));
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.mrec_control_button);
        this.atW = adControlButton;
        adControlButton.setOnClickListener(this);
        this.atW.setFormat(maxAdFormat);
    }

    private void xg() {
        List<MaxAdFormat> listVy = this.arV.vy();
        MaxAdFormat maxAdFormat = MaxAdFormat.INTERSTITIAL;
        if (!listVy.contains(maxAdFormat)) {
            findViewById(R.id.interstitial_control_view).setVisibility(8);
            return;
        }
        MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd("test_mode_interstitial", this.sdk.getWrappingSdk(), this);
        this.apY = maxInterstitialAd;
        maxInterstitialAd.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES, "true");
        this.apY.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.interstitial_control_button);
        this.atX = adControlButton;
        adControlButton.setOnClickListener(this);
        this.atX.setFormat(maxAdFormat);
    }

    private void xh() {
        List<MaxAdFormat> listVy = this.arV.vy();
        MaxAdFormat maxAdFormat = MaxAdFormat.REWARDED;
        if (!listVy.contains(maxAdFormat)) {
            findViewById(R.id.rewarded_control_view).setVisibility(8);
            return;
        }
        String str = "test_mode_rewarded_" + this.arV.getName();
        this.atU = str;
        MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, this.sdk.getWrappingSdk(), this);
        this.aqb = maxRewardedAd;
        maxRewardedAd.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES, "true");
        this.aqb.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.rewarded_control_button);
        this.aua = adControlButton;
        adControlButton.setOnClickListener(this);
        this.aua.setFormat(maxAdFormat);
    }

    private void xi() {
        this.auf = (FrameLayout) findViewById(R.id.native_ad_view_container);
        if (!this.arV.vz()) {
            findViewById(R.id.native_control_view).setVisibility(8);
            this.auf.setVisibility(8);
            return;
        }
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader("test_mode_native", this.sdk.getWrappingSdk(), this);
        this.aqc = maxNativeAdLoader;
        maxNativeAdLoader.setExtraParameter(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES, "true");
        this.aqc.setNativeAdListener(new MaxNativeAdListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a.1
            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdClicked(@NonNull MaxAd maxAd) {
                a.this.onAdClicked(maxAd);
            }

            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
                a.this.onAdLoadFailed(str, maxError);
            }

            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdLoaded(@Nullable MaxNativeAdView maxNativeAdView, @NonNull MaxAd maxAd) {
                if (a.this.aqd != null) {
                    a.this.aqc.destroy(a.this.aqd);
                }
                a.this.aqd = maxAd;
                a.this.auf.removeAllViews();
                a.this.auf.addView(maxNativeAdView);
                a.this.onAdLoaded(maxAd);
            }
        });
        this.aqc.setRevenueListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(R.id.native_control_button);
        this.aub = adControlButton;
        adControlButton.setOnClickListener(this);
        this.aub.setFormat(MaxAdFormat.NATIVE);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.sdk;
    }

    public String getTestModeNetwork(MaxAdFormat maxAdFormat) {
        return (this.arV.vF() == null || !this.arV.vF().containsKey(maxAdFormat)) ? this.arV.getName() : this.arV.vF().get(maxAdFormat);
    }

    public void initialize(com.applovin.impl.mediation.debugger.b.c.b bVar) {
        this.arV = bVar;
        this.sdk = bVar.getSdk();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(@NonNull MaxAd maxAd) {
        u.a(hc.f6149f, maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(@NonNull MaxAd maxAd) {
        u.a("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
        bS(maxAd.getAdUnitId()).setControlState(AdControlButton.b.LOAD);
        u.a("Failed to display " + maxAd.getFormat().getDisplayName(), "MAX Error\nCode: " + maxError.getCode() + "\nMessage: " + maxError.getMessage() + "\n\n" + maxAd.getNetworkName() + " Display Error\nCode: " + maxError.getMediatedNetworkErrorCode() + "\nMessage: " + maxError.getMediatedNetworkErrorMessage(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(@NonNull MaxAd maxAd) {
        u.a("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(@NonNull MaxAd maxAd) {
        u.a("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(@NonNull MaxAd maxAd) {
        u.a("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.a.a.InterfaceC0065a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.atS.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.MREC == maxAdFormat) {
            this.atT.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.apY.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.apZ.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.aqa.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.aqb.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.aqc.setLocalExtraParameter("amazon_ad_error", adError);
        }
        b(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
        AdControlButton adControlButtonBS = bS(str);
        adControlButtonBS.setControlState(AdControlButton.b.LOAD);
        u.a(maxError, adControlButtonBS.getFormat().getLabel(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        AdControlButton adControlButtonBS = bS(maxAd.getAdUnitId());
        if (maxAd.getFormat().isAdViewAd() || maxAd.getFormat().equals(MaxAdFormat.NATIVE)) {
            adControlButtonBS.setControlState(AdControlButton.b.LOAD);
        } else {
            adControlButtonBS.setControlState(AdControlButton.b.SHOW);
        }
    }

    @Override // com.applovin.impl.mediation.debugger.a.a.InterfaceC0065a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.atS.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.MREC == maxAdFormat) {
            this.atT.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.apY.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.apZ.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.aqa.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.aqb.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.aqc.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        b(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        u.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        MaxAdFormat format = adControlButton.getFormat();
        AdControlButton.b bVar = AdControlButton.b.LOAD;
        if (bVar != adControlButton.getControlState()) {
            if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
                adControlButton.setControlState(bVar);
                c(format);
                return;
            }
            return;
        }
        adControlButton.setControlState(AdControlButton.b.LOADING);
        Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.a> map = this.aui;
        if (map == null || map.get(format) == null) {
            b(format);
        } else {
            this.aui.get(format).loadAd();
        }
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.arV == null) {
            x.H("MaxDebuggerMultiAdActivity", "Failed to initialize activity with a network model.");
            return;
        }
        setContentView(R.layout.mediation_debugger_multi_ad_activity);
        setTitle(this.arV.getDisplayName() + " Test Ads");
        this.aqf = this.sdk.CE().xk();
        xe();
        xf();
        xg();
        xh();
        xi();
        findViewById(R.id.rewarded_interstitial_control_view).setVisibility(8);
        findViewById(R.id.app_open_ad_control_view).setVisibility(8);
        this.auc = (Button) findViewById(R.id.show_mrec_button);
        this.aud = (Button) findViewById(R.id.show_native_button);
        if (this.arV.vz() && this.arV.vy().contains(MaxAdFormat.MREC)) {
            this.auf.setVisibility(8);
            this.auc.setBackgroundColor(-1);
            this.aud.setBackgroundColor(-3355444);
            this.auc.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.a.o(view);
                }
            });
            this.aud.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.a.p(view);
                }
            });
        } else {
            this.auc.setVisibility(8);
            this.aud.setVisibility(8);
        }
        this.aug = (Switch) findViewById(R.id.native_banner_switch);
        this.auh = (Switch) findViewById(R.id.native_mrec_switch);
        if (this.arV.vA()) {
            this.aug.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.a.s(view);
                }
            });
            this.auh.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.a.r(view);
                }
            });
        } else {
            this.aug.setVisibility(8);
            this.auh.setVisibility(8);
        }
        if (StringUtils.isValidString(this.arV.vK()) && this.arV.vL() != null && this.arV.vL().size() > 0) {
            AdRegistration.getInstance(this.arV.vK(), this);
            AdRegistration.enableTesting(true);
            AdRegistration.enableLogging(true);
            HashMap map = new HashMap(this.arV.vL().size());
            for (MaxAdFormat maxAdFormat : this.arV.vL().keySet()) {
                map.put(maxAdFormat, new com.applovin.impl.mediation.debugger.a.a(this.arV.vL().get(maxAdFormat), maxAdFormat, this));
            }
            this.aui = map;
        }
        try {
            setRequestedOrientation(7);
        } catch (Throwable th) {
            x.e("AppLovinSdk", "Failed to set portrait orientation", th);
        }
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onDestroy() {
        MaxAd maxAd;
        super.onDestroy();
        this.sdk.CE().C(this.aqf);
        MaxAdView maxAdView = this.atS;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxAdView maxAdView2 = this.atT;
        if (maxAdView2 != null) {
            maxAdView2.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.apY;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.aqb;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.aqc;
        if (maxNativeAdLoader == null || (maxAd = this.aqd) == null) {
            return;
        }
        maxNativeAdLoader.destroy(maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(@NonNull MaxAd maxAd) {
        u.a("onRewardedVideoCompleted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(@NonNull MaxAd maxAd) {
        u.a("onRewardedVideoStarted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
        u.a("onUserRewarded", maxAd, this);
    }
}
