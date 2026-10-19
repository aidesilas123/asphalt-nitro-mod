package com.kidoz.sdk.api.ui_views.kidoz_banner;

import com.kidoz.sdk.api.general.KidozError;

/* JADX INFO: loaded from: classes4.dex */
public interface KidozBannerListener {
    void onBannerClose();

    void onBannerError(KidozError kidozError);

    void onBannerImpression();

    void onBannerReady();

    void onBannerShowFailed(KidozError kidozError);

    void onBannerShowSuccess();
}
