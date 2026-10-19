package com.gameloft.android2d.iap.billings.googleplaybilling;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.utils.SUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class IabHelper implements PurchasesUpdatedListener {
    private static HashMap<String, SkuDetails> a = new HashMap<>();
    boolean b = false;
    String c = "IAP-IabHelper";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f2866d = "IAP-IabHelper";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2867e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2868f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f2869g = false;
    String h = "";
    Context i;
    private BillingClient j;
    String k;
    h l;

    class a implements BillingClientStateListener {
        final /* synthetic */ j a;

        a(j jVar) {
            this.a = jVar;
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void b(BillingResult billingResult) {
            IabHelper.this.f("Billing service onBillingSetupFinished.");
            if (billingResult.b() == 0) {
                IabHelper.this.f("Billing service onBillingSetupFinished. startConnection BillingResponseCode.OK");
                j jVar = this.a;
                if (jVar != null) {
                    jVar.a(new com.gameloft.android2d.iap.billings.googleplaybilling.a(0, "Setup successful."));
                }
                IabHelper.this.f2867e = true;
                return;
            }
            IabHelper.this.f("Billing service onBillingSetupFinished. startConnection BillingResponseCode Fail " + billingResult.b() + " DBG message " + billingResult.a());
            j jVar2 = this.a;
            if (jVar2 != null) {
                jVar2.a(new com.gameloft.android2d.iap.billings.googleplaybilling.a(billingResult.b(), "Setup not successful."));
            }
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingServiceDisconnected() {
            IabHelper.this.f("[startSetup] Billing service disconnected.");
            IabHelper.this.f2867e = false;
            IAPLib.setResult(3);
            IAPLib.setError(-1);
        }
    }

    class b implements SkuDetailsResponseListener {
        final /* synthetic */ h a;
        final /* synthetic */ String b;

        b(h hVar, String str) {
            this.a = hVar;
            this.b = str;
        }

        @Override // com.android.billingclient.api.SkuDetailsResponseListener
        public void c(BillingResult billingResult, List<SkuDetails> list) {
            if (billingResult.b() != 0) {
                h hVar = this.a;
                if (hVar != null) {
                    hVar.b(billingResult.b());
                    return;
                }
                return;
            }
            for (SkuDetails skuDetails : list) {
                IabHelper.a.put(skuDetails.d(), skuDetails);
            }
            IabHelper.this.g(this.b, this.a);
        }
    }

    class c implements AcknowledgePurchaseResponseListener {
        final /* synthetic */ f a;
        final /* synthetic */ Purchase b;

        c(f fVar, Purchase purchase) {
            this.a = fVar;
            this.b = purchase;
        }

        @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
        public void e(BillingResult billingResult) {
            f fVar = this.a;
            if (fVar != null) {
                fVar.a(billingResult, this.b);
            }
        }
    }

    class d implements ConsumeResponseListener {
        final /* synthetic */ g a;
        final /* synthetic */ Purchase b;

        d(g gVar, Purchase purchase) {
            this.a = gVar;
            this.b = purchase;
        }

        @Override // com.android.billingclient.api.ConsumeResponseListener
        public void g(BillingResult billingResult, String str) {
            g gVar = this.a;
            if (gVar != null) {
                gVar.a(billingResult, str, this.b);
            }
        }
    }

    class e implements PurchasesResponseListener {
        final /* synthetic */ i a;

        e(i iVar) {
            this.a = iVar;
        }

        @Override // com.android.billingclient.api.PurchasesResponseListener
        public void a(BillingResult billingResult, List<Purchase> list) {
            i iVar = this.a;
            if (iVar != null) {
                iVar.a(billingResult, list);
            }
        }
    }

    public interface f {
        void a(BillingResult billingResult, Purchase purchase);
    }

    public interface g {
        void a(BillingResult billingResult, String str, Purchase purchase);
    }

    public interface h {
        void a(BillingResult billingResult, List<Purchase> list);

        void b(int i);
    }

    public interface i {
        void a(BillingResult billingResult, List<Purchase> list);
    }

    public interface j {
        void a(com.gameloft.android2d.iap.billings.googleplaybilling.a aVar);
    }

    public IabHelper(Context context, String str) {
        this.k = null;
        this.i = context.getApplicationContext();
        this.k = str;
        f("IAB helper created.");
    }

    public static String getResponseDesc(int i2) {
        String[] strArrSplit = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] strArrSplit2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i2 > -1000) {
            if (i2 >= 0 && i2 < strArrSplit.length) {
                return strArrSplit[i2];
            }
            return String.valueOf(i2) + ":Unknown";
        }
        int i3 = (-1000) - i2;
        if (i3 >= 0 && i3 < strArrSplit2.length) {
            return strArrSplit2[i3];
        }
        return String.valueOf(i2) + ":Unknown IAB Helper Error";
    }

    public void a(Purchase purchase, String str, f fVar) {
        if (purchase.h() && purchase.toString().contains("acknowledged")) {
            return;
        }
        this.j.a(AcknowledgePurchaseParams.newBuilder().b(purchase.e()).a(), new c(fVar, purchase));
    }

    public void b(Purchase purchase, String str, g gVar) {
        this.j.b(ConsumeParams.newBuilder().b(purchase.e()).a(), new d(gVar, purchase));
    }

    public void c() {
        f("Disposing.");
        this.f2867e = false;
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void d(BillingResult billingResult, List<Purchase> list) {
        h hVar = this.l;
        if (hVar != null) {
            hVar.a(billingResult, list);
        }
    }

    public void e(boolean z) {
        this.b = z;
    }

    void f(String str) {
    }

    void g(String str, h hVar) {
        this.l = hVar;
        SkuDetails skuDetails = a.get(str);
        if (skuDetails != null) {
            this.j.c((Activity) SUtils.getContext(), BillingFlowParams.newBuilder().b(skuDetails).a());
        } else {
            f("[purchaseRequest] error ITEM_UNAVAILABLE");
            IAPLib.setResult(3);
            IAPLib.setError(4);
        }
    }

    void h(String str, String str2, h hVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        SkuDetailsParams.Builder builderNewBuilder = SkuDetailsParams.newBuilder();
        builderNewBuilder.b(arrayList).c(str2);
        this.j.e(builderNewBuilder.a(), new b(hVar, str));
    }

    public void i(List<String> list, String str, SkuDetailsResponseListener skuDetailsResponseListener) {
        SkuDetailsParams.Builder builderNewBuilder = SkuDetailsParams.newBuilder();
        builderNewBuilder.b(list);
        builderNewBuilder.b(list).c(str);
        this.j.e(builderNewBuilder.a(), skuDetailsResponseListener);
    }

    public void j(String str, i iVar) {
        this.j.d(QueryPurchasesParams.newBuilder().b(str).a(), new e(iVar));
    }

    public void k(j jVar) {
        if (this.f2867e) {
            f("[startSetup] Service already connected");
            return;
        }
        f("Starting in-app billing setup. startConnection");
        BillingClient billingClientA = BillingClient.newBuilder(this.i).b().c(this).a();
        this.j = billingClientA;
        billingClientA.f(new a(jVar));
    }
}
