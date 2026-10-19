package com.kidoz.sdk.api.ui_views.panel_view;

import java.io.File;

/* JADX INFO: compiled from: AbstractPanelView.java */
/* JADX INFO: loaded from: classes4.dex */
class LocalAssetHelper {
    public File closeBtnAssetBg;
    public File closeBtnAssetFrg;
    public File legacyBtnCloseAsset;
    public File legacyBtnDefaultOpenSponsoredAsset;
    public File legacyBtnOpenAsset;
    public File openBtnAssetBg;
    public File openBtnAssetFrg;

    LocalAssetHelper() {
    }

    public boolean isLegacyParams() {
        File file = this.legacyBtnOpenAsset;
        if (file != null && file.exists()) {
            return true;
        }
        File file2 = this.legacyBtnCloseAsset;
        if (file2 != null && file2.exists()) {
            return true;
        }
        File file3 = this.legacyBtnDefaultOpenSponsoredAsset;
        return file3 != null && file3.exists();
    }
}
