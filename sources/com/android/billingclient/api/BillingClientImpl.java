package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.internal.play_billing.zzfl;
import com.google.android.gms.internal.play_billing.zzfm;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
class BillingClientImpl extends BillingClient {
    private volatile int a;
    private final String b;
    private final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile zzh f143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzar f145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile com.google.android.gms.internal.play_billing.zze f146g;
    private volatile zzaf h;
    private boolean i;
    private boolean j;
    private int k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private zzbe x;
    private boolean y;
    private ExecutorService z;

    @AnyThread
    private BillingClientImpl(Context context, zzbe zzbeVar, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, @Nullable AlternativeBillingListener alternativeBillingListener, @Nullable zzar zzarVar) {
        this.a = 0;
        this.c = new Handler(Looper.getMainLooper());
        this.k = 0;
        this.b = str;
        g(context, purchasesUpdatedListener, zzbeVar, alternativeBillingListener, str, null);
    }

    @AnyThread
    BillingClientImpl(@Nullable String str, zzbe zzbeVar, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable AlternativeBillingListener alternativeBillingListener, @Nullable zzar zzarVar) {
        this(context, zzbeVar, purchasesUpdatedListener, z(), null, alternativeBillingListener, null);
    }

    @AnyThread
    BillingClientImpl(@Nullable String str, zzbe zzbeVar, Context context, zzaz zzazVar, @Nullable zzar zzarVar) {
        this.a = 0;
        this.c = new Handler(Looper.getMainLooper());
        this.k = 0;
        this.b = z();
        this.f144e = context.getApplicationContext();
        zzfl zzflVarZzv = zzfm.zzv();
        zzflVarZzv.zzj(z());
        zzflVarZzv.zzi(this.f144e.getPackageName());
        this.f145f = new zzaw(this.f144e, (zzfm) zzflVarZzv.zzc());
        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f143d = new zzh(this.f144e, null, this.f145f);
        this.x = zzbeVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final Future A(Callable callable, long j, @Nullable final Runnable runnable, Handler handler) {
        if (this.z == null) {
            this.z = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzb.zza, new zzab(this));
        }
        try {
            final Future futureSubmit = this.z.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzw
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    Runnable runnable2 = runnable;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Async task throws exception!", e2);
            return null;
        }
    }

    private final void B(String str, final PurchasesResponseListener purchasesResponseListener) {
        if (!h()) {
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(2, 9, billingResult));
            purchasesResponseListener.a(billingResult, com.google.android.gms.internal.play_billing.zzu.zzk());
            return;
        }
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Please provide a valid product type.");
            zzar zzarVar2 = this.f145f;
            BillingResult billingResult2 = zzat.f176g;
            zzarVar2.b(zzaq.zza(50, 9, billingResult2));
            purchasesResponseListener.a(billingResult2, com.google.android.gms.internal.play_billing.zzu.zzk());
            return;
        }
        if (A(new zzy(this, str, purchasesResponseListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new Runnable() { // from class: com.android.billingclient.api.zzu
            @Override // java.lang.Runnable
            public final void run() {
                this.a.t(purchasesResponseListener);
            }
        }, w()) == null) {
            BillingResult billingResultY = y();
            this.f145f.b(zzaq.zza(25, 9, billingResultY));
            purchasesResponseListener.a(billingResultY, com.google.android.gms.internal.play_billing.zzu.zzk());
        }
    }

    static /* synthetic */ zzai H(BillingClientImpl billingClientImpl, String str) {
        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Querying purchase history, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle bundleZzc = com.google.android.gms.internal.play_billing.zzb.zzc(billingClientImpl.n, billingClientImpl.v, true, false, billingClientImpl.b);
        String string = null;
        while (billingClientImpl.l) {
            try {
                Bundle bundleZzh = billingClientImpl.f146g.zzh(6, billingClientImpl.f144e.getPackageName(), str, string, bundleZzc);
                zzbk zzbkVarA = zzbl.a(bundleZzh, "BillingClient", "getPurchaseHistory()");
                BillingResult billingResultA = zzbkVarA.a();
                if (billingResultA != zzat.l) {
                    billingClientImpl.f145f.b(zzaq.zza(zzbkVarA.b(), 11, billingResultA));
                    return new zzai(billingResultA, null);
                }
                ArrayList<String> stringArrayList = bundleZzh.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzh.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzh.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str2 = stringArrayList2.get(i);
                    String str3 = stringArrayList3.get(i);
                    com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Purchase record found for sku : ".concat(String.valueOf(stringArrayList.get(i))));
                    try {
                        PurchaseHistoryRecord purchaseHistoryRecord = new PurchaseHistoryRecord(str2, str3);
                        if (TextUtils.isEmpty(purchaseHistoryRecord.b())) {
                            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchaseHistoryRecord);
                    } catch (JSONException e2) {
                        com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got an exception trying to decode the purchase!", e2);
                        zzar zzarVar = billingClientImpl.f145f;
                        BillingResult billingResult = zzat.j;
                        zzarVar.b(zzaq.zza(51, 11, billingResult));
                        return new zzai(billingResult, null);
                    }
                }
                if (z) {
                    billingClientImpl.f145f.b(zzaq.zza(26, 11, zzat.j));
                }
                string = bundleZzh.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new zzai(zzat.l, arrayList);
                }
            } catch (RemoteException e3) {
                com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got exception trying to get purchase history, try to reconnect", e3);
                zzar zzarVar2 = billingClientImpl.f145f;
                BillingResult billingResult2 = zzat.m;
                zzarVar2.b(zzaq.zza(59, 11, billingResult2));
                return new zzai(billingResult2, null);
            }
        }
        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "getPurchaseHistory is not supported on current device");
        return new zzai(zzat.q, null);
    }

    private void g(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzbe zzbeVar, @Nullable AlternativeBillingListener alternativeBillingListener, String str, @Nullable zzar zzarVar) {
        this.f144e = context.getApplicationContext();
        zzfl zzflVarZzv = zzfm.zzv();
        zzflVarZzv.zzj(str);
        zzflVarZzv.zzi(this.f144e.getPackageName());
        if (zzarVar != null) {
            this.f145f = zzarVar;
        } else {
            this.f145f = new zzaw(this.f144e, (zzfm) zzflVarZzv.zzc());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f143d = new zzh(this.f144e, purchasesUpdatedListener, alternativeBillingListener, this.f145f);
        this.x = zzbeVar;
        this.y = alternativeBillingListener != null;
    }

    static /* synthetic */ zzbj v(BillingClientImpl billingClientImpl, String str, int i) {
        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        Bundle bundleZzc = com.google.android.gms.internal.play_billing.zzb.zzc(billingClientImpl.n, billingClientImpl.v, true, false, billingClientImpl.b);
        List list = null;
        String string = null;
        while (true) {
            try {
                Bundle bundleZzj = billingClientImpl.n ? billingClientImpl.f146g.zzj(z != billingClientImpl.v ? 9 : 19, billingClientImpl.f144e.getPackageName(), str, string, bundleZzc) : billingClientImpl.f146g.zzi(3, billingClientImpl.f144e.getPackageName(), str, string);
                zzbk zzbkVarA = zzbl.a(bundleZzj, "BillingClient", "getPurchase()");
                BillingResult billingResultA = zzbkVarA.a();
                if (billingResultA != zzat.l) {
                    billingClientImpl.f145f.b(zzaq.zza(zzbkVarA.b(), 9, billingResultA));
                    return new zzbj(billingResultA, list);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z2 = false;
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str2 = stringArrayList2.get(i2);
                    String str3 = stringArrayList3.get(i2);
                    com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i2))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.e())) {
                            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "BUG: empty/null token!");
                            z2 = true;
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e2) {
                        com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got an exception trying to decode the purchase!", e2);
                        zzar zzarVar = billingClientImpl.f145f;
                        BillingResult billingResult = zzat.j;
                        zzarVar.b(zzaq.zza(51, 9, billingResult));
                        return new zzbj(billingResult, null);
                    }
                }
                if (z2) {
                    billingClientImpl.f145f.b(zzaq.zza(26, 9, zzat.j));
                }
                string = bundleZzj.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new zzbj(zzat.l, arrayList);
                }
                list = null;
                z = true;
            } catch (Exception e3) {
                zzar zzarVar2 = billingClientImpl.f145f;
                BillingResult billingResult2 = zzat.m;
                zzarVar2.b(zzaq.zza(52, 9, billingResult2));
                com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got exception trying to get purchasesm try to reconnect", e3);
                return new zzbj(billingResult2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler w() {
        return Looper.myLooper() == null ? this.c : new Handler(Looper.myLooper());
    }

    private final BillingResult x(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.c.post(new Runnable() { // from class: com.android.billingclient.api.zzx
            @Override // java.lang.Runnable
            public final void run() {
                this.a.p(billingResult);
            }
        });
        return billingResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult y() {
        return (this.a == 0 || this.a == 3) ? zzat.m : zzat.j;
    }

    @SuppressLint({"PrivateApi"})
    private static String z() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "6.0.1";
        }
    }

    final /* synthetic */ Bundle E(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        return this.f146g.zzg(i, this.f144e.getPackageName(), str, str2, null, bundle);
    }

    final /* synthetic */ Bundle F(String str, String str2) throws Exception {
        return this.f146g.zzf(3, this.f144e.getPackageName(), str, str2, null);
    }

    final /* synthetic */ Object L(AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) throws Exception {
        try {
            com.google.android.gms.internal.play_billing.zze zzeVar = this.f146g;
            String packageName = this.f144e.getPackageName();
            String strA = acknowledgePurchaseParams.a();
            String str = this.b;
            Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str);
            Bundle bundleZzd = zzeVar.zzd(9, packageName, strA, bundle);
            int iZzb = com.google.android.gms.internal.play_billing.zzb.zzb(bundleZzd, "BillingClient");
            String strZzf = com.google.android.gms.internal.play_billing.zzb.zzf(bundleZzd, "BillingClient");
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.c(iZzb);
            builderNewBuilder.b(strZzf);
            acknowledgePurchaseResponseListener.e(builderNewBuilder.a());
            return null;
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Error acknowledge purchase!", e2);
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(28, 3, billingResult));
            acknowledgePurchaseResponseListener.e(billingResult);
            return null;
        }
    }

    final /* synthetic */ Object M(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Exception {
        int iZza;
        String strZzf;
        String strA = consumeParams.a();
        try {
            com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Consuming purchase with token: " + strA);
            if (this.n) {
                com.google.android.gms.internal.play_billing.zze zzeVar = this.f146g;
                String packageName = this.f144e.getPackageName();
                boolean z = this.n;
                String str = this.b;
                Bundle bundle = new Bundle();
                if (z) {
                    bundle.putString("playBillingLibraryVersion", str);
                }
                Bundle bundleZze = zzeVar.zze(9, packageName, strA, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzf = com.google.android.gms.internal.play_billing.zzb.zzf(bundleZze, "BillingClient");
            } else {
                iZza = this.f146g.zza(3, this.f144e.getPackageName(), strA);
                strZzf = "";
            }
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.c(iZza);
            builderNewBuilder.b(strZzf);
            BillingResult billingResultA = builderNewBuilder.a();
            if (iZza == 0) {
                com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.g(billingResultA, strA);
                return null;
            }
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Error consuming purchase with token. Response code: " + iZza);
            this.f145f.b(zzaq.zza(23, 4, billingResultA));
            consumeResponseListener.g(billingResultA, strA);
            return null;
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Error consuming purchase!", e2);
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(29, 4, billingResult));
            consumeResponseListener.g(billingResult, strA);
            return null;
        }
    }

    final /* synthetic */ Object N(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) throws Exception {
        String strZzf;
        Object obj;
        int i;
        Object obj2;
        ArrayList arrayList = new ArrayList();
        String strB = queryProductDetailsParams.b();
        com.google.android.gms.internal.play_billing.zzu zzuVarA = queryProductDetailsParams.a();
        int size = zzuVarA.size();
        int i2 = 0;
        while (true) {
            strZzf = "Error trying to decode SkuDetails.";
            if (i2 >= size) {
                obj = null;
                strZzf = "";
                i = 0;
                break;
            }
            int i3 = i2 + 20;
            ArrayList arrayList2 = new ArrayList(zzuVarA.subList(i2, i3 > size ? size : i3));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                arrayList3.add(((QueryProductDetailsParams.Product) arrayList2.get(i4)).a());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.b);
            try {
                com.google.android.gms.internal.play_billing.zze zzeVar = this.f146g;
                int i5 = true != this.w ? 17 : 20;
                String packageName = this.f144e.getPackageName();
                String str = this.b;
                if (TextUtils.isEmpty(null)) {
                    try {
                        this.f144e.getPackageName();
                    } catch (Exception e2) {
                        e = e2;
                        obj = null;
                        i = 6;
                        com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                        this.f145f.b(zzaq.zza(43, 7, zzat.j));
                        strZzf = "An internal error occurred.";
                        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                        builderNewBuilder.c(i);
                        builderNewBuilder.b(strZzf);
                        productDetailsResponseListener.a(builderNewBuilder.a(), arrayList);
                        return obj;
                    }
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("playBillingLibraryVersion", str);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                com.google.android.gms.internal.play_billing.zzu zzuVar = zzuVarA;
                int size3 = arrayList2.size();
                int i6 = size;
                int i7 = 0;
                boolean z = false;
                boolean z2 = false;
                while (i7 < size3) {
                    QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) arrayList2.get(i7);
                    ArrayList arrayList6 = arrayList2;
                    try {
                        arrayList4.add(null);
                        z2 |= !TextUtils.isEmpty(null);
                        String strB2 = product.b();
                        int i8 = size3;
                        if (strB2.equals("first_party")) {
                            try {
                                com.google.android.gms.internal.play_billing.zzm.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                                arrayList5.add(null);
                                z = true;
                            } catch (Exception e3) {
                                e = e3;
                                obj = null;
                                i = 6;
                                com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                                this.f145f.b(zzaq.zza(43, 7, zzat.j));
                                strZzf = "An internal error occurred.";
                                BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
                                builderNewBuilder2.c(i);
                                builderNewBuilder2.b(strZzf);
                                productDetailsResponseListener.a(builderNewBuilder2.a(), arrayList);
                                return obj;
                            }
                        }
                        i7++;
                        size3 = i8;
                        arrayList2 = arrayList6;
                    } catch (Exception e4) {
                        e = e4;
                        obj = null;
                    }
                }
                if (z2) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z) {
                    obj2 = null;
                    if (!TextUtils.isEmpty(null)) {
                        bundle2.putString("accountName", null);
                    }
                } else {
                    obj2 = null;
                }
                int i9 = i5;
                obj = obj2;
                i = 6;
                try {
                    Bundle bundleZzl = zzeVar.zzl(i9, packageName, strB, bundle, bundle2);
                    if (bundleZzl == null) {
                        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "queryProductDetailsAsync got empty product details response.");
                        zzar zzarVar = this.f145f;
                        BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
                        builderNewBuilder3.c(4);
                        builderNewBuilder3.b("Item is unavailable for purchase.");
                        zzarVar.b(zzaq.zza(44, 7, builderNewBuilder3.a()));
                        break;
                    }
                    if (bundleZzl.containsKey("DETAILS_LIST")) {
                        ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "queryProductDetailsAsync got null response list");
                            this.f145f.b(zzaq.zza(46, 7, zzat.B));
                            break;
                        }
                        for (int i10 = 0; i10 < stringArrayList.size(); i10++) {
                            try {
                                ProductDetails productDetails = new ProductDetails(stringArrayList.get(i10));
                                com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Got product details: ".concat(productDetails.toString()));
                                arrayList.add(productDetails);
                            } catch (JSONException e5) {
                                com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e5);
                                zzar zzarVar2 = this.f145f;
                                BillingResult.Builder builderNewBuilder4 = BillingResult.newBuilder();
                                builderNewBuilder4.c(6);
                                builderNewBuilder4.b("Error trying to decode SkuDetails.");
                                zzarVar2.b(zzaq.zza(47, 7, builderNewBuilder4.a()));
                            }
                        }
                        i2 = i3;
                        zzuVarA = zzuVar;
                        size = i6;
                    } else {
                        int iZzb = com.google.android.gms.internal.play_billing.zzb.zzb(bundleZzl, "BillingClient");
                        strZzf = com.google.android.gms.internal.play_billing.zzb.zzf(bundleZzl, "BillingClient");
                        if (iZzb != 0) {
                            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb);
                            this.f145f.b(zzaq.zza(23, 7, zzat.a(iZzb, strZzf)));
                            i = iZzb;
                        } else {
                            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                            zzar zzarVar3 = this.f145f;
                            BillingResult.Builder builderNewBuilder5 = BillingResult.newBuilder();
                            builderNewBuilder5.c(6);
                            builderNewBuilder5.b(strZzf);
                            zzarVar3.b(zzaq.zza(45, 7, builderNewBuilder5.a()));
                        }
                    }
                } catch (Exception e6) {
                    e = e6;
                    com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                    this.f145f.b(zzaq.zza(43, 7, zzat.j));
                    strZzf = "An internal error occurred.";
                }
            } catch (Exception e7) {
                e = e7;
                obj = null;
            }
        }
        strZzf = "Item is unavailable for purchase.";
        i = 4;
        BillingResult.Builder builderNewBuilder22 = BillingResult.newBuilder();
        builderNewBuilder22.c(i);
        builderNewBuilder22.b(strZzf);
        productDetailsResponseListener.a(builderNewBuilder22.a(), arrayList);
        return obj;
    }

    final /* synthetic */ Object O(String str, List list, String str2, SkuDetailsResponseListener skuDetailsResponseListener) throws Exception {
        String strZzf;
        int i;
        Bundle bundleZzk;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (true) {
            strZzf = "Error trying to decode SkuDetails.";
            if (i2 >= size) {
                strZzf = "";
                i = 0;
                break;
            }
            int i3 = i2 + 20;
            ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i2, i3 > size ? size : i3));
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
            bundle.putString("playBillingLibraryVersion", this.b);
            try {
                if (this.o) {
                    com.google.android.gms.internal.play_billing.zze zzeVar = this.f146g;
                    String packageName = this.f144e.getPackageName();
                    int i4 = this.k;
                    String str3 = this.b;
                    Bundle bundle2 = new Bundle();
                    if (i4 >= 9) {
                        bundle2.putString("playBillingLibraryVersion", str3);
                    }
                    if (i4 >= 9) {
                        bundle2.putBoolean("enablePendingPurchases", true);
                    }
                    bundleZzk = zzeVar.zzl(10, packageName, str, bundle, bundle2);
                } else {
                    bundleZzk = this.f146g.zzk(3, this.f144e.getPackageName(), str, bundle);
                }
                if (bundleZzk == null) {
                    com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "querySkuDetailsAsync got null sku details list");
                    this.f145f.b(zzaq.zza(44, 8, zzat.B));
                    break;
                }
                if (bundleZzk.containsKey("DETAILS_LIST")) {
                    ArrayList<String> stringArrayList = bundleZzk.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "querySkuDetailsAsync got null response list");
                        this.f145f.b(zzaq.zza(46, 8, zzat.B));
                        break;
                    }
                    for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                        try {
                            SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i5));
                            com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                            arrayList.add(skuDetails);
                        } catch (JSONException e2) {
                            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Got a JSON exception trying to decode SkuDetails.", e2);
                            this.f145f.b(zzaq.zza(47, 8, zzat.a(6, "Error trying to decode SkuDetails.")));
                            arrayList = null;
                            i = 6;
                            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                            builderNewBuilder.c(i);
                            builderNewBuilder.b(strZzf);
                            skuDetailsResponseListener.c(builderNewBuilder.a(), arrayList);
                            return null;
                        }
                    }
                    i2 = i3;
                } else {
                    int iZzb = com.google.android.gms.internal.play_billing.zzb.zzb(bundleZzk, "BillingClient");
                    strZzf = com.google.android.gms.internal.play_billing.zzb.zzf(bundleZzk, "BillingClient");
                    if (iZzb != 0) {
                        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "getSkuDetails() failed. Response code: " + iZzb);
                        this.f145f.b(zzaq.zza(23, 8, zzat.a(iZzb, strZzf)));
                        i = iZzb;
                    } else {
                        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                        this.f145f.b(zzaq.zza(45, 8, zzat.a(6, strZzf)));
                    }
                }
            } catch (Exception e3) {
                com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "querySkuDetailsAsync got a remote exception (try to reconnect).", e3);
                this.f145f.b(zzaq.zza(43, 8, zzat.m));
                i = -1;
                strZzf = "Service connection is disconnected.";
                arrayList = null;
            }
        }
        strZzf = "Item is unavailable for purchase.";
        arrayList = null;
        i = 4;
        BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
        builderNewBuilder2.c(i);
        builderNewBuilder2.b(strZzf);
        skuDetailsResponseListener.c(builderNewBuilder2.a(), arrayList);
        return null;
    }

    final /* synthetic */ Object P(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        this.f146g.zzm(12, this.f144e.getPackageName(), bundle, new zzah(new WeakReference(activity), resultReceiver, null));
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void a(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (!h()) {
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(2, 3, billingResult));
            acknowledgePurchaseResponseListener.e(billingResult);
            return;
        }
        if (TextUtils.isEmpty(acknowledgePurchaseParams.a())) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Please provide a valid purchase token.");
            zzar zzarVar2 = this.f145f;
            BillingResult billingResult2 = zzat.i;
            zzarVar2.b(zzaq.zza(26, 3, billingResult2));
            acknowledgePurchaseResponseListener.e(billingResult2);
            return;
        }
        if (!this.n) {
            zzar zzarVar3 = this.f145f;
            BillingResult billingResult3 = zzat.b;
            zzarVar3.b(zzaq.zza(27, 3, billingResult3));
            acknowledgePurchaseResponseListener.e(billingResult3);
            return;
        }
        if (A(new Callable() { // from class: com.android.billingclient.api.zzp
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.a.L(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
                return null;
            }
        }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new Runnable() { // from class: com.android.billingclient.api.zzq
            @Override // java.lang.Runnable
            public final void run() {
                this.a.o(acknowledgePurchaseResponseListener);
            }
        }, w()) == null) {
            BillingResult billingResultY = y();
            this.f145f.b(zzaq.zza(25, 3, billingResultY));
            acknowledgePurchaseResponseListener.e(billingResultY);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void b(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (!h()) {
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(2, 4, billingResult));
            consumeResponseListener.g(billingResult, consumeParams.a());
            return;
        }
        if (A(new Callable() { // from class: com.android.billingclient.api.zzm
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.a.M(consumeParams, consumeResponseListener);
                return null;
            }
        }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new Runnable() { // from class: com.android.billingclient.api.zzn
            @Override // java.lang.Runnable
            public final void run() {
                this.a.q(consumeResponseListener, consumeParams);
            }
        }, w()) == null) {
            BillingResult billingResultY = y();
            this.f145f.b(zzaq.zza(25, 4, billingResultY));
            consumeResponseListener.g(billingResultY, consumeParams.a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x042e  */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.billingclient.api.BillingResult c(android.app.Activity r32, final com.android.billingclient.api.BillingFlowParams r33) {
        /*
            Method dump skipped, instruction units count: 1266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.c(android.app.Activity, com.android.billingclient.api.BillingFlowParams):com.android.billingclient.api.BillingResult");
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void d(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        B(queryPurchasesParams.a(), purchasesResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void e(SkuDetailsParams skuDetailsParams, final SkuDetailsResponseListener skuDetailsResponseListener) {
        if (!h()) {
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.m;
            zzarVar.b(zzaq.zza(2, 8, billingResult));
            skuDetailsResponseListener.c(billingResult, null);
            return;
        }
        final String strA = skuDetailsParams.a();
        final List<String> listB = skuDetailsParams.b();
        if (TextUtils.isEmpty(strA)) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Please fix the input params. SKU type can't be empty.");
            zzar zzarVar2 = this.f145f;
            BillingResult billingResult2 = zzat.f175f;
            zzarVar2.b(zzaq.zza(49, 8, billingResult2));
            skuDetailsResponseListener.c(billingResult2, null);
            return;
        }
        if (listB == null) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            zzar zzarVar3 = this.f145f;
            BillingResult billingResult3 = zzat.f174e;
            zzarVar3.b(zzaq.zza(48, 8, billingResult3));
            skuDetailsResponseListener.c(billingResult3, null);
            return;
        }
        final String str = null;
        if (A(new Callable(strA, listB, str, skuDetailsResponseListener) { // from class: com.android.billingclient.api.zzj
            public final /* synthetic */ String b;
            public final /* synthetic */ List c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ SkuDetailsResponseListener f180d;

            {
                this.f180d = skuDetailsResponseListener;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.a.O(this.b, this.c, null, this.f180d);
                return null;
            }
        }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new Runnable() { // from class: com.android.billingclient.api.zzr
            @Override // java.lang.Runnable
            public final void run() {
                this.a.u(skuDetailsResponseListener);
            }
        }, w()) == null) {
            BillingResult billingResultY = y();
            this.f145f.b(zzaq.zza(25, 8, billingResultY));
            skuDetailsResponseListener.c(billingResultY, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void f(BillingClientStateListener billingClientStateListener) {
        if (h()) {
            com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.f145f.c(zzaq.zzb(6));
            billingClientStateListener.b(zzat.l);
            return;
        }
        int i = 1;
        if (this.a == 1) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Client is already in the process of connecting to billing service.");
            zzar zzarVar = this.f145f;
            BillingResult billingResult = zzat.f173d;
            zzarVar.b(zzaq.zza(37, 6, billingResult));
            billingClientStateListener.b(billingResult);
            return;
        }
        if (this.a == 3) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            zzar zzarVar2 = this.f145f;
            BillingResult billingResult2 = zzat.m;
            zzarVar2.b(zzaq.zza(38, 6, billingResult2));
            billingClientStateListener.b(billingResult2);
            return;
        }
        this.a = 1;
        this.f143d.d();
        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Starting in-app billing setup.");
        this.h = new zzaf(this, billingClientStateListener, null);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.f144e.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            i = 41;
        } else {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "The device doesn't have valid Play Store.");
                    i = 40;
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.b);
                    if (this.f144e.bindService(intent2, this.h, 1)) {
                        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Service was bonded successfully.");
                        return;
                    } else {
                        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Connection to Billing service is blocked.");
                        i = 39;
                    }
                }
            }
        }
        this.a = 0;
        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Billing service unavailable on device.");
        zzar zzarVar3 = this.f145f;
        BillingResult billingResult3 = zzat.c;
        zzarVar3.b(zzaq.zza(i, 6, billingResult3));
        billingClientStateListener.b(billingResult3);
    }

    public final boolean h() {
        return (this.a != 2 || this.f146g == null || this.h == null) ? false : true;
    }

    final /* synthetic */ void o(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 3, billingResult));
        acknowledgePurchaseResponseListener.e(billingResult);
    }

    final /* synthetic */ void p(BillingResult billingResult) {
        if (this.f143d.c() != null) {
            this.f143d.c().d(billingResult, null);
        } else {
            this.f143d.b();
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final /* synthetic */ void q(ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 4, billingResult));
        consumeResponseListener.g(billingResult, consumeParams.a());
    }

    final /* synthetic */ void r(ProductDetailsResponseListener productDetailsResponseListener) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 7, billingResult));
        productDetailsResponseListener.a(billingResult, new ArrayList());
    }

    final /* synthetic */ void s(PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 11, billingResult));
        purchaseHistoryResponseListener.f(billingResult, null);
    }

    final /* synthetic */ void t(PurchasesResponseListener purchasesResponseListener) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 9, billingResult));
        purchasesResponseListener.a(billingResult, com.google.android.gms.internal.play_billing.zzu.zzk());
    }

    final /* synthetic */ void u(SkuDetailsResponseListener skuDetailsResponseListener) {
        zzar zzarVar = this.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 8, billingResult));
        skuDetailsResponseListener.c(billingResult, null);
    }
}
