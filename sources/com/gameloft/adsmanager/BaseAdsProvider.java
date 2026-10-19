package com.gameloft.adsmanager;

import android.provider.Settings;
import com.gameloft.adsmanager.Banner.BaseBannerObject;
import com.gameloft.adsmanager.Incentivized.BaseIncentivizedObject;
import com.gameloft.adsmanager.Interstitial.BaseInterstitialObject;
import com.gameloft.adsmanager.JavaUtils;
import com.gameloft.adsmanager.OfferWall.BaseOfferWallObject;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BaseAdsProvider implements AdsProviderAPIInterface, AdsProviderInterface {
    private long m_handleToNative;

    public BaseAdsProvider(long j) {
        this.m_handleToNative = j;
    }

    private native void NativeOnBannerAvailable(long j, BaseBannerObject baseBannerObject);

    private native void NativeOnBannerClicked(long j, String str, String str2);

    private native void NativeOnBannerClosed(long j, String str, String str2);

    private native void NativeOnBannerLoadError(long j, int i, String str);

    private native void NativeOnBannerOnScreen(long j, String str, String str2);

    private native void NativeOnBannerRefreshed(long j, String str, String str2);

    private native void NativeOnBannerShowError(long j, int i, String str, String str2);

    private native void NativeOnConfigurationFailed(long j);

    private native void NativeOnConfigurationSucceeded(long j);

    private native void NativeOnImpressionData(long j, String str);

    private native void NativeOnIncentivizedAvailable(long j, BaseIncentivizedObject baseIncentivizedObject);

    private native void NativeOnIncentivizedClicked(long j, String str, String str2);

    private native void NativeOnIncentivizedClosed(long j, String str, String str2);

    private native void NativeOnIncentivizedLoadError(long j, int i, String str);

    private native void NativeOnIncentivizedOnScreen(long j, String str, String str2);

    private native void NativeOnIncentivizedReward(long j, String str, boolean z, String str2, String str3);

    private native void NativeOnIncentivizedShowError(long j, int i, String str, String str2);

    private native void NativeOnInterstitialAvailable(long j, BaseInterstitialObject baseInterstitialObject);

    private native void NativeOnInterstitialClicked(long j, String str, String str2);

    private native void NativeOnInterstitialClosed(long j, String str, String str2);

    private native void NativeOnInterstitialLoadError(long j, int i, String str);

    private native void NativeOnInterstitialOnScreen(long j, String str, String str2);

    private native void NativeOnInterstitialShowError(long j, int i, String str, String str2);

    private native void NativeOnOfferWallAvailable(long j, BaseOfferWallObject baseOfferWallObject);

    private native void NativeOnOfferWallClicked(long j, String str, String str2);

    private native void NativeOnOfferWallClosed(long j, String str, String str2);

    private native void NativeOnOfferWallLoadError(long j, int i, String str);

    private native void NativeOnOfferWallOnScreen(long j, String str, String str2);

    private native void NativeOnOfferWallShowError(long j, int i, String str, String str2);

    private native void NativeOnPauseGameAudio(long j);

    private native void NativeOnResumeGameAudio(long j);

    private native void NativeOnTapjoyCurrencyBalance(long j, String str, int i);

    @Override // com.gameloft.adsmanager.AdsProviderInterface
    public void CheckTapjoyCurrencyBalance() {
    }

    public List<String> GetTestDevices() {
        ArrayList arrayList = new ArrayList();
        String upperCase = getMD5(Settings.Secure.getString(AdsManager.mainActivity.getApplicationContext().getContentResolver(), "android_id")).toUpperCase(Locale.ENGLISH);
        if (upperCase == "") {
            return GetTestDevicesFromFile();
        }
        JavaUtils.AdsManagerLogWarning("BaseAdsProvider.java", "GetTestDevices", "TEST DEVICE ID:" + upperCase);
        arrayList.add(upperCase);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<java.lang.String> GetTestDevicesFromFile() {
        /*
            r10 = this;
            java.lang.String r0 = "Add your device Test ID to this file for testing AdMob :"
            java.lang.String r1 = "GetTestDevicesFromFile"
            java.lang.String r2 = "BaseAdsProvider.java"
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.lang.String r4 = "/testdevices.txt"
            android.app.Activity r5 = com.gameloft.adsmanager.AdsManager.mainActivity     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r6 = 0
            java.io.File r5 = r5.getExternalFilesDir(r6)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.lang.String r5 = r5.getAbsolutePath()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r6.<init>()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r6.append(r5)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r6.append(r4)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.io.FileReader r5 = new java.io.FileReader     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r5.<init>(r4)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r6.<init>(r5)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
        L35:
            java.lang.String r7 = r6.readLine()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            if (r7 == 0) goto L53
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r8.<init>()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.lang.String r9 = "TEST DEVICE IDs:"
            r8.append(r9)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r8.append(r7)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            com.gameloft.adsmanager.JavaUtils.AdsManagerLogWarning(r2, r1, r8)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r3.add(r7)     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            goto L35
        L53:
            r6.close()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            r5.close()     // Catch: java.lang.Exception -> L5a java.io.FileNotFoundException -> L65
            goto L8f
        L5a:
            r5 = move-exception
            java.io.PrintStream r6 = java.lang.System.out
            java.lang.String r5 = r5.toString()
            r6.println(r5)
            goto L8f
        L65:
            java.io.FileWriter r5 = new java.io.FileWriter     // Catch: java.lang.Exception -> L8e
            r6 = 1
            r5.<init>(r4, r6)     // Catch: java.lang.Exception -> L8e
            java.io.BufferedWriter r6 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L8e
            r6.<init>(r5)     // Catch: java.lang.Exception -> L8e
            java.lang.String r7 = ""
            r6.write(r7)     // Catch: java.lang.Exception -> L8e
            r6.close()     // Catch: java.lang.Exception -> L8e
            r5.close()     // Catch: java.lang.Exception -> L8e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8e
            r5.<init>()     // Catch: java.lang.Exception -> L8e
            r5.append(r0)     // Catch: java.lang.Exception -> L8e
            r5.append(r4)     // Catch: java.lang.Exception -> L8e
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8e
            com.gameloft.adsmanager.JavaUtils.AdsManagerLogWarning(r2, r1, r5)     // Catch: java.lang.Exception -> L8e
            goto L8f
        L8e:
        L8f:
            boolean r5 = r3.isEmpty()
            if (r5 == 0) goto La7
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r0)
            r5.append(r4)
            java.lang.String r0 = r5.toString()
            com.gameloft.adsmanager.JavaUtils.AdsManagerLogWarning(r2, r1, r0)
        La7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.adsmanager.BaseAdsProvider.GetTestDevicesFromFile():java.util.List");
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnBannerAvailable(BaseBannerObject baseBannerObject) {
        NativeOnBannerAvailable(this.m_handleToNative, baseBannerObject);
    }

    public void OnBannerClicked(String str, String str2) {
        NativeOnBannerClicked(this.m_handleToNative, str, str2);
    }

    public void OnBannerClosed(String str, String str2) {
        NativeOnBannerClosed(this.m_handleToNative, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnBannerLoadError(int i, String str) {
        NativeOnBannerLoadError(this.m_handleToNative, i, str);
    }

    public void OnBannerOnScreen(String str, String str2) {
        NativeOnBannerOnScreen(this.m_handleToNative, str, str2);
    }

    public void OnBannerRefreshed(String str, String str2) {
        NativeOnBannerRefreshed(this.m_handleToNative, str, str2);
    }

    public void OnBannerShowError(int i, String str, String str2) {
        NativeOnBannerShowError(this.m_handleToNative, i, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnConfigurationFailed() {
        NativeOnConfigurationFailed(this.m_handleToNative);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnConfigurationSucceeded() {
        NativeOnConfigurationSucceeded(this.m_handleToNative);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnImpressionData(String str) {
        NativeOnImpressionData(this.m_handleToNative, str);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnIncentivizedAvailable(BaseIncentivizedObject baseIncentivizedObject) {
        NativeOnIncentivizedAvailable(this.m_handleToNative, baseIncentivizedObject);
    }

    public void OnIncentivizedClicked(String str, String str2) {
        NativeOnIncentivizedClicked(this.m_handleToNative, str, str2);
    }

    public void OnIncentivizedClosed(String str, String str2) {
        NativeOnIncentivizedClosed(this.m_handleToNative, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnIncentivizedLoadError(int i, String str) {
        NativeOnIncentivizedLoadError(this.m_handleToNative, i, str);
    }

    public void OnIncentivizedOnScreen(String str, String str2) {
        NativeOnIncentivizedOnScreen(this.m_handleToNative, str, str2);
    }

    public void OnIncentivizedReward(String str, boolean z, String str2, String str3) {
        NativeOnIncentivizedReward(this.m_handleToNative, str, z, str2, str3);
    }

    public void OnIncentivizedShowError(int i, String str, String str2) {
        NativeOnIncentivizedShowError(this.m_handleToNative, i, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnInterstitialAvailable(BaseInterstitialObject baseInterstitialObject) {
        NativeOnInterstitialAvailable(this.m_handleToNative, baseInterstitialObject);
    }

    public void OnInterstitialClicked(String str, String str2) {
        NativeOnInterstitialClicked(this.m_handleToNative, str, str2);
    }

    public void OnInterstitialClosed(String str, String str2) {
        NativeOnInterstitialClosed(this.m_handleToNative, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnInterstitialLoadError(int i, String str) {
        NativeOnInterstitialLoadError(this.m_handleToNative, i, str);
    }

    public void OnInterstitialOnScreen(String str, String str2) {
        NativeOnInterstitialOnScreen(this.m_handleToNative, str, str2);
    }

    public void OnInterstitialShowError(int i, String str, String str2) {
        NativeOnInterstitialShowError(this.m_handleToNative, i, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnOfferWallAvailable(BaseOfferWallObject baseOfferWallObject) {
        NativeOnOfferWallAvailable(this.m_handleToNative, baseOfferWallObject);
    }

    public void OnOfferWallClicked(String str, String str2) {
        NativeOnOfferWallClicked(this.m_handleToNative, str, str2);
    }

    public void OnOfferWallClosed(String str, String str2) {
        NativeOnOfferWallClosed(this.m_handleToNative, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnOfferWallLoadError(int i, String str) {
        NativeOnOfferWallLoadError(this.m_handleToNative, i, str);
    }

    public void OnOfferWallOnScreen(String str, String str2) {
        NativeOnOfferWallOnScreen(this.m_handleToNative, str, str2);
    }

    public void OnOfferWallShowError(int i, String str, String str2) {
        NativeOnOfferWallShowError(this.m_handleToNative, i, str, str2);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnPauseGameAudio() {
        NativeOnPauseGameAudio(this.m_handleToNative);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnResumeGameAudio() {
        NativeOnResumeGameAudio(this.m_handleToNative);
    }

    @Override // com.gameloft.adsmanager.AdsProviderAPIInterface
    public void OnTapjoyCurrencyBalance(String str, int i) {
        NativeOnTapjoyCurrencyBalance(this.m_handleToNative, str, i);
    }

    @Override // com.gameloft.adsmanager.AdsProviderInterface
    public void RequestBanner() {
    }

    public void RequestBannerInternal() {
        try {
            RequestBanner();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseAdsProvider.java", "RequestBannerInternal", e2);
            OnBannerLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, "exception");
        }
    }

    @Override // com.gameloft.adsmanager.AdsProviderInterface
    public void RequestIncentivized() {
    }

    public void RequestIncentivizedInternal() {
        try {
            RequestIncentivized();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseAdsProvider.java", "RequestIncentivizedInternal", e2);
            OnIncentivizedLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, "exception");
        }
    }

    @Override // com.gameloft.adsmanager.AdsProviderInterface
    public void RequestInterstitial() {
    }

    public void RequestInterstitialInternal() {
        try {
            RequestInterstitial();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseAdsProvider.java", "RequestInterstitialInternal", e2);
            OnInterstitialLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, "exception");
        }
    }

    @Override // com.gameloft.adsmanager.AdsProviderInterface
    public void RequestOfferWall() {
    }

    public void RequestOfferWallInternal() {
        try {
            RequestOfferWall();
        } catch (Exception e2) {
            JavaUtils.LogException("BaseAdsProvider.java", "RequestOfferWallInternal", e2);
            OnOfferWallLoadError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, "exception");
        }
    }

    protected String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception unused) {
            JavaUtils.AdsManagerLogWarning("BaseAdsProvider.java", "GetTestDevices", "Cannot get test device id");
            return "";
        }
    }
}
