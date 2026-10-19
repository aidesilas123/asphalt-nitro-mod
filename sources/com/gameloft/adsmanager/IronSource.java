package com.gameloft.adsmanager;

import android.content.Context;
import com.gameloft.adsmanager.JavaUtils;
import com.json.adqualitysdk.sdk.ISAdQualityConfig;
import com.json.adqualitysdk.sdk.ISAdQualityInitError;
import com.json.adqualitysdk.sdk.ISAdQualityInitListener;
import com.json.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.integration.IntegrationHelper;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.metadata.a;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.InitializationListener;
import com.json.mediationsdk.sdk.LevelPlayInterstitialListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class IronSource extends BaseAdsProvider {
    final int EXPECTED_ADQUALITY_PARAMS_SIZE;
    final int EXPECTED_CONFIG_SIZE;
    IronSourceBanner bannerObject;
    String bannerSdkLocation;
    volatile boolean enableIronSourceTestMode;
    boolean incentivizedAvailability;
    boolean incentivizedObjectCreated;
    String incentivizedSdkLocation;
    boolean interstitialLoading;
    boolean interstitialObjectCreated;
    String interstitialSdkLocation;
    IronSourceIncentivized onScreenIncentivized;
    IronSourceInterstitial onScreenInterstitial;
    volatile boolean wasIronSourceSDKSuccessfullyInitialized;

    public IronSource(long j) {
        super(j);
        this.EXPECTED_CONFIG_SIZE = 15;
        this.EXPECTED_ADQUALITY_PARAMS_SIZE = 4;
        this.enableIronSourceTestMode = false;
        this.wasIronSourceSDKSuccessfullyInitialized = false;
        this.bannerObject = null;
        this.bannerSdkLocation = "";
        this.onScreenInterstitial = null;
        this.interstitialSdkLocation = "";
        this.interstitialLoading = false;
        this.interstitialObjectCreated = false;
        this.onScreenIncentivized = null;
        this.incentivizedSdkLocation = "";
        this.incentivizedAvailability = false;
        this.incentivizedObjectCreated = false;
    }

    public void Configure(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3, int[] iArr, String[] strArr4) {
        boolean z;
        Class<?> cls;
        Class<?> cls2;
        Object objNewInstance;
        Exception e2;
        if (AdsManager.mainActivity == null || AdsManager.parentViewGroup == null) {
            JavaUtils.AdsManagerLogError("IronSource.java", "Configure", "MainActivity or ParentViewGroup is null");
            OnConfigurationFailed();
            return;
        }
        if (iArr == null || iArr.length != 15) {
            JavaUtils.AdsManagerLogError("IronSource.java", "Configure", "Invalid configurationInfo");
            OnConfigurationFailed();
            return;
        }
        if (str == null || str.length() == 0) {
            JavaUtils.AdsManagerLogError("IronSource.java", "Configure", "Invalid appID");
            OnConfigurationFailed();
            return;
        }
        if (strArr4 == null || strArr4.length != 4) {
            JavaUtils.AdsManagerLogError("IronSource.java", "Configure", "Invalid adQuality params");
            OnConfigurationFailed();
            return;
        }
        if (strArr4[0].equals("")) {
            JavaUtils.AdsManagerLogError("IronSource.java", "Configure", "IronSource sdk cannot be initialized because the AdQuality sdk key is missing");
            OnConfigurationFailed();
            return;
        }
        boolean z2 = iArr[0] == 1;
        boolean z3 = iArr[1] == 1;
        boolean z4 = iArr[2] == 1;
        boolean z5 = iArr[3] == 1;
        boolean z6 = iArr[4] == 1;
        boolean z7 = iArr[5] == 1;
        boolean z8 = iArr[6] == 1;
        boolean z9 = iArr[7] == 1;
        boolean z10 = iArr[8] == 1;
        boolean z11 = iArr[9] == 1;
        final boolean z12 = z2;
        boolean z13 = iArr[10] == 1;
        boolean z14 = z11;
        boolean z15 = iArr[11] == 1;
        boolean z16 = z10;
        this.enableIronSourceTestMode = iArr[12] == 1;
        boolean z17 = iArr[13] == 1;
        boolean z18 = iArr[14] == 1;
        JavaUtils.PlacementState placementState = new JavaUtils.PlacementState(strArr);
        boolean z19 = z9;
        JavaUtils.PlacementState placementState2 = new JavaUtils.PlacementState(strArr3);
        boolean z20 = z8;
        JavaUtils.PlacementState placementState3 = new JavaUtils.PlacementState(strArr2);
        this.bannerSdkLocation = placementState.PopValidPlacement();
        this.interstitialSdkLocation = placementState2.PopValidPlacement();
        this.incentivizedSdkLocation = placementState3.PopValidPlacement();
        if (z17) {
            try {
                JavaUtils.AdsManagerLogWarning("IronSource.java", "Configure", "ADMOB TEST MODE ENABLED!");
                try {
                    cls = Class.forName("com.google.android.gms.ads.MobileAds");
                    cls2 = Class.forName("com.google.android.gms.ads.RequestConfiguration");
                    objNewInstance = Class.forName("com.google.android.gms.ads.RequestConfiguration$Builder").newInstance();
                    z = z7;
                } catch (Exception e3) {
                    e = e3;
                    z = z7;
                }
                try {
                    objNewInstance.getClass().getMethod("setTestDeviceIds", List.class).invoke(objNewInstance, GetTestDevices());
                    cls.getMethod("setRequestConfiguration", cls2).invoke(null, objNewInstance.getClass().getMethod("build", new Class[0]).invoke(objNewInstance, new Object[0]));
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                    System.out.println(e.getLocalizedMessage());
                }
            } catch (Exception e5) {
                e2 = e5;
                JavaUtils.LogException("IronSource.java", "Configure", e2);
                OnConfigurationFailed();
                JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "OnConfigurationFailed");
            }
        } else {
            z = z7;
        }
        if (z4) {
            JavaUtils.AdsManagerLogWarning("IronSource.java", "Configure", "VERBOSE LOGS ENABLED!");
            try {
                Class.forName("com.bytedance.sdk.openadsdk.api.init.PAGConfig").getMethod("debugLog", Boolean.TYPE).invoke(null, Boolean.TRUE);
            } catch (Exception e6) {
                e6.printStackTrace();
                System.out.println(e6.getLocalizedMessage());
            }
            try {
                Class<?> cls3 = Class.forName("com.applovin.sdk.AppLovinSdk");
                Class.forName("com.applovin.sdk.AppLovinSdkSettings").getMethod("setVerboseLogging", Boolean.TYPE).invoke(cls3.getMethod("getSettings", new Class[0]).invoke(cls3.getMethod("getInstance", Context.class).invoke(null, AdsManager.mainActivity), new Object[0]), Boolean.TRUE);
            } catch (Exception e7) {
                e7.printStackTrace();
                System.out.println(e7.getLocalizedMessage());
            }
            try {
                Class.forName("com.fyber.inneractive.sdk.external.InneractiveAdManager").getMethod("setLogLevel", Integer.TYPE).invoke(null, 2);
            } catch (Exception e8) {
                e8.printStackTrace();
                System.out.println(e8.getLocalizedMessage());
            }
            com.json.mediationsdk.IronSource.setAdaptersDebug(true);
            IntegrationHelper.validateIntegration(AdsManager.mainActivity);
        }
        if (!z18) {
            com.json.mediationsdk.IronSource.setMetaData(a.c, "true");
            IronSourceSegment ironSourceSegment = new IronSourceSegment();
            ironSourceSegment.setSegmentName("optout");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using the optout segment");
        }
        if (z3) {
            IronSourceSegment ironSourceSegment2 = new IronSourceSegment();
            ironSourceSegment2.setSegmentName("fanrestricted");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment2);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using the fanrestricted segment");
        }
        if (z5) {
            IronSourceSegment ironSourceSegment3 = new IronSourceSegment();
            ironSourceSegment3.setSegmentName("nosdk");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment3);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using the nosdk segment");
        }
        boolean z21 = z4;
        if (z6) {
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "User set as COPPA");
            com.json.mediationsdk.IronSource.setMetaData("Pangle_COPPA", "1");
            if (z13) {
                JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Will enable Coppa Regulation for this COPPA user");
                com.json.mediationsdk.IronSource.setMetaData("AdMob_TFCD", "true");
                com.json.mediationsdk.IronSource.setMetaData("AdMob_TFUA", "true");
                if (z15) {
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_G");
                    com.json.mediationsdk.IronSource.setMetaData("AdMob_MaxContentRating", "MAX_AD_CONTENT_RATING_G");
                } else {
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_PG");
                    com.json.mediationsdk.IronSource.setMetaData("AdMob_MaxContentRating", "MAX_AD_CONTENT_RATING_PG");
                }
                com.json.mediationsdk.IronSource.setMetaData("AppLovin_AgeRestrictedUser", "true");
                com.json.mediationsdk.IronSource.setMetaData(a.c, "true");
                com.json.mediationsdk.IronSource.setMetaData(a.b, "true");
                com.json.mediationsdk.IronSource.setMetaData("UnityAds_coppa", "true");
                com.json.mediationsdk.IronSource.setMetaData("Vungle_coppa", "true");
                com.json.mediationsdk.IronSource.setMetaData("HyprMX_ageRestricted", "true");
                com.json.mediationsdk.IronSource.setMetaData("DT_IsChild", "true");
                com.json.mediationsdk.IronSource.setMetaData("Mintegral_COPPA", "true");
            }
        } else {
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "User set as non COPPA");
            com.json.mediationsdk.IronSource.setMetaData("Pangle_COPPA", "0");
            if (z13) {
                JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Will enable Coppa Regulation for this non COPPA user");
                com.json.mediationsdk.IronSource.setMetaData("AdMob_TFCD", "false");
                com.json.mediationsdk.IronSource.setMetaData("AdMob_TFUA", "false");
                if (z15) {
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_G");
                    com.json.mediationsdk.IronSource.setMetaData("AdMob_MaxContentRating", "MAX_AD_CONTENT_RATING_G");
                } else {
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_MA");
                    com.json.mediationsdk.IronSource.setMetaData("AdMob_MaxContentRating", "MAX_AD_CONTENT_RATING_MA");
                }
                com.json.mediationsdk.IronSource.setMetaData("AppLovin_AgeRestrictedUser", "false");
                if (z15) {
                    com.json.mediationsdk.IronSource.setMetaData(a.c, "true");
                }
                com.json.mediationsdk.IronSource.setMetaData(a.b, "false");
                com.json.mediationsdk.IronSource.setMetaData("UnityAds_coppa", "false");
                com.json.mediationsdk.IronSource.setMetaData("Vungle_coppa", "false");
                com.json.mediationsdk.IronSource.setMetaData("HyprMX_ageRestricted", "false");
                com.json.mediationsdk.IronSource.setMetaData("Mintegral_COPPA", "false");
            }
        }
        if (z) {
            IronSourceSegment ironSourceSegment4 = new IronSourceSegment();
            ironSourceSegment4.setSegmentName("tag1");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment4);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using tag1 segment");
        }
        if (z20) {
            IronSourceSegment ironSourceSegment5 = new IronSourceSegment();
            ironSourceSegment5.setSegmentName("tag2");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment5);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using tag2 segment");
        }
        if (z19) {
            IronSourceSegment ironSourceSegment6 = new IronSourceSegment();
            ironSourceSegment6.setSegmentName("tag3");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment6);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using tag3 segment");
        }
        if (z16) {
            IronSourceSegment ironSourceSegment7 = new IronSourceSegment();
            ironSourceSegment7.setSegmentName("tag4");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment7);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using tag4 segment");
        }
        if (z14) {
            IronSourceSegment ironSourceSegment8 = new IronSourceSegment();
            ironSourceSegment8.setSegmentName("tag5");
            com.json.mediationsdk.IronSource.setSegment(ironSourceSegment8);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "Using tag5 segment");
        }
        try {
            com.json.mediationsdk.IronSource.addImpressionDataListener(new ImpressionDataListener() { // from class: com.gameloft.adsmanager.IronSource.1
                @Override // com.json.mediationsdk.impressionData.ImpressionDataListener
                public void onImpressionSuccess(ImpressionData impressionData) {
                    JSONObject allData;
                    if (impressionData == null || (allData = impressionData.getAllData()) == null) {
                        return;
                    }
                    IronSource.this.OnImpressionData(allData.toString());
                }
            });
            com.json.mediationsdk.IronSource.setLevelPlayInterstitialListener(new LevelPlayInterstitialListener() { // from class: com.gameloft.adsmanager.IronSource.2
                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdClicked(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceInterstitial ironSourceInterstitial = IronSource.this.onScreenInterstitial;
                        if (ironSourceInterstitial != null) {
                            ironSourceInterstitial.OnClick(ironSourceInterstitial.sdkLocation);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdClosed(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceInterstitial ironSourceInterstitial = IronSource.this.onScreenInterstitial;
                        if (ironSourceInterstitial != null) {
                            ironSourceInterstitial.OnClose(ironSourceInterstitial.sdkLocation);
                            IronSource.this.OnResumeGameAudio();
                        }
                        IronSource ironSource = IronSource.this;
                        ironSource.interstitialObjectCreated = false;
                        ironSource.onScreenInterstitial = null;
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdLoadFailed(IronSourceError ironSourceError) {
                    synchronized (IronSource.this) {
                        JavaUtils.AdsManagerLogError("IronSource.java", "Interstitial load error", "");
                        int errorCode = 0;
                        IronSource.this.interstitialLoading = false;
                        if (ironSourceError != null) {
                            String errorMessage = ironSourceError.getErrorMessage();
                            errorCode = ironSourceError.getErrorCode();
                            JavaUtils.AdsManagerLogError("IronSource.java", "Interstitial failed to load with errorCode = (" + errorCode + ") and errorMessage = (" + errorMessage + ")", "");
                        }
                        IronSource ironSource = IronSource.this;
                        ironSource.OnInterstitialLoadError(errorCode, ironSource.interstitialSdkLocation);
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdOpened(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceInterstitial ironSourceInterstitial = IronSource.this.onScreenInterstitial;
                        if (ironSourceInterstitial != null) {
                            ironSourceInterstitial.OnDisplay(ironSourceInterstitial.sdkLocation);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdReady(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        JavaUtils.AdsManagerLogInfo("IronSource.java", "Interstitial loaded", "");
                        IronSource ironSource = IronSource.this;
                        ironSource.interstitialLoading = false;
                        if (!ironSource.interstitialObjectCreated) {
                            IronSourceInterstitial ironSourceInterstitial = new IronSourceInterstitial(ironSource, ironSource.interstitialSdkLocation);
                            IronSource ironSource2 = IronSource.this;
                            ironSource2.interstitialObjectCreated = true;
                            ironSource2.OnInterstitialAvailable(ironSourceInterstitial);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo) {
                    int errorCode;
                    synchronized (IronSource.this) {
                        JavaUtils.AdsManagerLogError("IronSource.java", "Interstitial show error", "");
                        if (ironSourceError != null) {
                            String errorMessage = ironSourceError.getErrorMessage();
                            errorCode = ironSourceError.getErrorCode();
                            JavaUtils.AdsManagerLogError("IronSource.java", "Interstitial failed to show with ", "errorCode = (" + errorCode + ") and errorMessage = (" + errorMessage + ")");
                        } else {
                            errorCode = 0;
                        }
                        IronSourceInterstitial ironSourceInterstitial = IronSource.this.onScreenInterstitial;
                        if (ironSourceInterstitial != null) {
                            ironSourceInterstitial.OnShowError(errorCode, ironSourceInterstitial.sdkLocation);
                            IronSource.this.OnResumeGameAudio();
                        }
                        IronSource ironSource = IronSource.this;
                        ironSource.interstitialObjectCreated = false;
                        ironSource.onScreenInterstitial = null;
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
                public void onAdShowSucceeded(AdInfo adInfo) {
                }
            });
            com.json.mediationsdk.IronSource.setLevelPlayRewardedVideoListener(new LevelPlayRewardedVideoListener() { // from class: com.gameloft.adsmanager.IronSource.3
                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
                public void onAdAvailable(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSource.this.incentivizedAvailability = true;
                        JavaUtils.AdsManagerLogInfo("IronSource.java", "Rewarded-onAdAvailable", "Incentivized availabillity changed to true");
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
                public void onAdClicked(Placement placement, AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceIncentivized ironSourceIncentivized = IronSource.this.onScreenIncentivized;
                        if (ironSourceIncentivized != null) {
                            ironSourceIncentivized.OnClick(ironSourceIncentivized.sdkLocation);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
                public void onAdClosed(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceIncentivized ironSourceIncentivized = IronSource.this.onScreenIncentivized;
                        if (ironSourceIncentivized != null) {
                            ironSourceIncentivized.OnClose(ironSourceIncentivized.sdkLocation);
                            IronSource.this.OnResumeGameAudio();
                        }
                        IronSource ironSource = IronSource.this;
                        ironSource.incentivizedObjectCreated = false;
                        ironSource.onScreenIncentivized = null;
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
                public void onAdOpened(AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceIncentivized ironSourceIncentivized = IronSource.this.onScreenIncentivized;
                        if (ironSourceIncentivized != null) {
                            ironSourceIncentivized.OnDisplay(ironSourceIncentivized.sdkLocation);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
                public void onAdRewarded(Placement placement, AdInfo adInfo) {
                    synchronized (IronSource.this) {
                        IronSourceIncentivized ironSourceIncentivized = IronSource.this.onScreenIncentivized;
                        if (ironSourceIncentivized != null) {
                            ironSourceIncentivized.OnReward(ironSourceIncentivized.UUID, true, ironSourceIncentivized.sdkLocation);
                        }
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
                public void onAdShowFailed(IronSourceError ironSourceError, AdInfo adInfo) {
                    int errorCode;
                    synchronized (IronSource.this) {
                        JavaUtils.AdsManagerLogError("IronSource.java", "Incentivized show error", "");
                        if (ironSourceError != null) {
                            errorCode = ironSourceError.getErrorCode();
                            JavaUtils.AdsManagerLogError("IronSource.java", "Incentivized failed to show with ", "errorCode = (" + errorCode + ") and errorMessage = (" + ironSourceError.getErrorMessage() + ")");
                        } else {
                            errorCode = 0;
                        }
                        IronSourceIncentivized ironSourceIncentivized = IronSource.this.onScreenIncentivized;
                        if (ironSourceIncentivized != null) {
                            ironSourceIncentivized.OnShowError(errorCode, ironSourceIncentivized.sdkLocation);
                            IronSource.this.OnResumeGameAudio();
                        }
                        IronSource ironSource = IronSource.this;
                        ironSource.incentivizedObjectCreated = false;
                        ironSource.onScreenIncentivized = null;
                    }
                }

                @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
                public void onAdUnavailable() {
                    synchronized (IronSource.this) {
                        IronSource.this.incentivizedAvailability = false;
                        JavaUtils.AdsManagerLogInfo("IronSource.java", "Rewarded-onAdUnavailable", "Incentivized availabillity changed to false");
                    }
                }
            });
            com.json.mediationsdk.IronSource.setConsent(z12);
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "User consent set= (" + z12 + ")");
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "ApplicationID=(" + str + "), CustomID=(" + str2 + "), User consent set= (" + z12 + ")");
            if (this.enableIronSourceTestMode) {
                com.json.mediationsdk.IronSource.setMetaData(a.f6348f, a.i);
            }
            com.json.mediationsdk.IronSource.setUserId(str2);
            com.json.mediationsdk.IronSource.init(AdsManager.mainActivity, str, new InitializationListener() { // from class: com.gameloft.adsmanager.IronSource.4
                @Override // com.json.mediationsdk.sdk.InitializationListener
                public void onInitializationComplete() {
                    IronSource.this.wasIronSourceSDKSuccessfullyInitialized = true;
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "onInitializationComplete", "OnConfigurationSucceeded");
                    IronSource.this.OnConfigurationSucceeded();
                    if (IronSource.this.enableIronSourceTestMode) {
                        com.json.mediationsdk.IronSource.launchTestSuite(AdsManager.mainActivity);
                    }
                }
            });
            new Thread(new IronSourceInitializationHelperClass(this)).start();
            String str3 = strArr4[0];
            String str4 = strArr4[1];
            String str5 = strArr4[2];
            strArr4[3].equals("yes");
            ISAdQualityConfig.Builder adQualityInitListener = new ISAdQualityConfig.Builder().setAdQualityInitListener(new ISAdQualityInitListener() { // from class: com.gameloft.adsmanager.IronSource.5
                @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
                public void adQualitySdkInitFailed(ISAdQualityInitError iSAdQualityInitError, String str6) {
                    JavaUtils.AdsManagerLogError("IronSource.java", "adQualitySdkInitFailed", "AdQuality sdk failed to init with error " + iSAdQualityInitError + " and message " + str6);
                }

                @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
                public void adQualitySdkInitSuccess() {
                    JavaUtils.AdsManagerLogInfo("IronSource.java", "adQualitySdkInitSuccess", "AdQuality sdk successfully initialized");
                    IronSourceAdQuality.getInstance().setUserConsent(z12);
                }
            });
            adQualityInitListener.setUserId(str4);
            if (z21) {
                adQualityInitListener.setLogLevel(ISAdQualityLogLevel.VERBOSE);
            }
            IronSourceAdQuality.getInstance().initialize(AdsManager.mainActivity, str3, adQualityInitListener.build());
        } catch (Exception e9) {
            e2 = e9;
            JavaUtils.LogException("IronSource.java", "Configure", e2);
            OnConfigurationFailed();
            JavaUtils.AdsManagerLogInfo("IronSource.java", "Configure", "OnConfigurationFailed");
        }
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestBanner() {
        synchronized (this) {
            if (!this.bannerSdkLocation.isEmpty() && this.bannerObject == null) {
                this.bannerObject = new IronSourceBanner(this, this.bannerSdkLocation);
            }
        }
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestIncentivized() {
        synchronized (this) {
            if (!this.incentivizedSdkLocation.isEmpty() && this.incentivizedAvailability && !this.incentivizedObjectCreated) {
                IronSourceIncentivized ironSourceIncentivized = new IronSourceIncentivized(this, this.incentivizedSdkLocation);
                this.incentivizedObjectCreated = true;
                JavaUtils.AdsManagerLogInfo("IronSource.java", "Incentivized available", "");
                OnIncentivizedAvailable(ironSourceIncentivized);
            }
        }
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestInterstitial() {
        synchronized (this) {
            if (!this.interstitialSdkLocation.isEmpty() && !this.interstitialLoading && !this.interstitialObjectCreated) {
                this.interstitialLoading = true;
                com.json.mediationsdk.IronSource.loadInterstitial();
                JavaUtils.AdsManagerLogInfo("IronSource.java", "Load interstitial called", "");
            }
        }
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestOfferWall() {
    }

    public void ResetIncentivized() {
        synchronized (this) {
            this.incentivizedObjectCreated = false;
            this.onScreenIncentivized = null;
        }
    }

    public void ResetInterstitial() {
        synchronized (this) {
            this.interstitialObjectCreated = false;
            this.onScreenInterstitial = null;
        }
    }
}
