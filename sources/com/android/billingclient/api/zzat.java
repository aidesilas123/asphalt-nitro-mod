package com.android.billingclient.api;

import com.android.billingclient.api.BillingResult;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzat {
    static final BillingResult A;
    static final BillingResult B;
    static final BillingResult C;
    static final BillingResult a;
    static final BillingResult b;
    static final BillingResult c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final BillingResult f173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final BillingResult f174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final BillingResult f175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final BillingResult f176g;
    static final BillingResult h;
    static final BillingResult i;
    static final BillingResult j;
    static final BillingResult k;
    static final BillingResult l;
    static final BillingResult m;
    static final BillingResult n;
    static final BillingResult o;
    static final BillingResult p;
    static final BillingResult q;
    static final BillingResult r;
    static final BillingResult s;
    static final BillingResult t;
    static final BillingResult u;
    static final BillingResult v;
    static final BillingResult w;
    static final BillingResult x;
    static final BillingResult y;
    static final BillingResult z;

    static {
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.c(3);
        builderNewBuilder.b("Google Play In-app Billing API version is less than 3");
        a = builderNewBuilder.a();
        BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
        builderNewBuilder2.c(3);
        builderNewBuilder2.b("Google Play In-app Billing API version is less than 9");
        b = builderNewBuilder2.a();
        BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
        builderNewBuilder3.c(3);
        builderNewBuilder3.b("Billing service unavailable on device.");
        c = builderNewBuilder3.a();
        BillingResult.Builder builderNewBuilder4 = BillingResult.newBuilder();
        builderNewBuilder4.c(5);
        builderNewBuilder4.b("Client is already in the process of connecting to billing service.");
        f173d = builderNewBuilder4.a();
        BillingResult.Builder builderNewBuilder5 = BillingResult.newBuilder();
        builderNewBuilder5.c(5);
        builderNewBuilder5.b("The list of SKUs can't be empty.");
        f174e = builderNewBuilder5.a();
        BillingResult.Builder builderNewBuilder6 = BillingResult.newBuilder();
        builderNewBuilder6.c(5);
        builderNewBuilder6.b("SKU type can't be empty.");
        f175f = builderNewBuilder6.a();
        BillingResult.Builder builderNewBuilder7 = BillingResult.newBuilder();
        builderNewBuilder7.c(5);
        builderNewBuilder7.b("Product type can't be empty.");
        f176g = builderNewBuilder7.a();
        BillingResult.Builder builderNewBuilder8 = BillingResult.newBuilder();
        builderNewBuilder8.c(-2);
        builderNewBuilder8.b("Client does not support extra params.");
        h = builderNewBuilder8.a();
        BillingResult.Builder builderNewBuilder9 = BillingResult.newBuilder();
        builderNewBuilder9.c(5);
        builderNewBuilder9.b("Invalid purchase token.");
        i = builderNewBuilder9.a();
        BillingResult.Builder builderNewBuilder10 = BillingResult.newBuilder();
        builderNewBuilder10.c(6);
        builderNewBuilder10.b("An internal error occurred.");
        j = builderNewBuilder10.a();
        BillingResult.Builder builderNewBuilder11 = BillingResult.newBuilder();
        builderNewBuilder11.c(5);
        builderNewBuilder11.b("SKU can't be null.");
        k = builderNewBuilder11.a();
        BillingResult.Builder builderNewBuilder12 = BillingResult.newBuilder();
        builderNewBuilder12.c(0);
        l = builderNewBuilder12.a();
        BillingResult.Builder builderNewBuilder13 = BillingResult.newBuilder();
        builderNewBuilder13.c(-1);
        builderNewBuilder13.b("Service connection is disconnected.");
        m = builderNewBuilder13.a();
        BillingResult.Builder builderNewBuilder14 = BillingResult.newBuilder();
        builderNewBuilder14.c(2);
        builderNewBuilder14.b("Timeout communicating with service.");
        n = builderNewBuilder14.a();
        BillingResult.Builder builderNewBuilder15 = BillingResult.newBuilder();
        builderNewBuilder15.c(-2);
        builderNewBuilder15.b("Client does not support subscriptions.");
        o = builderNewBuilder15.a();
        BillingResult.Builder builderNewBuilder16 = BillingResult.newBuilder();
        builderNewBuilder16.c(-2);
        builderNewBuilder16.b("Client does not support subscriptions update.");
        p = builderNewBuilder16.a();
        BillingResult.Builder builderNewBuilder17 = BillingResult.newBuilder();
        builderNewBuilder17.c(-2);
        builderNewBuilder17.b("Client does not support get purchase history.");
        q = builderNewBuilder17.a();
        BillingResult.Builder builderNewBuilder18 = BillingResult.newBuilder();
        builderNewBuilder18.c(-2);
        builderNewBuilder18.b("Client does not support price change confirmation.");
        r = builderNewBuilder18.a();
        BillingResult.Builder builderNewBuilder19 = BillingResult.newBuilder();
        builderNewBuilder19.c(-2);
        builderNewBuilder19.b("Play Store version installed does not support cross selling products.");
        s = builderNewBuilder19.a();
        BillingResult.Builder builderNewBuilder20 = BillingResult.newBuilder();
        builderNewBuilder20.c(-2);
        builderNewBuilder20.b("Client does not support multi-item purchases.");
        t = builderNewBuilder20.a();
        BillingResult.Builder builderNewBuilder21 = BillingResult.newBuilder();
        builderNewBuilder21.c(-2);
        builderNewBuilder21.b("Client does not support offer_id_token.");
        u = builderNewBuilder21.a();
        BillingResult.Builder builderNewBuilder22 = BillingResult.newBuilder();
        builderNewBuilder22.c(-2);
        builderNewBuilder22.b("Client does not support ProductDetails.");
        v = builderNewBuilder22.a();
        BillingResult.Builder builderNewBuilder23 = BillingResult.newBuilder();
        builderNewBuilder23.c(-2);
        builderNewBuilder23.b("Client does not support in-app messages.");
        w = builderNewBuilder23.a();
        BillingResult.Builder builderNewBuilder24 = BillingResult.newBuilder();
        builderNewBuilder24.c(-2);
        builderNewBuilder24.b("Client does not support alternative billing.");
        x = builderNewBuilder24.a();
        BillingResult.Builder builderNewBuilder25 = BillingResult.newBuilder();
        builderNewBuilder25.c(5);
        builderNewBuilder25.b("Unknown feature");
        y = builderNewBuilder25.a();
        BillingResult.Builder builderNewBuilder26 = BillingResult.newBuilder();
        builderNewBuilder26.c(-2);
        builderNewBuilder26.b("Play Store version installed does not support get billing config.");
        z = builderNewBuilder26.a();
        BillingResult.Builder builderNewBuilder27 = BillingResult.newBuilder();
        builderNewBuilder27.c(-2);
        builderNewBuilder27.b("Query product details with serialized docid is not supported.");
        A = builderNewBuilder27.a();
        BillingResult.Builder builderNewBuilder28 = BillingResult.newBuilder();
        builderNewBuilder28.c(4);
        builderNewBuilder28.b("Item is unavailable for purchase.");
        B = builderNewBuilder28.a();
        BillingResult.Builder builderNewBuilder29 = BillingResult.newBuilder();
        builderNewBuilder29.c(-2);
        builderNewBuilder29.b("Query product details with developer specified account is not supported.");
        C = builderNewBuilder29.a();
    }

    static BillingResult a(int i2, String str) {
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.c(i2);
        builderNewBuilder.b(str);
        return builderNewBuilder.a();
    }
}
