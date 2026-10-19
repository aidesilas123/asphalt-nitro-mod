package com.hyprmx.android.sdk.api.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements a {
    public final String a;
    public final String b;
    public final m c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4486d;

    public i(String id, String type, String catalogFrameUrl, m allowedOrientation, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(catalogFrameUrl, "catalogFrameUrl");
        Intrinsics.checkNotNullParameter(allowedOrientation, "allowedOrientation");
        this.a = id;
        this.b = type;
        this.c = allowedOrientation;
        this.f4486d = str;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String a() {
        return this.f4486d;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final m b() {
        return this.c;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getId() {
        return this.a;
    }

    @Override // com.hyprmx.android.sdk.api.data.a
    public final String getType() {
        return this.b;
    }
}
