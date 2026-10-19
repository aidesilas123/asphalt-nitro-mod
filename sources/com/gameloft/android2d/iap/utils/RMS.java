package com.gameloft.android2d.iap.utils;

import android.content.SharedPreferences;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;

/* JADX INFO: loaded from: classes2.dex */
public class RMS implements com.gameloft.android2d.iap.a {
    public static String GetEncryptionKey() {
        String strGetIAPKey = IAPLib.GetIAPKey(SUtils.getStringRS(R.string.k_kdefaultKey));
        try {
            String deviceId = IAPLib.Get_HDIDFV_Update() != 2 ? Device.getDeviceId("IMEI") : Device.getDeviceId("HDIDFV");
            if (deviceId != null && !deviceId.equals("")) {
                strGetIAPKey = deviceId;
            }
            return strGetIAPKey.length() > 16 ? strGetIAPKey.substring(0, 16) : strGetIAPKey;
        } catch (Exception unused) {
            return strGetIAPKey;
        }
    }

    public static String getDevPayload() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[57]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getExtraData() {
        return rms_LoadInfo(70);
    }

    public static String getIAPLimtation() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[27]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getLastBillType() {
        return rms_LoadInfo(64);
    }

    public static String getLastBillingResultURL() {
        return rms_LoadInfo(26);
    }

    public static String getLastBillingType() {
        return rms_LoadInfo(20);
    }

    public static String getLastContentID() {
        return rms_LoadInfo(23);
    }

    public static String getLastCurrency() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[13]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static int getLastFlowType() {
        String strRms_LoadInfo = rms_LoadInfo(40);
        if (strRms_LoadInfo != "") {
            return Integer.parseInt(strRms_LoadInfo);
        }
        return 0;
    }

    public static String getLastFormattedPrice() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[49]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getLastItemDescription() {
        return rms_LoadInfo(68);
    }

    public static String getLastItemName() {
        return rms_LoadInfo(67);
    }

    public static String getLastItemTrackingUID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[50]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getLastMoney() {
        return rms_LoadInfo(21);
    }

    public static String[] getLastOfflineItems() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[19]);
        if (strRmsLoad == null || strRmsLoad.equals("")) {
            return null;
        }
        return XXTEA.DecryptString(strRmsLoad).split(";");
    }

    public static String getLastPackOrderPurchased() {
        String strRms_LoadInfo = rms_LoadInfo(51);
        return strRms_LoadInfo != "" ? strRms_LoadInfo : UniquePlacementId.NO_ID;
    }

    public static String getLastPrice() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[8]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getLastProfileID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[9]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getLastProxyPort() {
        return rms_LoadInfo(25);
    }

    public static String getLastProxyServer() {
        return rms_LoadInfo(24);
    }

    public static String getLastPurchasedBundleInfo() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[56]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getLastPurchasedSubscriptionItemInfo() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[65]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getLastPurchasedSubscriptionRewardItemInfo() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[66]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getLastVerifyURL() {
        return rms_LoadInfo(22);
    }

    public static long getLastVirtualCurrency() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[18]);
        if (strRmsLoad == null || strRmsLoad.length() == 0) {
            return 0L;
        }
        try {
            return Long.parseLong(XXTEA.DecryptString(strRmsLoad));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String getMoneySpent() {
        int iIndexOf;
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[7]);
        if (strRmsLoad == null || (iIndexOf = strRmsLoad.indexOf(95)) <= 0) {
            return null;
        }
        return strRmsLoad.substring(0, iIndexOf);
    }

    public static String getNotifyID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[10]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getOppoAttach() {
        return rms_LoadInfo(69);
    }

    public static String getOrderID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[14]);
        return strRmsLoad != "" ? strRmsLoad : "";
    }

    public static int getPackageId() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[2]);
        if (strRmsLoad == null || strRmsLoad.length() == 0) {
            return -1;
        }
        try {
            return Integer.parseInt(strRmsLoad);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String getPackageType() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[6]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getPendingTransactionResult() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[11]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getProfileID() {
        int iIndexOf;
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[7]);
        if (strRmsLoad == null || (iIndexOf = strRmsLoad.indexOf(95)) <= 0) {
            return null;
        }
        return strRmsLoad.substring(iIndexOf + 1);
    }

    public static int getSMSCounter() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[17]);
        if (strRmsLoad != "") {
            return SUtils.parseIntNumber(strRmsLoad);
        }
        return 1;
    }

    public static String getSecurityString() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[12]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getSku() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[45]);
        return strRmsLoad != "" ? strRmsLoad : "";
    }

    public static String getTextResendConfirmation() {
        return rms_LoadInfo(41);
    }

    public static String getTextResendNo() {
        return rms_LoadInfo(43);
    }

    public static String getTextResendYes() {
        return rms_LoadInfo(42);
    }

    public static String getTransactionID() {
        String strRms_LoadInfo = rms_LoadInfo(39);
        return strRms_LoadInfo != "" ? strRms_LoadInfo : Device.hasConnectivity() ? "" : "11111";
    }

    public static String getUnlockCodeStored() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[1]);
        return strRmsLoad != null ? strRmsLoad : "";
    }

    public static String getUserID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[15]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static String getWAPPurchaseID() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[34]);
        if (strRmsLoad != "") {
            return strRmsLoad;
        }
        return null;
    }

    public static void increaseSMSCounter() {
        int sMSCounter = getSMSCounter() + 1;
        rmsSave(com.gameloft.android2d.iap.a.b[17], sMSCounter + "");
    }

    public static boolean isDemoBuild() {
        boolean z = false;
        try {
            z = SUtils.getContext().getSharedPreferences(SUtils.getStringRS(R.string.k_DemoPrefsName), 0).getBoolean(SUtils.getStringRS(R.string.k_DemoRecord), true);
        } catch (Exception unused) {
        }
        return true ^ z;
    }

    public static boolean isRedeemUnlocked() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[4]);
        return strRmsLoad != null && strRmsLoad.equals("1");
    }

    public static boolean isSMSSent() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[0]);
        return strRmsLoad != null && strRmsLoad.equals("1");
    }

    public static boolean itemUnlocked() {
        String strRmsLoad = rmsLoad(com.gameloft.android2d.iap.a.b[5]);
        return strRmsLoad != null && strRmsLoad.equals("1");
    }

    public static String rmsLoad(String str) {
        try {
            String string = SUtils.getContext().getSharedPreferences(SUtils.getStringRS(R.string.k_RmsPrefsName), 0).getString(str, "");
            if (string != null && !string.equals("")) {
                return XXTEA.DecryptString(string, GetEncryptionKey());
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static void rmsSave(String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = SUtils.getContext().getSharedPreferences(SUtils.getStringRS(R.string.k_RmsPrefsName), 0).edit();
            if (str2 != null && !str2.equals("")) {
                str2 = XXTEA.EncryptString(str2, GetEncryptionKey());
            }
            editorEdit.putString(str, str2);
            editorEdit.commit();
        } catch (Exception unused) {
        }
    }

    public static String rms_LoadInfo(int i) {
        return rmsLoad(com.gameloft.android2d.iap.a.b[i]);
    }

    public static void rms_SaveInfo(String str, int i) {
        rmsSave(com.gameloft.android2d.iap.a.b[i], str);
    }

    public static void saveDevPayload(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[57], str);
    }

    public static void saveExtraData(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[70], str);
    }

    public static void saveIAPLimtation(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[27], str);
    }

    public static void saveLastCurrency(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[13], str);
    }

    public static void saveLastFlowType(int i) {
        rmsSave(com.gameloft.android2d.iap.a.b[40], "" + i);
    }

    public static void saveLastOfflineItems(String[] strArr) {
        String str = "";
        if (strArr != null) {
            for (String str2 : strArr) {
                str = str + str2 + ";";
            }
        }
        rmsSave(com.gameloft.android2d.iap.a.b[19], XXTEA.EncryptString(str));
    }

    public static void saveLastPackOrderPurchased(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[51], str);
    }

    public static void saveLastPrice(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[8], str);
    }

    public static void saveLastProfileID(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[9], str);
    }

    public static void saveLastPurchasedBundleInfo(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[56], str);
    }

    public static void saveLastPurchasedSubscriptionItemInfo(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[65], str);
    }

    public static void saveLastPurchasedSubscriptionRewardItemInfo(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[66], str);
    }

    public static void saveLastVirtualCurrency(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[18], XXTEA.EncryptString(str));
    }

    public static void saveMoneySpentAndProfileID(String str, String str2) {
        rmsSave(com.gameloft.android2d.iap.a.b[7], str + "_" + str2);
    }

    public static void saveNotifyID(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[10], str);
    }

    public static void saveOppoAttach(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[69], str);
    }

    public static void saveOrderID(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[14], str);
    }

    public static void savePendingTransactionResult(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[11], str);
    }

    public static void saveSecurityString(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[12], str);
    }

    public static void saveSku(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[45], str);
    }

    public static void saveUserID(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[15], str);
    }

    public static void saveVerificationInformation(com.gameloft.android2d.iap.billings.a aVar) {
        rms_SaveInfo(aVar.t(), 20);
        rms_SaveInfo(aVar.z(), 21);
        rms_SaveInfo(aVar.V(), 22);
        rms_SaveInfo(aVar.u(), 23);
        rms_SaveInfo(aVar.E(), 24);
        rms_SaveInfo(aVar.D(), 25);
        rms_SaveInfo(aVar.s(), 26);
        rms_SaveInfo(aVar.c(), 52);
        rms_SaveInfo(aVar.r(), 64);
    }

    public static void saveWAPPurchaseID(String str) {
        rmsSave(com.gameloft.android2d.iap.a.b[34], str);
    }
}
