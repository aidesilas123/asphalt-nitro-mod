package com.gameloft.android2d.iap.billings.googleplaybilling;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.applovin.sdk.AppLovinEventParameters;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.IAP_CallBack;
import com.gameloft.android2d.iap.Links;
import com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper;
import com.gameloft.android2d.iap.billings.googleplaybilling.util.Base64;
import com.gameloft.android2d.iap.utils.CRMUtils;
import com.gameloft.android2d.iap.utils.Device;
import com.gameloft.android2d.iap.utils.IABRequestHandler;
import com.gameloft.android2d.iap.utils.RMS;
import com.gameloft.android2d.iap.utils.SUtils;
import com.gameloft.android2d.iap.utils.XPlayer;
import com.gameloft.android2d.iap.utils.XXTEA;
import com.gameloft.android2d.iap.wrapper.Utils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleBilling extends com.gameloft.android2d.iap.billings.a {
    private static IabHelper R;
    private static boolean S;
    private static int T;
    private String U = null;
    IabHelper.g V = new f();
    IabHelper.f W = new g();
    IabHelper.h X = new h();
    IabHelper.i Y = new m();
    IabHelper.i Z = new a();
    IabHelper.i a0 = new b();

    class a implements IabHelper.i {
        a() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.i
        public void a(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.b() != 0) {
                IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
                return;
            }
            for (Purchase purchase : list) {
                String str = purchase.g().get(0);
                if (str.equals(GoogleBilling.this.U)) {
                    GoogleBilling.RequestSubscriptionStatus(str, purchase.e());
                    return;
                }
            }
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
        }
    }

    class b implements IabHelper.i {
        b() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.i
        public void a(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.b() != 0) {
                IAPLib.setResult(3);
                IAPLib.setError(billingResult.b());
                return;
            }
            for (Purchase purchase : list) {
                String str = purchase.g().get(0);
                if (str != null && !str.equals("")) {
                    if (GoogleBilling.this.J0(str)) {
                        IAPLib.AddNCIReceipts(purchase.c());
                        IAPLib.addRestoreItem(str, purchase.b(), purchase.e(), purchase.a());
                        try {
                            String strRms_LoadInfo = RMS.rms_LoadInfo(61);
                            JSONObject jSONObject = SUtils.isJSONValid(strRms_LoadInfo) ? new JSONObject(strRms_LoadInfo) : new JSONObject();
                            jSONObject.put(str, purchase.c());
                            RMS.rms_SaveInfo(jSONObject.toString(), 61);
                        } catch (JSONException unused) {
                        }
                    } else {
                        com.gameloft.android2d.iap.utils.g gVarM = IAPLib.getShopProfile().m(new JSONObject(XXTEA.DecryptString(purchase.a(), SUtils.getStringRS(R.string.k_ExtraKey3))).getString("item_type"));
                        if (gVarM != null) {
                            IAPLib.AddNCIReceipts(purchase.c());
                            IAPLib.addRestoreItem(str, gVarM, purchase.b(), purchase.e(), purchase.a());
                            String strRms_LoadInfo2 = RMS.rms_LoadInfo(61);
                            JSONObject jSONObject2 = SUtils.isJSONValid(strRms_LoadInfo2) ? new JSONObject(strRms_LoadInfo2) : new JSONObject();
                            jSONObject2.put(str, purchase.c());
                            RMS.rms_SaveInfo(jSONObject2.toString(), 61);
                        }
                    }
                }
            }
            IAPLib.GetListItemsRestoreCB();
            IAPLib.setResult(10);
        }
    }

    class c implements IabHelper.j {
        c() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j
        public void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar) {
            if (!aVar.c()) {
                IAPLib.setResult(10);
                IAPLib.setError(0);
            } else if (GoogleBilling.R == null) {
                IAPLib.setResult(10);
                IAPLib.setError(0);
            } else {
                boolean unused = GoogleBilling.S = true;
                GoogleBilling.R.j("inapp", GoogleBilling.this.Y);
            }
        }
    }

    class d implements IabHelper.j {
        d() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j
        public void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar) {
            if (!aVar.c()) {
                IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
            } else {
                boolean unused = GoogleBilling.S = true;
                GoogleBilling.R.j("subs", GoogleBilling.this.Z);
            }
        }
    }

    class e implements IabHelper.j {
        e() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j
        public void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar) {
            if (!aVar.c()) {
                IAPLib.setResult(3);
                IAPLib.setError(aVar.b());
                return;
            }
            boolean unused = GoogleBilling.S = true;
            if (GoogleBilling.this.U == null || GoogleBilling.this.U.equals("")) {
                GoogleBilling.R.j("inapp", GoogleBilling.this.Y);
            } else {
                GoogleBilling googleBilling = GoogleBilling.this;
                GoogleBilling.R.h(GoogleBilling.this.U, googleBilling.K0(googleBilling.U) ? "subs" : "inapp", GoogleBilling.this.X);
            }
        }
    }

    class f implements IabHelper.g {
        f() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.g
        public void a(BillingResult billingResult, String str, Purchase purchase) {
            String str2 = purchase.g().get(0);
            if (billingResult.b() == 0) {
                GoogleBilling.this.F0(str2);
                GoogleBilling.this.L0(purchase);
            } else if (billingResult.b() == 5) {
                IAPLib.setResult(10);
                IAPLib.setError(billingResult.b());
            } else if (billingResult.b() == 8) {
                IAPLib.setResult(10);
                IAPLib.setError(billingResult.b());
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(billingResult.b());
            }
        }
    }

    class g implements IabHelper.f {
        g() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.f
        public void a(BillingResult billingResult, Purchase purchase) {
            String str = purchase.g().get(0);
            if (billingResult.b() == 0) {
                GoogleBilling.this.F0(str);
                GoogleBilling.this.L0(purchase);
            } else if (billingResult.b() == 5) {
                IAPLib.setResult(10);
                IAPLib.setError(billingResult.b());
            } else if (billingResult.b() == 8) {
                IAPLib.setResult(10);
                IAPLib.setError(billingResult.b());
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(billingResult.b());
            }
        }
    }

    class h implements IabHelper.h {

        class a implements IabHelper.i {
            a() {
            }

            @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.i
            public void a(BillingResult billingResult, List<Purchase> list) {
                if (billingResult.b() != 0) {
                    IAPLib.setResult(3);
                    IAPLib.setError(billingResult.b());
                    return;
                }
                for (Purchase purchase : list) {
                    if (purchase.g().get(0).equals(GoogleBilling.this.U)) {
                        GoogleBilling.this.L0(purchase);
                    }
                }
            }
        }

        h() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.h
        public void a(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.b() != 0 || list == null) {
                if (billingResult.b() == 1) {
                    IAPLib.setResult(3);
                    IAPLib.setError(billingResult.b());
                    return;
                } else if (billingResult.b() == 7) {
                    GoogleBilling.R.j("inapp", new a());
                    return;
                } else {
                    IAPLib.setResult(3);
                    IAPLib.setError(billingResult.b());
                    return;
                }
            }
            for (Purchase purchase : list) {
                String str = purchase.g().get(0);
                if (purchase.d() == 1) {
                    if (GoogleBilling.this.J0(str)) {
                        com.gameloft.android2d.iap.utils.g gVarJ = IAPLib.getShopProfile().j(str);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str);
                        jSONObject.put("item_type", gVarJ.L());
                        GoogleBilling.R.a(purchase, XXTEA.EncryptString(jSONObject.toString(), SUtils.getStringRS(R.string.k_ExtraKey3)), GoogleBilling.this.W);
                    } else {
                        try {
                            com.gameloft.android2d.iap.utils.g gVarJ2 = IAPLib.getShopProfile().j(str);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str);
                            jSONObject2.put("item_type", gVarJ2.L());
                            GoogleBilling.R.b(purchase, XXTEA.EncryptString(jSONObject2.toString(), SUtils.getStringRS(R.string.k_ExtraKey3)), GoogleBilling.this.V);
                        } catch (JSONException unused) {
                        }
                    }
                } else if (purchase.d() == 2) {
                    IAPLib.setResult(3);
                    IAPLib.setError(-1011);
                }
            }
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.h
        public void b(int i) {
            IAPLib.setResult(3);
            IAPLib.setError(i);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int unused = GoogleBilling.T = 4;
            GoogleBilling.this.k(false);
        }
    }

    class j extends com.gameloft.android2d.iap.utils.d {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(5000L);
                } catch (Exception unused) {
                }
                GoogleBilling.this.b0();
            }
        }

        j() {
        }

        @Override // com.gameloft.android2d.iap.utils.d
        public void a(Bundle bundle) {
            if (bundle.getInt("a5") == 1) {
                bundle.getString("a4");
            } else {
                bundle.getInt("a6");
                new Thread(new a()).start();
            }
        }
    }

    class k extends com.gameloft.android2d.iap.utils.d {
        final /* synthetic */ boolean a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(3000L);
                } catch (Exception unused) {
                }
                GoogleBilling.this.l();
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(5000L);
                } catch (Exception unused) {
                }
                GoogleBilling.this.l();
            }
        }

        k(boolean z) {
            this.a = z;
        }

        @Override // com.gameloft.android2d.iap.utils.d
        public void a(Bundle bundle) {
            if (bundle.getInt("a5") != 1) {
                bundle.getInt("a6");
                if (Device.hasConnectivity()) {
                    new Thread(new b()).start();
                    return;
                } else {
                    IAPLib.setResult(3);
                    IAPLib.setError(-1);
                    return;
                }
            }
            String string = bundle.getString("a4");
            String value = XPlayer.getValue(string, 0);
            XPlayer.getValue(string, 1);
            String value2 = XPlayer.getValue(string, 2);
            String value3 = XPlayer.getValue(string, 3);
            if (TextUtils.isEmpty(value) || value.equals("FAILURE")) {
                if (GoogleBilling.T > 0) {
                    GoogleBilling.access$310();
                    new Thread(new a()).start();
                    return;
                }
                RMS.saveOrderID("");
                RMS.saveNotifyID("");
                RMS.saveDevPayload("");
                RMS.savePendingTransactionResult("");
                IAPLib.setResult(3);
                IAPLib.setError(-5);
                return;
            }
            try {
                RMS.rms_SaveInfo(value3, 39);
                if (IAPLib.verifyRequest(value2) && !TextUtils.isEmpty(value) && value.equals("SUCCESS")) {
                    String sku = RMS.getSku();
                    if (GoogleBilling.this.J0(sku)) {
                        String strRms_LoadInfo = RMS.rms_LoadInfo(53);
                        if (strRms_LoadInfo != null) {
                            sku = strRms_LoadInfo + ";" + sku;
                        }
                        RMS.rms_SaveInfo(sku, 53);
                    }
                    RMS.rms_SaveInfo(this.a ? "1" : "0", 59);
                    bundle.clear();
                }
            } catch (Exception unused) {
            }
        }
    }

    class l implements IabHelper.j {
        l() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j
        public void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar) {
            if (aVar.c()) {
                boolean unused = GoogleBilling.S = true;
                GoogleBilling.R.j("inapp", GoogleBilling.this.a0);
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(aVar.b());
            }
        }
    }

    class m implements IabHelper.i {
        m() {
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.i
        public void a(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.b() != 0) {
                IAPLib.setResult(10);
                IAPLib.setError(0);
                return;
            }
            for (Purchase purchase : list) {
                String str = purchase.g().get(0);
                if (GoogleBilling.this.H0(str)) {
                    if (!GoogleBilling.this.J0(str)) {
                        try {
                            com.gameloft.android2d.iap.utils.g gVarJ = IAPLib.getShopProfile().j(str);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str);
                            jSONObject.put("item_type", gVarJ.L());
                            GoogleBilling.R.b(purchase, XXTEA.EncryptString(jSONObject.toString(), SUtils.getStringRS(R.string.k_ExtraKey3)), GoogleBilling.this.V);
                        } catch (JSONException unused) {
                        }
                    } else if (!purchase.h() || !purchase.toString().contains("acknowledged")) {
                        com.gameloft.android2d.iap.utils.g gVarJ2 = IAPLib.getShopProfile().j(str);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str);
                        jSONObject2.put("item_type", gVarJ2.L());
                        GoogleBilling.R.a(purchase, XXTEA.EncryptString(jSONObject2.toString(), SUtils.getStringRS(R.string.k_ExtraKey3)), GoogleBilling.this.W);
                    }
                }
            }
            IAPLib.setResult(10);
            IAPLib.setError(0);
        }
    }

    public GoogleBilling() {
        f0(SUtils.getStringRS(R.string.k_GoogleBilling));
    }

    public static void RequestSubscriptionStatus(String str, String str2) {
        XPlayer xPlayer = new XPlayer(new Device(RMS.getLastProxyServer(), RMS.getLastProxyPort()), false);
        String strIAP_GetCRMUrl = Links.IAP_GetCRMUrl();
        if (strIAP_GetCRMUrl == null || strIAP_GetCRMUrl.equals("")) {
            strIAP_GetCRMUrl = IAPLib.GetCRMUrl();
        }
        String str3 = SUtils.getStringRS(R.string.k_getParamCId) + o2.i.b + str + o2.i.c + SUtils.getStringRS(R.string.k_getParamGPToken) + o2.i.b + str2;
        xPlayer.p(CRMUtils.NounceGenerator());
        xPlayer.l(strIAP_GetCRMUrl + "/subscriptions/", str3, 0);
        while (!xPlayer.h("Subscriptions")) {
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
        }
        if (xPlayer.g() == 0 && CRMUtils.CheckMD5Hash(xPlayer.e(), xPlayer.b(), xPlayer.c(), IAPLib.getIAPCRMKey())) {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(xPlayer.e());
        } else {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
        }
    }

    static /* synthetic */ int access$310() {
        int i2 = T;
        T = i2 - 1;
        return i2;
    }

    public static boolean handleActivityResult(int i2, int i3, Intent intent) {
        return false;
    }

    public static void onDestroy() {
        IabHelper iabHelper = R;
        if (iabHelper != null) {
            iabHelper.c();
        }
        R = null;
    }

    public static boolean setupGoogleBillingV3Done() {
        return S;
    }

    public void D0() {
        if (IAPLib.N) {
            M0();
        }
    }

    public void E0() {
        String strIAP_GetCRMUrl = Links.IAP_GetCRMUrl();
        if (strIAP_GetCRMUrl == null || strIAP_GetCRMUrl.equals("")) {
            strIAP_GetCRMUrl = IAPLib.GetCRMUrl();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(SUtils.getStringRS(R.string.k_getParamActionEndTransaction));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamShop));
        sb.append(o2.i.b);
        sb.append(SUtils.getStringRS(R.string.k_GoogleBillingCRM));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamToken));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetAccessToken()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFCId));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetClientId()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamContent_Id));
        sb.append(o2.i.b);
        sb.append(RMS.getSku());
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamRData));
        sb.append(o2.i.b);
        sb.append(RMS.getOrderID());
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationDC));
        sb.append(o2.i.b);
        sb.append(Links.IAP_GetDatacenter() != null ? Links.IAP_GetDatacenter() : "");
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationOffline));
        sb.append(o2.i.b);
        sb.append(Links.IAP_FederationIsInitialized() ? "0" : "1");
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationCredentials));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetUserCredential()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamGPToken));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(RMS.getNotifyID()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamDeviceId));
        sb.append(o2.i.b);
        sb.append(Links.IAP_GetDeviceId());
        String string = sb.toString();
        XPlayer xPlayer = new XPlayer(new Device(RMS.getLastProxyServer(), RMS.getLastProxyPort()), false);
        xPlayer.p(CRMUtils.NounceGenerator());
        xPlayer.l(strIAP_GetCRMUrl, string, 1);
    }

    public boolean F0(String str) {
        com.gameloft.android2d.iap.utils.g gVarJ;
        if (!IAPLib.N || (gVarJ = IAPLib.getShopProfile().j(str)) == null) {
            return false;
        }
        com.gameloft.android2d.iap.billings.a aVarU = gVarJ.u();
        IAPLib.setItemTypeToBuy(gVarJ.L());
        RMS.rmsSave(com.gameloft.android2d.iap.a.b[6], gVarJ.L());
        RMS.saveLastPackOrderPurchased(IAPLib.getPackOrderPurchased(SUtils.parseIntNumber(aVarU.B()), gVarJ.L()));
        RMS.saveLastVirtualCurrency(String.valueOf(gVarJ.s()));
        RMS.saveLastPrice(aVarU.A());
        RMS.saveLastProfileID(aVarU.C());
        RMS.saveLastCurrency(aVarU.v());
        RMS.saveVerificationInformation(aVarU);
        RMS.rms_SaveInfo(gVarJ.K(), 50);
        RMS.rms_SaveInfo(IAPLib.getItemJson(gVarJ.v()), 58);
        if (gVarJ.L().toLowerCase().equals(SUtils.getStringRS(R.string.k_ItemBundle).toLowerCase())) {
            RMS.saveLastPurchasedBundleInfo(IAPLib.GetBundleItemInfo(SUtils.parseIntNumber(aVarU.B()), gVarJ.L()));
            return true;
        }
        if (!gVarJ.L().toLowerCase().equals(SUtils.getStringRS(R.string.k_ItemSubscription).toLowerCase())) {
            return true;
        }
        RMS.saveLastPurchasedSubscriptionItemInfo(IAPLib.GetSubscriptionItemInfo(SUtils.parseIntNumber(aVarU.B()), gVarJ.L()));
        RMS.saveLastPurchasedSubscriptionRewardItemInfo(IAPLib.GetSubscriptionRewardItemInfo(SUtils.parseIntNumber(aVarU.B()), gVarJ.L()));
        return true;
    }

    public boolean G0(String str, boolean z) {
        String strRms_LoadInfo = RMS.rms_LoadInfo(35);
        if (strRms_LoadInfo != null && !strRms_LoadInfo.equals("")) {
            try {
                JSONArray jSONArray = new JSONArray(strRms_LoadInfo);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    if (jSONObject.getString("uid").equals(str)) {
                        if (z) {
                            RMS.saveLastVirtualCurrency(jSONObject.getString("amount"));
                            RMS.saveLastOfflineItems(jSONObject.getString("offline-items").split(";"));
                        }
                        ArrayList arrayList = new ArrayList();
                        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                            arrayList.add(jSONArray.getJSONObject(i3).toString());
                        }
                        arrayList.remove(i2);
                        RMS.rms_SaveInfo(new JSONArray((Collection) arrayList).toString(), 35);
                        return true;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    public boolean H0(String str) {
        return IAPLib.getShopProfile().j(str) != null;
    }

    public String I0() {
        JSONObject jSONObject = new JSONObject();
        try {
            String jADProperty = SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameGGI));
            String str = "0";
            if (jADProperty == null) {
                jADProperty = "0";
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerGGI), jADProperty);
            jSONObject.put(SUtils.getStringRS(R.string.k_headerGameCode), IAPLib.getDemoCode());
            String strIAP_GetUserCredential = Links.IAP_GetUserCredential();
            String str2 = "";
            if (TextUtils.isEmpty(strIAP_GetUserCredential) || strIAP_GetUserCredential.equalsIgnoreCase("null:null")) {
                strIAP_GetUserCredential = "";
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerCredential), strIAP_GetUserCredential);
            String strIAP_GetAnonymousCredential = Links.IAP_GetAnonymousCredential();
            if (TextUtils.isEmpty(strIAP_GetAnonymousCredential) || strIAP_GetAnonymousCredential.equalsIgnoreCase("null:null")) {
                strIAP_GetAnonymousCredential = "";
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerGLAnonCredentials), strIAP_GetAnonymousCredential);
            String strIAP_GetClientId = Links.IAP_GetClientId();
            if (!TextUtils.isEmpty(strIAP_GetClientId)) {
                str = strIAP_GetClientId;
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerFedClientID), str);
            String strIAP_GetDatacenter = Links.IAP_GetDatacenter();
            if (!TextUtils.isEmpty(strIAP_GetDatacenter)) {
                str2 = strIAP_GetDatacenter;
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerFederationDC), str2);
            if (IAPLib.Get_HDIDFV_Update() != 2) {
                jSONObject.put(SUtils.getStringRS(R.string.k_headerIMEI), Device.getDeviceId());
            }
            if (IAPLib.Get_HDIDFV_Update() != 0) {
                jSONObject.put(SUtils.getStringRS(R.string.k_headerHDIDFV), Device.getDeviceId("HDIDFV"));
            }
            jSONObject.put(SUtils.getStringRS(R.string.k_headerUserAgent), Device.getUserAgent());
            jSONObject.put(SUtils.getStringRS(R.string.k_headerBuildModel), Build.MODEL);
            jSONObject.put(SUtils.getStringRS(R.string.k_headerAccept), SUtils.getStringRS(R.string.k_acceptheaderec13));
            jSONObject.put(SUtils.getStringRS(R.string.k_headerSubno), Device.getLineNumber());
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean J0(String str) {
        com.gameloft.android2d.iap.utils.g gVarJ = IAPLib.getShopProfile().j(str);
        if (gVarJ == null) {
            return false;
        }
        return gVarJ.C().equals("1") || gVarJ.C().equals(MBridgeConstans.API_REUQEST_CATEGORY_APP);
    }

    public boolean K0(String str) {
        com.gameloft.android2d.iap.utils.g gVarJ = IAPLib.getShopProfile().j(str);
        return gVarJ != null && gVarJ.C().equals(MBridgeConstans.API_REUQEST_CATEGORY_APP);
    }

    void L0(Purchase purchase) {
        if (purchase.d() == 2) {
            IAPLib.setResult(3);
            IAPLib.setError(-1011);
            return;
        }
        if (TextUtils.isEmpty(purchase.a()) && TextUtils.isEmpty(purchase.b())) {
            TextUtils.isEmpty(purchase.e());
        }
        String strC = purchase.c();
        String str = purchase.g().get(0);
        IAPLib.SetPurchaseReceipts(strC);
        G0(str, true);
        RMS.saveSku(str);
        RMS.saveOrderID(purchase.b());
        RMS.saveNotifyID(purchase.e());
        RMS.saveDevPayload(purchase.a());
        new Thread(new i()).start();
    }

    public void M0() {
        if (S) {
            String str = this.U;
            if (str == null || str.equals("")) {
                R.j("inapp", this.Y);
                return;
            } else {
                R.h(this.U, K0(this.U) ? "subs" : "inapp", this.X);
                return;
            }
        }
        String googleDevKey = IAPLib.getGoogleDevKey();
        if (googleDevKey == null || googleDevKey == "") {
            IAPLib.setResult(3);
            IAPLib.setError(-5);
            throw new RuntimeException("The public key is invalid.");
        }
        IabHelper iabHelper = new IabHelper((Activity) SUtils.getContext(), googleDevKey);
        R = iabHelper;
        iabHelper.e(true);
        R.k(new e());
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public boolean X() {
        return false;
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public boolean Y() {
        String orderID = RMS.getOrderID();
        String notifyID = RMS.getNotifyID();
        if (orderID == null || orderID.equals("")) {
            return (notifyID == null || notifyID.equals("")) ? false : true;
        }
        return true;
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void a() {
        IAPLib.setResult(1);
        IAPLib.N = true;
        D0();
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void b() {
        if (IAPLib.getResult() == 10) {
            IAPLib.N = true;
            IAPLib.O = true;
            IAPLib.setResult(1);
            if (S) {
                R.j("inapp", this.Y);
                return;
            }
            String googleDevKey = IAPLib.getGoogleDevKey();
            if (googleDevKey == null || googleDevKey == "") {
                IAPLib.setResult(10);
                IAPLib.setError(0);
                throw new RuntimeException("The public key is invalid.");
            }
            IabHelper iabHelper = R;
            if (iabHelper != null) {
                iabHelper.c();
            }
            R = null;
            IabHelper iabHelper2 = new IabHelper((Activity) SUtils.getContext(), googleDevKey);
            R = iabHelper2;
            iabHelper2.e(true);
            R.k(new c());
        }
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void b0() {
        String orderID = RMS.getOrderID();
        if (TextUtils.isEmpty(orderID)) {
            orderID = RMS.getNotifyID();
        }
        if (TextUtils.isEmpty(orderID)) {
            return;
        }
        IABRequestHandler iABRequestHandler = IABRequestHandler.getInstance();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(SUtils.getStringRS(R.string.k_getParamItemDelivered));
        stringBuffer.append("|");
        stringBuffer.append(iABRequestHandler.e(orderID));
        stringBuffer.append("|");
        stringBuffer.append(SUtils.getStringRS(R.string.k_PortalIdAMP));
        IABRequestHandler.getInstance().b(SUtils.getStringRS(R.string.k_FreemiumDeliveryURL), stringBuffer.toString(), new j());
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void d() {
        try {
            IAPLib.checkHKServices();
        } catch (Exception unused) {
        }
        if (IAPLib.r0 == 1) {
            IAPLib.setResult(3);
            return;
        }
        if (S) {
            R.j("inapp", this.a0);
            return;
        }
        String googleDevKey = IAPLib.getGoogleDevKey();
        if (googleDevKey == null || googleDevKey == "") {
            IAPLib.setResult(3);
            throw new RuntimeException("The public key is invalid.");
        }
        IabHelper iabHelper = new IabHelper((Activity) SUtils.getContext(), googleDevKey);
        R = iabHelper;
        iabHelper.e(true);
        R.k(new l());
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void g() {
        String strU = super.U();
        this.U = strU;
        if (!K0(strU)) {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
            return;
        }
        try {
            IAPLib.checkHKServices();
        } catch (Exception unused) {
        }
        if (IAPLib.r0 == 1) {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
            return;
        }
        if (S) {
            R.j("subs", this.Z);
            return;
        }
        String googleDevKey = IAPLib.getGoogleDevKey();
        if (googleDevKey == null || googleDevKey == "") {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
            throw new RuntimeException("The public key is invalid.");
        }
        IabHelper iabHelper = new IabHelper((Activity) SUtils.getContext(), googleDevKey);
        R = iabHelper;
        iabHelper.e(true);
        R.k(new d());
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public int i(com.gameloft.android2d.iap.utils.g gVar) {
        String strEncode;
        String strIAP_GetCRMUrl = Links.IAP_GetCRMUrl();
        if (strIAP_GetCRMUrl == null || strIAP_GetCRMUrl.equals("")) {
            strIAP_GetCRMUrl = IAPLib.GetCRMUrl();
        }
        String strX = gVar.x();
        try {
            JSONObject jSONObject = new JSONObject(gVar.A());
            JSONArray jSONArray = jSONObject.getJSONArray("billing_methods");
            if (IAPLib.getShopProfile().G(strX) != null) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    jSONObject2.put("price", IAPLib.getShopProfile().o(strX));
                    jSONObject2.put("display_price", IAPLib.getShopProfile().q(strX));
                    jSONObject2.put("currency", IAPLib.getShopProfile().p(strX));
                }
                jSONObject.put("billing_methods", jSONArray);
                jSONObject.put("locale", IAPLib.getLanguage() + "_" + IAPLib.getShopProfile().p(strX).substring(0, 2) + "@currency=" + IAPLib.getShopProfile().p(strX));
            }
            strEncode = Base64.encode(jSONObject.toString().getBytes(b4.L));
        } catch (UnsupportedEncodingException | JSONException unused) {
            strEncode = "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(SUtils.getStringRS(R.string.k_getParamActionPreTransaction));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamShop));
        sb.append(o2.i.b);
        sb.append(SUtils.getStringRS(R.string.k_GoogleBillingCRM));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamToken));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetAccessToken()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamCInfo));
        sb.append(o2.i.b);
        sb.append(strEncode);
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFCId));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetClientId()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationDC));
        sb.append(o2.i.b);
        sb.append(Links.IAP_GetDatacenter() != null ? Links.IAP_GetDatacenter() : "");
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationOffline));
        sb.append(o2.i.b);
        sb.append(Links.IAP_FederationIsInitialized() ? "0" : "1");
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamFederationCredentials));
        sb.append(o2.i.b);
        sb.append(CRMUtils.EncodeUrlRFC3986(Links.IAP_GetUserCredential()));
        sb.append(o2.i.c);
        sb.append(SUtils.getStringRS(R.string.k_getParamDeviceId));
        sb.append(o2.i.b);
        sb.append(Links.IAP_GetDeviceId());
        String string = sb.toString();
        String injectedIGP = Utils.getInjectedIGP();
        if (!TextUtils.isEmpty(injectedIGP)) {
            string = string + o2.i.c + SUtils.getStringRS(R.string.k_getParamInjectedIGP) + o2.i.b + injectedIGP;
        }
        com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
        XPlayer xPlayer = new XPlayer(new Device(aVarU.E(), aVarU.D()), false);
        xPlayer.p(CRMUtils.NounceGenerator());
        xPlayer.l(strIAP_GetCRMUrl, string, 1);
        while (!xPlayer.h(SUtils.getStringRS(R.string.k_getParamActionPreTransaction))) {
            try {
                Thread.sleep(50L);
            } catch (Exception unused2) {
            }
        }
        if (xPlayer.g() == 0) {
            if (CRMUtils.CheckMD5Hash(xPlayer.e(), xPlayer.b(), xPlayer.c(), IAPLib.getIAPCRMKey())) {
                return 0;
            }
            IAPLib.setResult(3);
            IAPLib.setError(-5);
            return -1000;
        }
        if (xPlayer.g() != 403 && xPlayer.g() != 429) {
            IAPLib.setResult(3);
            IAPLib.setError(SUtils.MixIAPErrorCode(String.valueOf(xPlayer.g()), xPlayer.f("code")));
            return -1000;
        }
        IAP_CallBack.IAP_OnLimitRequestCallback(xPlayer.f("code"));
        IAPLib.SetLimitationMessage(xPlayer.f("message"));
        IAPLib.SetLimitationNextTransactionTime(xPlayer.f("next_transaction_time"));
        IAPLib.SetLimitationSecondsBeforeNextTransaction(xPlayer.f("seconds_before_next_transaction"));
        return xPlayer.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0354  */
    @Override // com.gameloft.android2d.iap.billings.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void j(java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, boolean r23) {
        /*
            Method dump skipped, instruction units count: 1119
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.j(java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void k(boolean z) {
        j("", "", "", "", z);
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void l() {
        boolean z = true;
        IAPLib.setResult(1);
        IABRequestHandler iABRequestHandler = IABRequestHandler.getInstance();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(SUtils.getStringRS(R.string.k_getParamContentPurchase));
        stringBuffer.append("|");
        stringBuffer.append(RMS.getLastContentID());
        stringBuffer.append("|");
        stringBuffer.append(iABRequestHandler.e(RMS.getLastPrice()));
        stringBuffer.append("|");
        stringBuffer.append(iABRequestHandler.e(RMS.getLastMoney()));
        stringBuffer.append("|");
        stringBuffer.append(IAPLib.getUnlockCode());
        stringBuffer.append("|");
        String orderID = RMS.getOrderID();
        String devPayload = RMS.getDevPayload();
        String notifyID = RMS.getNotifyID();
        if (TextUtils.isEmpty(orderID)) {
            stringBuffer.append("");
            stringBuffer.append("|");
        } else {
            stringBuffer.append(iABRequestHandler.e(orderID));
            stringBuffer.append("|");
        }
        stringBuffer.append(iABRequestHandler.e(notifyID));
        stringBuffer.append(o2.i.c);
        stringBuffer.append(SUtils.getStringRS(R.string.k_getParamConfirmDelivery));
        String injectedIGP = Utils.getInjectedIGP();
        if (!TextUtils.isEmpty(injectedIGP)) {
            stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamInjectedIGP) + o2.i.b + injectedIGP);
        }
        String property = System.getProperty("injectedserialkey");
        if (!TextUtils.isEmpty(property)) {
            stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamD) + o2.i.b + property);
        }
        if (TextUtils.isEmpty(orderID) && TextUtils.isEmpty(devPayload) && !TextUtils.isEmpty(notifyID)) {
            stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getRedeem) + o2.i.b + 1);
        } else {
            z = false;
        }
        iABRequestHandler.d(RMS.getLastVerifyURL(), stringBuffer.toString(), I0(), new k(z));
    }

    @Override // com.gameloft.android2d.iap.billings.a
    public void p(String str) {
        try {
            IAPLib.checkHKServices();
        } catch (Exception unused) {
        }
        if (IAPLib.r0 == 1) {
            IAPLib.setResult(3);
            IAPLib.setError(-21);
            return;
        }
        this.U = super.U();
        XPlayer.b = true;
        IAPLib.setResult(1);
        IAPLib.N = false;
        M0();
    }
}
