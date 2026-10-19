package com.google.ads;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum AdRequest$ErrorCode {
    INVALID_REQUEST("Invalid Ad request."),
    NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
    NETWORK_ERROR("A network error occurred."),
    INTERNAL_ERROR("There was an internal error.");


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2950f;

    AdRequest$ErrorCode(String str) {
        this.f2950f = str;
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return this.f2950f;
    }
}
