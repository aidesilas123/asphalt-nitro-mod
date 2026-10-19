package com.gameloft.adsmanager.Banner;

import com.gameloft.adsmanager.BaseAdsProvider;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseBannerObject implements BannerObjectAPIInterface, BannerObjectInterface {
    private BaseAdsProvider m_provider;
    private boolean m_onDisplay = false;
    private String m_adsLocation = "";

    public BaseBannerObject(BaseAdsProvider baseAdsProvider) {
        this.m_provider = baseAdsProvider;
    }

    public void CloseInternal() {
        if (!this.m_onDisplay) {
            JavaUtils.AdsManagerLogError("BaseBannerObject.java", "ShowInternal", "Trying to close banner while banner is not on screen");
            return;
        }
        try {
            Close();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseBannerObject.java", "CloseInternal", e2);
        }
    }

    public void DestroyInternal() {
        try {
            Destroy();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseBannerObject.java", "DestroyInternal", e2);
        }
    }

    public boolean IsValidInternal() {
        try {
            return IsValid();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseBannerObject.java", "IsValidInternal", e2);
            return false;
        }
    }

    public void MoveInternal(int i, int i2, int i3) {
        if (!this.m_onDisplay) {
            JavaUtils.AdsManagerLogError("BaseBannerObject.java", "ShowInternal", "Trying to move banner while banner is not on screen");
            return;
        }
        try {
            Move(i, i2, i3);
        } catch (Exception e2) {
            JavaUtils.LogException("BaseBannerObject.java", "MoveInternal", e2);
        }
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectAPIInterface
    public void OnClick(String str) {
        this.m_provider.OnBannerClicked(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectAPIInterface
    public void OnClosed(String str) {
        this.m_onDisplay = false;
        this.m_provider.OnBannerClosed(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectAPIInterface
    public void OnDisplay(String str) {
        this.m_onDisplay = true;
        this.m_provider.OnBannerOnScreen(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectAPIInterface
    public void OnRefreshed(String str) {
        if (this.m_onDisplay) {
            this.m_provider.OnBannerRefreshed(this.m_adsLocation, str);
            return;
        }
        JavaUtils.AdsManagerLogError("BaseBannerObject.java", "OnRefreshed", "refreshe called for object that is not on screen on location : " + str);
    }

    @Override // com.gameloft.adsmanager.Banner.BannerObjectAPIInterface
    public void OnShowError(int i, String str) {
        this.m_onDisplay = false;
        this.m_provider.OnBannerShowError(i, this.m_adsLocation, str);
    }

    public void ShowInternal(int i, int i2, int i3, String str, String str2) {
        if (this.m_onDisplay) {
            JavaUtils.AdsManagerLogError("BaseBannerObject.java", "ShowInternal", "Trying to display banner while banner is on screen");
            return;
        }
        this.m_adsLocation = str;
        try {
            Show(i, i2, i3, str, str2);
        } catch (Exception e2) {
            JavaUtils.LogException("BaseBannerObject.java", "ShowInternal", e2);
            this.m_provider.OnBannerShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, this.m_adsLocation, "exception");
        }
    }
}
