package com.gameloft.adsmanager;

import com.gameloft.adsmanager.JavaUtils;
import com.tapjoy.TJActionRequest;
import com.tapjoy.TJGetCurrencyBalanceListener;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPrivacyPolicy;
import com.tapjoy.TJStatus;
import com.tapjoy.n;
import com.tapjoy.r;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes2.dex */
public class Tapjoy extends BaseAdsProvider {
    final int EXPECTED_CONFIG_SIZE;
    volatile boolean offerWallLoading;
    volatile boolean offerWallObjectCreated;
    String offerWallSdkLocation;
    TapjoyOfferWall onScreenOfferWall;
    TJPlacementListener tapjoyListener;
    TJPlacement tapjoyPlacement;

    public Tapjoy(long j) {
        super(j);
        this.EXPECTED_CONFIG_SIZE = 4;
        this.onScreenOfferWall = null;
        this.offerWallSdkLocation = "";
        this.offerWallObjectCreated = false;
        this.offerWallLoading = false;
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void CheckTapjoyCurrencyBalance() {
        com.tapjoy.Tapjoy.getCurrencyBalance(new TJGetCurrencyBalanceListener() { // from class: com.gameloft.adsmanager.Tapjoy.2
            @Override // com.tapjoy.TJGetCurrencyBalanceListener
            public void onGetCurrencyBalanceResponse(String str, int i) {
                Tapjoy.this.OnTapjoyCurrencyBalance(str, i);
            }

            @Override // com.tapjoy.TJGetCurrencyBalanceListener
            public void onGetCurrencyBalanceResponseFailure(String str) {
                if (str != null) {
                    JavaUtils.AdsManagerLogInfo("Tapjoy.java", "onGetCurrencyBalanceResponseFailure", str);
                } else {
                    JavaUtils.AdsManagerLogInfo("Tapjoy.java", "onGetCurrencyBalanceResponseFailure", "");
                }
            }
        });
    }

    public void Configure(String str, String str2, String[] strArr, int[] iArr, String str3) {
        if (AdsManager.mainActivity == null || AdsManager.parentViewGroup == null) {
            JavaUtils.AdsManagerLogError("Tapjoy.java", "Configure", "MainActivity or ParentViewGroup is null");
            OnConfigurationFailed();
            return;
        }
        if (iArr == null || iArr.length != 4) {
            JavaUtils.AdsManagerLogError("Tapjoy.java", "Configure", "Invalid configurationInfo");
            OnConfigurationFailed();
            return;
        }
        if (str == null || str.length() == 0) {
            JavaUtils.AdsManagerLogError("Tapjoy.java", "Configure", "Invalid appID");
            OnConfigurationFailed();
            return;
        }
        boolean z = iArr[0] == 1;
        boolean z2 = iArr[1] == 1;
        boolean z3 = iArr[2] == 1;
        boolean z4 = iArr[3] == 1;
        JavaUtils.PlacementState placementState = new JavaUtils.PlacementState(strArr);
        Hashtable hashtable = new Hashtable();
        this.offerWallSdkLocation = placementState.PopValidPlacement();
        if (z) {
            try {
                hashtable.put("TJC_OPTION_ENABLE_LOGGING", "true");
            } catch (Exception unused) {
                return;
            }
        }
        hashtable.put("TJC_OPTION_USER_ID", str2);
        com.tapjoy.Tapjoy.setActivity(AdsManager.mainActivity);
        TJPrivacyPolicy privacyPolicy = com.tapjoy.Tapjoy.getPrivacyPolicy();
        if (z3) {
            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "User consent set= (true)");
            privacyPolicy.h(TJStatus.b);
            com.tapjoy.Tapjoy.optOutAdvertisingID(AdsManager.mainActivity, false);
        } else {
            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "User consent set= (false)");
            privacyPolicy.h(TJStatus.a);
        }
        if (!z4) {
            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "set optOutAdvertisingID");
            com.tapjoy.Tapjoy.optOutAdvertisingID(AdsManager.mainActivity, true);
        }
        if (z2) {
            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "User set as COPPA");
            privacyPolicy.f(TJStatus.b);
        } else {
            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "User set as non COPPA");
            privacyPolicy.f(TJStatus.a);
        }
        JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "setUSPrivacy =(" + str3 + ")");
        privacyPolicy.g(str3);
        com.tapjoy.Tapjoy.connect(AdsManager.mainActivity, str, hashtable, new n() { // from class: com.gameloft.adsmanager.Tapjoy.1
            @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
            public void onConnectFailure(int i, String str4) {
                JavaUtils.AdsManagerLogError("Tapjoy.java", "Configure", "OnConfigurationFailed. Initialization failed with error code: " + i + " and message: " + str4);
                Tapjoy.this.OnConfigurationFailed();
            }

            @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
            public void onConnectSuccess() {
                JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Configure", "OnConfigurationSucceeded");
                Tapjoy.this.OnConfigurationSucceeded();
                Tapjoy.this.tapjoyListener = new TJPlacementListener() { // from class: com.gameloft.adsmanager.Tapjoy.1.1
                    @Override // com.tapjoy.TJPlacementListener
                    public void onClick(TJPlacement tJPlacement) {
                        synchronized (Tapjoy.this) {
                            TapjoyOfferWall tapjoyOfferWall = Tapjoy.this.onScreenOfferWall;
                            if (tapjoyOfferWall != null) {
                                tapjoyOfferWall.OnClick(tapjoyOfferWall.sdkLocation);
                            }
                        }
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onContentDismiss(TJPlacement tJPlacement) {
                        synchronized (Tapjoy.this) {
                            TapjoyOfferWall tapjoyOfferWall = Tapjoy.this.onScreenOfferWall;
                            if (tapjoyOfferWall != null) {
                                tapjoyOfferWall.OnClose(tapjoyOfferWall.sdkLocation);
                                Tapjoy.this.OnResumeGameAudio();
                            }
                            Tapjoy.this.offerWallObjectCreated = false;
                            Tapjoy.this.onScreenOfferWall = null;
                        }
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onContentReady(TJPlacement tJPlacement) {
                        synchronized (Tapjoy.this) {
                            Tapjoy.this.offerWallLoading = false;
                            JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Offerwall loaded", "");
                            if (!Tapjoy.this.offerWallObjectCreated) {
                                Tapjoy tapjoy = Tapjoy.this;
                                TapjoyOfferWall tapjoyOfferWall = new TapjoyOfferWall(tapjoy, tapjoy.offerWallSdkLocation);
                                Tapjoy.this.offerWallObjectCreated = true;
                                Tapjoy.this.OnOfferWallAvailable(tapjoyOfferWall);
                            }
                        }
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onContentShow(TJPlacement tJPlacement) {
                        synchronized (Tapjoy.this) {
                            TapjoyOfferWall tapjoyOfferWall = Tapjoy.this.onScreenOfferWall;
                            if (tapjoyOfferWall != null) {
                                tapjoyOfferWall.OnDisplay(tapjoyOfferWall.sdkLocation);
                            }
                        }
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str4) {
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onRequestFailure(TJPlacement tJPlacement, r rVar) {
                        synchronized (Tapjoy.this) {
                            int i = 0;
                            Tapjoy.this.offerWallLoading = false;
                            String str4 = "";
                            if (rVar != null) {
                                i = rVar.a;
                                str4 = rVar.b;
                            }
                            JavaUtils.AdsManagerLogError("Tapjoy.java", "Offerwall failed to load with errorCode = (" + i + ") and errorMessage = (" + str4 + ")", "");
                            Tapjoy tapjoy = Tapjoy.this;
                            tapjoy.OnOfferWallLoadError(i, tapjoy.offerWallSdkLocation);
                        }
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onRequestSuccess(TJPlacement tJPlacement) {
                        JavaUtils.AdsManagerLogInfo("Tapjoy.java", "onRequestSuccess", "");
                    }

                    @Override // com.tapjoy.TJPlacementListener
                    public void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str4, int i) {
                    }
                };
                Tapjoy tapjoy = Tapjoy.this;
                tapjoy.tapjoyPlacement = com.tapjoy.Tapjoy.getPlacement(tapjoy.offerWallSdkLocation, tapjoy.tapjoyListener);
            }
        });
    }

    @Override // com.gameloft.adsmanager.BaseAdsProvider, com.gameloft.adsmanager.AdsProviderInterface
    public void RequestOfferWall() {
        synchronized (this) {
            if (com.tapjoy.Tapjoy.isConnected() && !this.offerWallSdkLocation.isEmpty() && !this.offerWallObjectCreated && !this.offerWallLoading) {
                this.offerWallLoading = true;
                this.tapjoyPlacement.h();
                JavaUtils.AdsManagerLogInfo("Tapjoy.java", "Request content", "");
            }
        }
    }

    public void ResetOfferWall() {
        synchronized (this) {
            this.offerWallObjectCreated = false;
            this.onScreenOfferWall = null;
        }
    }
}
