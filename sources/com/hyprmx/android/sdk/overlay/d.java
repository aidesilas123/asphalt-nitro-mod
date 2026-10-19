package com.hyprmx.android.sdk.overlay;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.l0;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements e {
    public final com.hyprmx.android.sdk.presentation.h a;

    public d(com.hyprmx.android.sdk.presentation.h eventPublisher) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = eventPublisher;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void a(ArrayList permissionResults, int i) throws JSONException {
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
        HyprMXLog.d("permissionResponse - " + i);
        com.hyprmx.android.sdk.presentation.h hVar = this.a;
        Pair[] pairArr = new Pair[2];
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(permissionResults, 10));
        Iterator it = permissionResults.iterator();
        while (it.hasNext()) {
            l0 l0Var = (l0) it.next();
            l0Var.getClass();
            JSONObject jSONObjectPut = new JSONObject().put("permission", l0Var.a).put("granted", l0Var.b);
            Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "JSONObject().put(\n      …NSE_ARG_GRANTED, granted)");
            arrayList.add(jSONObjectPut);
        }
        pairArr[0] = TuplesKt.to("permissions", arrayList);
        pairArr[1] = TuplesKt.to("permissionId", Integer.valueOf(i));
        hVar.a("permissionResponse", MapsKt__MapsKt.mapOf(pairArr));
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void b() {
        this.a.a("onBrowserReady", null);
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.a.a((CoroutineScope) nativeObject);
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void destroy() {
        this.a.destroy();
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void g() {
        this.a.a("onBackButtonPressed", null);
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void i() {
        this.a.a("onSharePressed", null);
    }

    @Override // com.hyprmx.android.sdk.core.w
    public final void imageCaptured(String str) {
        com.hyprmx.android.sdk.presentation.h hVar = this.a;
        if (str == null) {
            str = "";
        }
        hVar.a("imageCaptured", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", str)));
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void j() {
        this.a.a("onNavigateBackPressed", null);
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void l() {
        this.a.a("onNavigateForwardPressed", null);
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void m() {
        this.a.a("onClose", null);
    }
}
