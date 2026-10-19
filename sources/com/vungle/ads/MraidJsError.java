package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.l1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: VungleError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/MraidJsError;", "Lcom/vungle/ads/VungleError;", "errorMessage", "", "(Ljava/lang/String;)V", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class MraidJsError extends VungleError {
    /* JADX WARN: Multi-variable type inference failed */
    public MraidJsError() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MraidJsError(String str) {
        super(130, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, str, null, null, null, 56, null);
    }

    public /* synthetic */ MraidJsError(String str, int i, kotlin.jvm.internal.n nVar) {
        this((i & 1) != 0 ? null : str);
    }
}
