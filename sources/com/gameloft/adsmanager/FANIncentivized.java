package com.gameloft.adsmanager;

import android.view.ViewGroup;
import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.InAppAdLibrary;
import com.gameloft.adsmanager.Incentivized.BaseIncentivizedObject;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class FANIncentivized extends BaseIncentivizedObject {
    private String UUID;
    private DaemonRequest.Callback callbackLoadIV;
    private DaemonRequest.Callback callbackShowIV;
    private FAN fanParent;
    private String sdkLocation;

    public FANIncentivized(FAN fan, final String str) {
        super(fan);
        this.sdkLocation = str;
        this.fanParent = fan;
        JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!", str);
        this.callbackShowIV = new DaemonRequest.Callback() { // from class: com.gameloft.adsmanager.FANIncentivized.2
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!", "Incentivized show callback");
                FANIncentivized.this.fanParent.OnResumeGameAudio();
                if (graphResponse == null) {
                    FANIncentivized.this.OnShowError(0, str);
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!", "Null response");
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(str);
                    return;
                }
                if (graphResponse.getError() != null) {
                    FANIncentivized.this.OnShowError(graphResponse.getError().getErrorCode(), str);
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!", "Error response :" + graphResponse.getError().toString());
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(str);
                    return;
                }
                if (graphResponse.getJSONObject() != null) {
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!", "JSON object" + graphResponse.getJSONObject().toString());
                    FANIncentivized fANIncentivized = FANIncentivized.this;
                    fANIncentivized.OnReward(fANIncentivized.UUID, true, str);
                    FANIncentivized.this.OnClose(str);
                }
            }
        };
        this.callbackLoadIV = new DaemonRequest.Callback() { // from class: com.gameloft.adsmanager.FANIncentivized.3
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!", "Incentivized load callback");
                if (graphResponse == null) {
                    FANIncentivized.this.fanParent.OnIncentivizedLoadError(0, str);
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(str);
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!", "Null response IV");
                    return;
                }
                if (graphResponse.getError() != null) {
                    FANIncentivized.this.fanParent.OnIncentivizedLoadError(0, str);
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(str);
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!", "Error response IV :" + graphResponse.getError().toString());
                    return;
                }
                if (graphResponse.getJSONObject() != null) {
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!!!", "JSON object IV:" + graphResponse.getJSONObject().toString());
                    FANIncentivized.this.fanParent.OnIncentivizedAvailable(FANIncentivized.this);
                }
            }
        };
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Close() {
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Destroy() {
        InternalClose(false);
    }

    void InternalClose(final boolean z) {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANIncentivized.1
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    FANIncentivized fANIncentivized = FANIncentivized.this;
                    fANIncentivized.OnClose(fANIncentivized.sdkLocation);
                }
                FANIncentivized.this.fanParent.incentivized.PushPlacement(FANIncentivized.this.sdkLocation);
            }
        });
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public boolean IsValid() {
        return true;
    }

    public void Load() {
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANIncentivized.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JavaUtils.AdsManagerLogInfo("FANIncentivized.java", "!!!!!", "Load for incentivized was called");
                    InAppAdLibrary.loadRewardedVideo(AdsManager.mainActivity.getApplication().getApplicationContext(), FANIncentivized.this.sdkLocation, FANIncentivized.this.callbackLoadIV);
                } catch (Exception e2) {
                    JavaUtils.AdsManagerLogError("FANIncentivized.java", "!!!!!", "Load error exception" + e2.toString());
                    FANIncentivized.this.fanParent.OnIncentivizedLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, FANIncentivized.this.sdkLocation);
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(FANIncentivized.this.sdkLocation);
                }
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.FANIncentivized.5
            @Override // java.lang.Runnable
            public void run() {
                FANIncentivized.this.fanParent.OnIncentivizedLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, FANIncentivized.this.sdkLocation);
                FANIncentivized.this.fanParent.incentivized.PushPlacement(FANIncentivized.this.sdkLocation);
            }
        });
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Show(String str, String str2, String str3) {
        this.UUID = str3;
        ViewGroup viewGroup = AdsManager.parentViewGroup;
        if (viewGroup != null) {
            JavaUtils.PostAndLogException(viewGroup, new Runnable() { // from class: com.gameloft.adsmanager.FANIncentivized.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        FANIncentivized fANIncentivized = FANIncentivized.this;
                        fANIncentivized.OnDisplay(fANIncentivized.sdkLocation);
                        FANIncentivized.this.fanParent.OnPauseGameAudio();
                        InAppAdLibrary.showRewardedVideo(AdsManager.mainActivity.getApplication().getApplicationContext(), FANIncentivized.this.sdkLocation, FANIncentivized.this.callbackShowIV);
                    } catch (Exception e2) {
                        JavaUtils.AdsManagerLogError("FANIncentivized.java", "!!!!!", "Show error exception " + e2.toString());
                        FANIncentivized.this.fanParent.OnResumeGameAudio();
                        FANIncentivized fANIncentivized2 = FANIncentivized.this;
                        fANIncentivized2.OnShowError(0, fANIncentivized2.sdkLocation);
                        FANIncentivized.this.fanParent.incentivized.PushPlacement(FANIncentivized.this.sdkLocation);
                    }
                }
            }, new Runnable() { // from class: com.gameloft.adsmanager.FANIncentivized.7
                @Override // java.lang.Runnable
                public void run() {
                    FANIncentivized.this.fanParent.OnResumeGameAudio();
                    FANIncentivized fANIncentivized = FANIncentivized.this;
                    fANIncentivized.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, fANIncentivized.sdkLocation);
                    FANIncentivized.this.fanParent.incentivized.PushPlacement(FANIncentivized.this.sdkLocation);
                }
            });
        }
    }
}
