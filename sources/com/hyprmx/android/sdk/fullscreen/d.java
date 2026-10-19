package com.hyprmx.android.sdk.fullscreen;

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

    public d(com.hyprmx.android.sdk.presentation.e eventPublisher) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = eventPublisher;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String B() {
        return (String) this.a.getProperty("viewingId");
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void E() {
        this.a.a("cancelDialogExitPressed", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void H() {
        this.a.a("didTapClose", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void I() {
        this.a.a("didTapNext", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void J() {
        this.a.a("internetLossDetected", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void K() {
        this.a.a("nativeClosePressed", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String M() {
        Object objA = this.a.a("openMeasurementCustomData", null);
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.String");
        return (String) objA;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void O() {
        this.a.a("webTrafficPageMinTimeComplete", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean P() {
        Object property = this.a.getProperty("payoutComplete");
        Intrinsics.checkNotNull(property, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) property).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void a(int i, int i2) {
        this.a.a("containerSizeChange", MapsKt__MapsKt.mapOf(TuplesKt.to("width", Integer.valueOf(i)), TuplesKt.to("height", Integer.valueOf(i2))));
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.a.a((CoroutineScope) nativeObject);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void b(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.a("windowOpenAttempt", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", url)));
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void b(ArrayList permissionResults, int i) throws JSONException {
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
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

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void c(boolean z) {
        this.a.a("containerVisibleChange", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("visible", Boolean.TRUE)));
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void destroy() {
        this.a.destroy();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void f(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.a.a(message);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void g() {
        this.a.a("onBackButtonPressed", null);
    }

    @Override // com.hyprmx.android.sdk.core.w
    public final void imageCaptured(String str) {
        com.hyprmx.android.sdk.presentation.h hVar = this.a;
        if (str == null) {
            str = "";
        }
        hVar.a("imageCaptured", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", str)));
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void m() {
        this.a.a("onClose", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String n() {
        return (String) this.a.getProperty("thankYouUrl");
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void o() {
        this.a.a("onErrorDialogOKPressed", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void s() {
        this.a.a("vastVideoNotFound", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean t() {
        Object property = this.a.getProperty("closable");
        Intrinsics.checkNotNull(property, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) property).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void u() {
        this.a.a("didTapFinish", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void w() {
        this.a.a("restoreState", null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean x() {
        Object property = this.a.getProperty("adCompleted");
        Intrinsics.checkNotNull(property, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) property).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void y() {
        this.a.a("clearBrowserRequest", null);
    }
}
