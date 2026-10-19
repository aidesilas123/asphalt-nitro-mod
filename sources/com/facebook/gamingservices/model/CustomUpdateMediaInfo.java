package com.facebook.gamingservices.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomUpdateContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CustomUpdateMediaInfo {
    private final String url;

    public CustomUpdateMediaInfo(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
    }

    public static /* synthetic */ CustomUpdateMediaInfo copy$default(CustomUpdateMediaInfo customUpdateMediaInfo, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = customUpdateMediaInfo.url;
        }
        return customUpdateMediaInfo.copy(str);
    }

    public final String component1() {
        return this.url;
    }

    public final CustomUpdateMediaInfo copy(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new CustomUpdateMediaInfo(url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CustomUpdateMediaInfo) && Intrinsics.areEqual(this.url, ((CustomUpdateMediaInfo) obj).url);
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return "CustomUpdateMediaInfo(url=" + this.url + ')';
    }
}
