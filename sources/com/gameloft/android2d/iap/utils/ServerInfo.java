package com.gameloft.android2d.iap.utils;

import android.app.Activity;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.Links;
import com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.json.JSONObject;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes2.dex */
public class ServerInfo {
    private static boolean a;
    private static IabHelper b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f2887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SAXParserFactory f2888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SAXParser f2889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private XMLReader f2890g;
    private f h;
    private e i;
    Device k;
    XPlayer l;
    private InputSource j = null;
    private String m = null;
    private String n = null;
    private h o = null;
    SkuDetailsResponseListener p = new b();
    SkuDetailsResponseListener q = new c();

    class a implements IabHelper.j {
        final /* synthetic */ List a;
        final /* synthetic */ SkuDetailsResponseListener b;
        final /* synthetic */ SkuDetailsResponseListener c;

        a(List list, SkuDetailsResponseListener skuDetailsResponseListener, SkuDetailsResponseListener skuDetailsResponseListener2) {
            this.a = list;
            this.b = skuDetailsResponseListener;
            this.c = skuDetailsResponseListener2;
        }

        @Override // com.gameloft.android2d.iap.billings.googleplaybilling.IabHelper.j
        public void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar) {
            if (!aVar.c()) {
                boolean unused = ServerInfo.c = true;
                boolean unused2 = ServerInfo.f2887d = true;
            } else {
                boolean unused3 = ServerInfo.a = true;
                ServerInfo.b.i(this.a, "inapp", this.b);
                ServerInfo.b.i(this.a, "subs", this.c);
            }
        }
    }

    class b implements SkuDetailsResponseListener {
        b() {
        }

        @Override // com.android.billingclient.api.SkuDetailsResponseListener
        public void c(BillingResult billingResult, List<SkuDetails> list) {
            if (billingResult.b() != 0) {
                boolean unused = ServerInfo.c = true;
                return;
            }
            for (SkuDetails skuDetails : list) {
                IAPLib.getShopProfile().k0(skuDetails.d(), skuDetails);
            }
            boolean unused2 = ServerInfo.c = true;
        }
    }

    class c implements SkuDetailsResponseListener {
        c() {
        }

        @Override // com.android.billingclient.api.SkuDetailsResponseListener
        public void c(BillingResult billingResult, List<SkuDetails> list) {
            if (billingResult.b() != 0) {
                boolean unused = ServerInfo.f2887d = true;
                return;
            }
            for (SkuDetails skuDetails : list) {
                IAPLib.getShopProfile().k0(skuDetails.d(), skuDetails);
            }
            boolean unused2 = ServerInfo.f2887d = true;
        }
    }

    public ServerInfo() {
        try {
            if (!IAPLib.IsUseWPIAP()) {
                SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
                this.f2888e = sAXParserFactoryNewInstance;
                SAXParser sAXParserNewSAXParser = sAXParserFactoryNewInstance.newSAXParser();
                this.f2889f = sAXParserNewSAXParser;
                this.f2890g = sAXParserNewSAXParser.getXMLReader();
            }
            this.h = new f();
            this.i = new e();
            if (!IAPLib.IsUseWPIAP()) {
                this.f2890g.setContentHandler(this.h);
            }
            this.k = new Device();
            this.l = new XPlayer(this.k, true, SUtils.getStringRS(R.string.k_GZipType));
        } catch (Exception unused) {
        }
    }

    private void g(InputSource inputSource) {
        try {
            this.f2890g.parse(inputSource);
            this.o = this.h.a();
        } catch (Exception unused) {
        }
    }

    public e a() {
        return this.i;
    }

    public h b() {
        return this.o;
    }

    public boolean c(String str) {
        IAPLib.c0 = false;
        f(Links.IAP_GetCRMFeed());
        if (!IAPLib.getShopProfile().I()) {
            if (Device.hasConnectivity()) {
                RMS.rms_SaveInfo(Device.getSimOperator1() + "", 37);
            }
            IAPLib.getShopProfile().L();
            IAPLib.getShopProfile().K();
            IAPLib.getShopProfile().N();
            IAPLib.getShopProfile().l0(SUtils.getStringRS(R.string.k_ItemCash).toLowerCase(), SUtils.getStringRS(R.string.k_ItemCoin).toLowerCase());
            if (!IAPLib.q) {
                e();
                c = false;
                f2887d = false;
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    if ((c && f2887d) || System.currentTimeMillis() - jCurrentTimeMillis >= 4000) {
                        break;
                    }
                    try {
                        Thread.sleep(20L);
                    } catch (Exception unused) {
                    }
                }
            } else {
                return SUtils.downloadImageItems() && SUtils.LoadImageData();
            }
        }
        return true;
    }

    public void d() {
        InputSource inputSource = this.j;
        if (inputSource != null) {
            this.m = null;
            g(inputSource);
            this.j = null;
            h shopProfile = IAPLib.getShopProfile();
            if (shopProfile.I()) {
                return;
            }
            shopProfile.N();
            shopProfile.l0(SUtils.getStringRS(R.string.k_ItemCash).toLowerCase(), SUtils.getStringRS(R.string.k_ItemCoin).toLowerCase());
        }
    }

    void e() {
        ArrayList arrayList = new ArrayList();
        Hashtable<String, Hashtable<Integer, g>> hashtableF = IAPLib.getShopProfile().f();
        Enumeration<String> enumerationKeys = hashtableF.keys();
        if (enumerationKeys != null) {
            while (enumerationKeys.hasMoreElements()) {
                String strNextElement = enumerationKeys.nextElement();
                if (strNextElement != null && !strNextElement.equals("")) {
                    Enumeration<g> enumerationElements = hashtableF.get(strNextElement).elements();
                    while (enumerationElements.hasMoreElements()) {
                        g gVarNextElement = enumerationElements.nextElement();
                        if (gVarNextElement != null) {
                            arrayList.add(gVarNextElement.x());
                            if (gVarNextElement.f() != null) {
                                arrayList.add(gVarNextElement.f());
                            }
                        }
                    }
                }
            }
        }
        h(arrayList, this.p, this.q);
    }

    public void f(JSONObject jSONObject) {
        try {
            this.i.c(jSONObject);
            this.o = this.i.b();
        } catch (Exception unused) {
        }
    }

    public void h(List<String> list, SkuDetailsResponseListener skuDetailsResponseListener, SkuDetailsResponseListener skuDetailsResponseListener2) {
        if (a) {
            b.i(list, "inapp", skuDetailsResponseListener);
            b.i(list, "subs", skuDetailsResponseListener2);
            return;
        }
        String googleDevKey = IAPLib.getGoogleDevKey();
        if (googleDevKey == null || googleDevKey == "") {
            c = true;
            f2887d = true;
        } else {
            IabHelper iabHelper = new IabHelper((Activity) SUtils.getContext(), googleDevKey);
            b = iabHelper;
            iabHelper.e(true);
            b.k(new a(list, skuDetailsResponseListener, skuDetailsResponseListener2));
        }
    }
}
