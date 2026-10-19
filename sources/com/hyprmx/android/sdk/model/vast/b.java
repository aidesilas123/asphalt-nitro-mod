package com.hyprmx.android.sdk.model.vast;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public final String a;
    public final List<d> b;
    public final List<g> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4572d;

    public b(String vendor, ArrayList javascriptResources, ArrayList trackings, String str) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(javascriptResources, "javascriptResources");
        Intrinsics.checkNotNullParameter(trackings, "trackings");
        this.a = vendor;
        this.b = javascriptResources;
        this.c = trackings;
        this.f4572d = str;
    }
}
