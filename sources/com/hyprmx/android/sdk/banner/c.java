package com.hyprmx.android.sdk.banner;

import com.json.z5;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements d {
    public final com.hyprmx.android.sdk.presentation.h a;

    public c(com.hyprmx.android.sdk.presentation.h eventPublisher) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = eventPublisher;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.banner.d
    public final void a(float f2, float f3) {
        this.a.a("containerSizeChange", MapsKt__MapsKt.mapOf(TuplesKt.to("width", Float.valueOf(f2)), TuplesKt.to("height", Float.valueOf(f3))));
    }

    @Override // com.hyprmx.android.sdk.banner.d
    public final void a(int i) {
        this.a.a("containerVisibleChange", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("visible", Boolean.valueOf(i == 0))));
    }

    @Override // com.hyprmx.android.sdk.banner.d
    public final void a(HyprMXBannerSize definedSize, float f2, float f3) {
        Intrinsics.checkNotNullParameter(definedSize, "definedSize");
        this.a.a("loadAd", MapsKt__MapsKt.mapOf(TuplesKt.to("definedSize", definedSize.toMap$HyprMX_Mobile_Android_SDK_release()), TuplesKt.to("actualSize", MapsKt__MapsKt.mapOf(TuplesKt.to("width", Float.valueOf(f2)), TuplesKt.to("height", Float.valueOf(f3))))));
    }

    @Override // com.hyprmx.android.sdk.banner.d
    public final void a(boolean z) {
        this.a.a("onParentViewChangeEvent", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("parentView", Boolean.valueOf(z))));
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

    @Override // com.hyprmx.android.sdk.banner.j
    public final void onVisibleEvent(boolean z, int i, int i2, int i3, int i4, boolean z2, boolean z3, boolean z4, int i5, int i6, float f2, boolean z5) {
        this.a.a("onVisibleEvent", MapsKt__MapsKt.mapOf(TuplesKt.to(z5.m, Boolean.valueOf(z)), TuplesKt.to("visibleHeight", Integer.valueOf(i)), TuplesKt.to("visibleWidth", Integer.valueOf(i2)), TuplesKt.to("actualHeight", Integer.valueOf(i3)), TuplesKt.to("actualWidth", Integer.valueOf(i4)), TuplesKt.to("fullyVisible", Boolean.valueOf(z2)), TuplesKt.to("partiallyVisible", Boolean.valueOf(z3)), TuplesKt.to("fullyOffscreen", Boolean.valueOf(z4)), TuplesKt.to("onScreenX", Integer.valueOf(i5)), TuplesKt.to("onScreenY", Integer.valueOf(i6)), TuplesKt.to("alpha", Float.valueOf(f2)), TuplesKt.to("parentAlphaPassesThreshold", Boolean.valueOf(z5))));
    }
}
