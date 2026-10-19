package com.gameloft.adsmanager;

import com.gameloft.adsmanager.Incentivized.BaseIncentivizedObject;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class IronSourceIncentivized extends BaseIncentivizedObject {
    private static final int MAXIMUM_IRONSOURCE_SID_LENGTH = 128;
    public String UUID;
    private IronSource parent;
    public String sdkLocation;

    public IronSourceIncentivized(IronSource ironSource, String str) {
        super(ironSource);
        this.parent = ironSource;
        this.sdkLocation = str;
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Close() {
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Destroy() {
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public boolean IsValid() {
        return true;
    }

    @Override // com.gameloft.adsmanager.Incentivized.IncentivizedObjectInterface
    public void Show(String str, String str2, String str3) {
        this.UUID = str3;
        this.parent.onScreenIncentivized = this;
        String str4 = str2 + "|" + str + "|" + str3 + "||pmc|1";
        JavaUtils.AdsManagerLogInfo("IronSourceIncentivized.java", "Show", "sid = (" + str4 + ")");
        if (str4.length() > 128) {
            JavaUtils.AdsManagerLogError("IronSourceIncentivized.java", "Show", "The sid has a length of more then 128 characters, IronSource may not send it as part of the server to server payload");
        }
        com.json.mediationsdk.IronSource.setDynamicUserId(str4);
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceIncentivized.1
            @Override // java.lang.Runnable
            public void run() {
                IronSourceIncentivized.this.parent.OnPauseGameAudio();
                com.json.mediationsdk.IronSource.showRewardedVideo(IronSourceIncentivized.this.sdkLocation);
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.IronSourceIncentivized.2
            @Override // java.lang.Runnable
            public void run() {
                IronSourceIncentivized ironSourceIncentivized = IronSourceIncentivized.this;
                ironSourceIncentivized.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, ironSourceIncentivized.sdkLocation);
                IronSourceIncentivized.this.parent.ResetIncentivized();
            }
        });
    }
}
