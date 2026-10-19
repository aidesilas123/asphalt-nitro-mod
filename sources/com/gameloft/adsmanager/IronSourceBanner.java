package com.gameloft.adsmanager;

import com.gameloft.adsmanager.Banner.BaseBannerObject;
import com.gameloft.adsmanager.JavaUtils;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.LevelPlayBannerListener;

/* JADX INFO: loaded from: classes2.dex */
public class IronSourceBanner extends BaseBannerObject {
    private IronSourceBannerLayout isBannerLayout;
    private IronSource parent;
    public String sdkLocation;

    public IronSourceBanner(IronSource ironSource, final String str) {
        super(ironSource);
        this.sdkLocation = str;
        this.parent = ironSource;
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.1
            @Override // java.lang.Runnable
            public void run() {
                IronSourceBanner.this.isBannerLayout = com.json.mediationsdk.IronSource.createBanner(AdsManager.mainActivity, ISBannerSize.SMART);
                IronSourceBanner.this.isBannerLayout.setLevelPlayBannerListener(new LevelPlayBannerListener() { // from class: com.gameloft.adsmanager.IronSourceBanner.1.1
                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdClicked(AdInfo adInfo) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        IronSourceBanner.this.OnClick(str);
                    }

                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdLeftApplication(AdInfo adInfo) {
                    }

                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdLoadFailed(IronSourceError ironSourceError) {
                        int errorCode;
                        JavaUtils.AdsManagerLogError("IronSourceBanner.java", "Banner load error", "");
                        if (ironSourceError != null) {
                            errorCode = ironSourceError.getErrorCode();
                            JavaUtils.AdsManagerLogError("IronSourceBanner.java", "Banner failed to load with errorCode= (" + errorCode + ") and message= (" + ironSourceError.getErrorMessage() + ")", "");
                        } else {
                            errorCode = 0;
                        }
                        IronSourceBanner.this.parent.OnBannerLoadError(errorCode, str);
                        IronSourceBanner.this.parent.bannerObject = null;
                    }

                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdLoaded(AdInfo adInfo) {
                        JavaUtils.AdsManagerLogInfo("IronSourceBanner.java", "Banner loaded", "");
                        IronSourceBanner.this.parent.OnBannerAvailable(IronSourceBanner.this);
                    }

                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdScreenDismissed(AdInfo adInfo) {
                    }

                    @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
                    public void onAdScreenPresented(AdInfo adInfo) {
                    }
                });
                JavaUtils.AdsManagerLogInfo("IronSourceBanner.java", "Load banner called", "");
                com.json.mediationsdk.IronSource.loadBanner(IronSourceBanner.this.isBannerLayout);
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.2
            @Override // java.lang.Runnable
            public void run() {
                IronSourceBanner.this.parent.OnBannerLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, str);
                IronSourceBanner.this.parent.bannerObject = null;
            }
        });
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectInterface
    public void Close() {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.6
            @Override // java.lang.Runnable
            public void run() {
                if (IronSourceBanner.this.isBannerLayout == null) {
                    return;
                }
                AdsManager.relativeLayout.removeView(IronSourceBanner.this.isBannerLayout);
                com.json.mediationsdk.IronSource.destroyBanner(IronSourceBanner.this.isBannerLayout);
                IronSourceBanner.this.isBannerLayout = null;
                IronSourceBanner ironSourceBanner = IronSourceBanner.this;
                ironSourceBanner.OnClosed(ironSourceBanner.sdkLocation);
                IronSourceBanner.this.parent.bannerObject = null;
            }
        });
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectInterface
    public void Destroy() {
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectInterface
    public boolean IsValid() {
        return true;
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectInterface
    public void Move(final int i, final int i2, final int i3) {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.5
            @Override // java.lang.Runnable
            public void run() {
                if (IronSourceBanner.this.isBannerLayout == null) {
                    return;
                }
                JavaUtils.SetBannerPositionAndAnchor(i, i2, i3);
                JavaUtils.ApplyCorrection(IronSourceBanner.this.isBannerLayout);
                IronSourceBanner.this.isBannerLayout.setLayoutParams(JavaUtils.bannerLayoutParams);
            }
        });
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectInterface
    public void Show(final int i, final int i2, final int i3, String str, String str2) {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.3
            @Override // java.lang.Runnable
            public void run() {
                if (IronSourceBanner.this.isBannerLayout == null) {
                    JavaUtils.AdsManagerLogError("IronSourceBanner.java", "BannerLayout is null", "");
                    IronSourceBanner ironSourceBanner = IronSourceBanner.this;
                    ironSourceBanner.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, ironSourceBanner.sdkLocation);
                    return;
                }
                JavaUtils.SetBannerPositionAndAnchor(i, i2, i3);
                JavaUtils.ApplyCorrection(IronSourceBanner.this.isBannerLayout);
                IronSourceBanner.this.isBannerLayout.setLayoutParams(JavaUtils.bannerLayoutParams);
                AdsManager.relativeLayout.addView(IronSourceBanner.this.isBannerLayout);
                IronSourceBanner.this.isBannerLayout.setVisibility(0);
                IronSourceBanner ironSourceBanner2 = IronSourceBanner.this;
                ironSourceBanner2.OnDisplay(ironSourceBanner2.sdkLocation);
                IronSourceBanner.this.isBannerLayout.postDelayed(new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (IronSourceBanner.this.isBannerLayout != null) {
                                IronSourceBanner.this.isBannerLayout.requestLayout();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }, 1000L);
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceBanner.4
            @Override // java.lang.Runnable
            public void run() {
                IronSourceBanner ironSourceBanner = IronSourceBanner.this;
                ironSourceBanner.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, ironSourceBanner.sdkLocation);
                IronSourceBanner.this.parent.bannerObject = null;
            }
        });
    }
}
