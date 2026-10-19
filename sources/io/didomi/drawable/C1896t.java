package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;

/* JADX INFO: renamed from: io.didomi.sdk.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0007\u0010\u0006\u001a\u0004\b\n\u0010\bR\u001a\u0010\r\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\n\u0010\u0006\u001a\u0004\b\f\u0010\bR\u001a\u0010\u000f\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u000e\u0010\u0006\u001a\u0004\b\u0005\u0010\b¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/t;", "Lio/didomi/sdk/L3;", "<init>", "()V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "()Ljava/lang/String;", "contentTextTranslationKey", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "titleTranslationKey", "a", "agreeTranslationKey", "e", "learnMoreTranslationKey", "android_release"}, mv = {1, 8, 0})
public final class C1896t implements L3 {
    public static final C1896t a = new C1896t();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final String contentTextTranslationKey = "ccpa_notice_consent";

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static final String titleTranslationKey = "ccpa_notice_title";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static final String agreeTranslationKey = "ccpa_notice_dismiss";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static final String learnMoreTranslationKey = "ccpa_notice_learn_more";

    private C1896t() {
    }

    @Override // io.didomi.drawable.L3
    public String a() {
        return agreeTranslationKey;
    }

    @Override // io.didomi.drawable.L3
    public String b() {
        return learnMoreTranslationKey;
    }

    @Override // io.didomi.drawable.L3
    public String c() {
        return contentTextTranslationKey;
    }

    @Override // io.didomi.drawable.L3
    public String d() {
        return titleTranslationKey;
    }
}
