package com.hyprmx.android.sdk.preload;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\ba\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001f\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/preload/Deserializable;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "", "jsonString", "Lcom/hyprmx/android/sdk/preload/n;", "cacheManager", "deserialize", "(Ljava/lang/String;Lcom/hyprmx/android/sdk/preload/n;)Ljava/lang/Object;", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public interface Deserializable<T> {
    T deserialize(String jsonString, n cacheManager);
}
