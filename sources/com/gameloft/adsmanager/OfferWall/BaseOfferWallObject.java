package com.gameloft.adsmanager.OfferWall;

import com.gameloft.adsmanager.BaseAdsProvider;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseOfferWallObject implements OfferWallObjectAPIInterface, OfferWallObjectInterface {
    private BaseAdsProvider m_provider;
    private boolean m_onDisplay = false;
    private String m_adsLocation = "";

    public BaseOfferWallObject(BaseAdsProvider baseAdsProvider) {
        this.m_provider = baseAdsProvider;
    }

    public void CloseInternal() {
        try {
            Close();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseOfferWallObject.java", "CloseInternal", e2);
        }
    }

    public void DestroyInternal() {
        try {
            Destroy();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseOfferWallObject.java", "DestroyInternal", e2);
        }
    }

    public boolean IsValidInternal() {
        try {
            return IsValid();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseOfferWallObject.java", "IsValidInternal", e2);
            return false;
        }
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectAPIInterface
    public void OnClick(String str) {
        this.m_provider.OnOfferWallClicked(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectAPIInterface
    public void OnClose(String str) {
        this.m_onDisplay = false;
        this.m_provider.OnOfferWallClosed(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectAPIInterface
    public void OnDisplay(String str) {
        this.m_onDisplay = true;
        this.m_provider.OnOfferWallOnScreen(this.m_adsLocation, str);
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectAPIInterface
    public void OnShowError(int i, String str) {
        this.m_onDisplay = false;
        this.m_provider.OnOfferWallShowError(i, this.m_adsLocation, str);
    }

    public void ShowInternal(String str, String str2) {
        if (this.m_onDisplay) {
            JavaUtils.AdsManagerLogError("BaseOfferWallObject.java", "ShowInternal", "Trying to show on screen offerwall");
            return;
        }
        this.m_adsLocation = str;
        try {
            Show(str, str2);
        } catch (Exception e2) {
            JavaUtils.LogException("BaseOfferWallObject.java", "ShowInternal", e2);
            this.m_provider.OnOfferWallShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, this.m_adsLocation, "exception");
        }
    }
}
