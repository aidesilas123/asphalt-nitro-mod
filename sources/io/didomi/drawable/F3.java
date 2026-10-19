package io.didomi.drawable;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\n\u0010\u0006\u001a\u0004\b\u0005\u0010\b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/F3;", "Lio/didomi/sdk/b4;", "<init>", "()V", "", "a", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "name", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "sourceType", "android_release"}, mv = {1, 8, 0})
public final class F3 implements InterfaceC1721b4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String name = MBridgeConstans.DYNAMIC_VIEW_WX_APP;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String sourceType = "sdk-mobile";

    @Override // io.didomi.drawable.InterfaceC1721b4
    /* JADX INFO: renamed from: a, reason: from getter */
    public String getSourceType() {
        return this.sourceType;
    }

    @Override // io.didomi.drawable.InterfaceC1721b4
    public String getName() {
        return this.name;
    }
}
