package com.gameloft.adsmanager;

import android.os.Build;
import com.gameloft.adsmanager.JavaUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FAN extends BaseAdsProvider {
    private static final int MINIMUM_API_LEVEL = 15;
    private String bidderData;
    public JavaUtils.PlacementState incentivized;
    public JavaUtils.PlacementState interstitials;
    public Map<String, Object> rootWhileLoading;

    public FAN(long j) {
        super(j);
        this.bidderData = "";
    }

    public void Configure(String[] strArr, String[] strArr2) {
        if (AdsManager.mainActivity == null || AdsManager.parentViewGroup == null) {
            JavaUtils.AdsManagerLogError("FAN.java", "Configure", "MainActivity or ParentViewGroup is null");
            OnConfigurationFailed();
        } else {
            if (Build.VERSION.SDK_INT < 15) {
                JavaUtils.AdsManagerLogError("FAN.java", "Configure", "Current API level is lower than the accepted API level: 15. FAN SDK will not be configured");
                OnConfigurationFailed();
                return;
            }
            this.rootWhileLoading = new HashMap();
            this.incentivized = new JavaUtils.PlacementState(strArr);
            this.interstitials = new JavaUtils.PlacementState(strArr2);
            OnConfigurationSucceeded();
            JavaUtils.AdsManagerLogInfo("FAN.java", "Configure", "OnConfigurationSucceeded");
        }
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestIncentivized() {
        String strPopValidPlacement = this.incentivized.PopValidPlacement();
        if (strPopValidPlacement.isEmpty()) {
            return;
        }
        FANIncentivized fANIncentivized = new FANIncentivized(this, strPopValidPlacement);
        this.rootWhileLoading.put(strPopValidPlacement, fANIncentivized);
        fANIncentivized.Load();
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestInterstitial() {
        String strPopValidPlacement = this.interstitials.PopValidPlacement();
        if (strPopValidPlacement.isEmpty()) {
            return;
        }
        FANInterstitial fANInterstitial = new FANInterstitial(this, strPopValidPlacement);
        this.rootWhileLoading.put(strPopValidPlacement, fANInterstitial);
        fANInterstitial.Load();
    }
}
