package com.json;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f7, reason: from toString */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0002HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\r\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/ironsource/f7;", "", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "appKey", "userId", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "c", "()Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final /* data */ class InitConfig {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String appKey;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String userId;

    public InitConfig(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.appKey = appKey;
        this.userId = userId;
    }

    public static /* synthetic */ InitConfig a(InitConfig initConfig, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = initConfig.appKey;
        }
        if ((i & 2) != 0) {
            str2 = initConfig.userId;
        }
        return initConfig.a(str, str2);
    }

    public final InitConfig a(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new InitConfig(appKey, userId);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAppKey() {
        return this.appKey;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    public final String c() {
        return this.appKey;
    }

    public final String d() {
        return this.userId;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InitConfig)) {
            return false;
        }
        InitConfig initConfig = (InitConfig) other;
        return Intrinsics.areEqual(this.appKey, initConfig.appKey) && Intrinsics.areEqual(this.userId, initConfig.userId);
    }

    public int hashCode() {
        return (this.appKey.hashCode() * 31) + this.userId.hashCode();
    }

    public String toString() {
        return "InitConfig(appKey=" + this.appKey + ", userId=" + this.userId + ')';
    }
}
