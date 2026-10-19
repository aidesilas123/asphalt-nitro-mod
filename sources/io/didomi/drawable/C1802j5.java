package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

/* JADX INFO: renamed from: io.didomi.sdk.j5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0006\u001a\u0004\b\n\u0010\bR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\u0006\u001a\u0004\b\f\u0010\bR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0006\u001a\u0004\b\u0005\u0010\bR\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\bR\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010\u0006\u001a\u0004\b\u0013\u0010\bR\u0017\u0010\u0016\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0006\u001a\u0004\b\u0015\u0010\bR\u0017\u0010\u0017\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0006\u001a\u0004\b\u0010\u0010\bR\u0017\u0010\u0019\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0006\u001a\u0004\b\u000e\u0010\bR\u0017\u0010\u001b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0006\u001a\u0004\b\u0018\u0010\b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/j5;", "", "<init>", "()V", "Lkotlin/text/Regex;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/text/Regex;", "c", "()Lkotlin/text/Regex;", "LOCALE_SEPARATOR", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "LOCALE_STRING", "g", "TWO_LETTERS", "e", "LI_OPENING_TAG", InneractiveMediationDefs.GENDER_FEMALE, "a", "LI_CLOSING_TAG", "i", "UL_OPENING_TAG", "h", "UL_CLOSING_TAG", "OL_OPENING_TAG", "j", "OL_CLOSING_TAG", CampaignEx.JSON_KEY_AD_K, IronSourceConstants.TYPE_UUID, "android_release"}, mv = {1, 8, 0})
public final class C1802j5 {
    public static final C1802j5 a = new C1802j5();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final Regex LOCALE_SEPARATOR = new Regex("[_-]");

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static final Regex LOCALE_STRING = new Regex("^[a-z]{2,3}[_-][A-Z]{2}|[a-z]{2,3}$", RegexOption.a);

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static final Regex TWO_LETTERS = new Regex("^[A-Za-z]{2}$");

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static final Regex LI_OPENING_TAG = new Regex("(?i)<\\s*li[^>]*>");

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private static final Regex LI_CLOSING_TAG = new Regex("(?i)<\\s*/\\s*li[^>]*>");

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private static final Regex UL_OPENING_TAG = new Regex("(?i)<\\s*ul[^>]*>");

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private static final Regex UL_CLOSING_TAG = new Regex("(?i)<\\s*/\\s*ul[^>]*>");

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private static final Regex OL_OPENING_TAG = new Regex("(?i)<\\s*ol[^>]*>");

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private static final Regex OL_CLOSING_TAG = new Regex("(?i)<\\s*/\\s*ol[^>]*>");

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private static final Regex UUID = new Regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$");

    private C1802j5() {
    }

    public final Regex a() {
        return LI_CLOSING_TAG;
    }

    public final Regex b() {
        return LI_OPENING_TAG;
    }

    public final Regex c() {
        return LOCALE_SEPARATOR;
    }

    public final Regex d() {
        return LOCALE_STRING;
    }

    public final Regex e() {
        return OL_CLOSING_TAG;
    }

    public final Regex f() {
        return OL_OPENING_TAG;
    }

    public final Regex g() {
        return TWO_LETTERS;
    }

    public final Regex h() {
        return UL_CLOSING_TAG;
    }

    public final Regex i() {
        return UL_OPENING_TAG;
    }

    public final Regex j() {
        return UUID;
    }
}
