package com.hyprmx.android.sdk.utility;

import com.hyprmx.android.sdk.consent.ConsentStatus;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0007J\u000f\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/hyprmx/android/sdk/utility/HyprMXInternalHelper;", "", "()V", "clearCache", "", "getAdCacheState", "", "", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConsentStatus", "Lcom/hyprmx/android/sdk/consent/ConsentStatus;", "getSharedJSVersion", "", "()Ljava/lang/Integer;", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public final class HyprMXInternalHelper {
    public static final HyprMXInternalHelper INSTANCE = new HyprMXInternalHelper();

    private HyprMXInternalHelper() {
    }

    public final void clearCache() {
        com.hyprmx.android.sdk.core.j jVar = com.hyprmx.android.sdk.core.t.a.f4521g;
        if (jVar != null) {
            BuildersKt__Builders_commonKt.launch$default(jVar, Dispatchers.getIO(), null, new com.hyprmx.android.sdk.core.k(jVar, null), 2, null);
        }
    }

    public final Object getAdCacheState(Continuation<? super Map<String, Boolean>> continuation) {
        return com.hyprmx.android.sdk.core.t.a.a(continuation);
    }

    public final ConsentStatus getConsentStatus() {
        ConsentStatus consentStatusB;
        com.hyprmx.android.sdk.core.j jVar = com.hyprmx.android.sdk.core.t.a.f4521g;
        return (jVar == null || (consentStatusB = jVar.a.h().b()) == null) ? ConsentStatus.CONSENT_STATUS_UNKNOWN : consentStatusB;
    }

    public final Integer getSharedJSVersion() {
        com.hyprmx.android.sdk.core.j jVar = com.hyprmx.android.sdk.core.t.a.f4521g;
        if (jVar != null) {
            return jVar.f4507f;
        }
        return null;
    }
}
