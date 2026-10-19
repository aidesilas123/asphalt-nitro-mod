package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.config.app.SyncConfiguration;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: io.didomi.sdk.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ'\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\rJK\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\t\u0010\u0014J\r\u0010\t\u001a\u00020\u0015¢\u0006\u0004\b\t\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001d\u001a\u00020\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u001d\u0010 J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010!J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010#J\u0015\u0010\t\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u0015¢\u0006\u0004\b\t\u0010%J\u0015\u0010\u0017\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010%J3\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00062\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010(\u001a\u00020\u001f¢\u0006\u0004\b\t\u0010)J\u001d\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\nR*\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u0017\u0010+\u0012\u0004\b0\u0010\u0003\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lio/didomi/sdk/v0;", "", "<init>", "()V", "Lio/didomi/sdk/v3;", "languagesHelper", "", "durationInSeconds", "", "a", "(Lio/didomi/sdk/v3;J)Ljava/lang/String;", "unit1Label", "unit2Label", "(Lio/didomi/sdk/v3;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "biggerUnitCount", "biggerUnitKey", "smallerUnit1Count", "smallerUnit1Key", "smallerUnit2Count", "smallerUnit2Key", "(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;", "Ljava/util/Date;", "()Ljava/util/Date;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()J", "date", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/util/Date;)Ljava/lang/String;", "Ljava/text/SimpleDateFormat;", "c", "()Ljava/text/SimpleDateFormat;", "", "(Ljava/util/Date;)Z", "(Ljava/lang/String;)Ljava/util/Date;", "timeInMs", "(J)Ljava/lang/String;", "", "(Ljava/util/Date;)I", "unitCount", "unitKey", "formatBigNumber", "(Lio/didomi/sdk/v3;JLjava/lang/String;Z)Ljava/lang/String;", "Ljava/util/Calendar;", "Ljava/util/Calendar;", "getCalendar", "()Ljava/util/Calendar;", "setCalendar", "(Ljava/util/Calendar;)V", "getCalendar$annotations", "calendar", "android_release"}, mv = {1, 8, 0})
public final class C1917v0 {
    public static final C1917v0 a = new C1917v0();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static Calendar calendar;

    private C1917v0() {
    }

    public static /* synthetic */ String a(C1917v0 c1917v0, C1920v3 c1920v3, long j, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        return c1917v0.a(c1920v3, j, str, (i & 8) != 0 ? false : z);
    }

    private final String a(C1920v3 languagesHelper, long durationInSeconds) {
        long j = 31536000;
        int i = (int) (durationInSeconds / j);
        int i2 = (int) (durationInSeconds % j);
        if (i2 == 0 && i > 0) {
            return a(languagesHelper, i, "year", 0L, (String) null, 0L, (String) null);
        }
        if (i2 > 31104000) {
            return a(languagesHelper, i + 1, "year", 0L, (String) null, 0L, (String) null);
        }
        long j2 = ((long) (i2 % 31536000)) / 2592000;
        if (j2 == 12) {
            i++;
            j2 = 0;
        }
        long j3 = (((long) i2) % 2592000) / ((long) SyncConfiguration.DEFAULT_FREQUENCY);
        if (i > 0) {
            return a(languagesHelper, i, "year", j2, "month", j3, "day");
        }
        long j4 = (i2 % SyncConfiguration.DEFAULT_FREQUENCY) / 3600;
        if (j2 > 0) {
            return a(languagesHelper, j2, "month", j3, "day", j4, "hour");
        }
        int i3 = (i2 % 3600) / 60;
        if (j3 > 0) {
            return a(languagesHelper, j3, "day", j4, "hour", i3, "minute");
        }
        int i4 = i2 % 60;
        return j4 > 0 ? a(languagesHelper, j4, "hour", i3, "minute", i4, "second") : i3 > 0 ? a(languagesHelper, i3, "minute", i4, "second", 0L, (String) null) : a(this, languagesHelper, i4, "second", false, 8, (Object) null);
    }

    private final String a(C1920v3 languagesHelper, long biggerUnitCount, String biggerUnitKey, long smallerUnit1Count, String smallerUnit1Key, long smallerUnit2Count, String smallerUnit2Key) {
        String strA = a(this, languagesHelper, biggerUnitCount, biggerUnitKey, false, 8, (Object) null);
        return smallerUnit1Count > 0 ? a(languagesHelper, strA, a(this, languagesHelper, smallerUnit1Count, smallerUnit1Key, false, 8, (Object) null)) : smallerUnit2Count > 0 ? a(languagesHelper, strA, a(this, languagesHelper, smallerUnit2Count, smallerUnit2Key, false, 8, (Object) null)) : strA;
    }

    private final String a(C1920v3 languagesHelper, String unit1Label, String unit2Label) {
        return C1920v3.a(languagesHelper, "composed_duration", W5.NONE, MapsKt__MapsKt.mapOf(TuplesKt.to("{unit1}", unit1Label), TuplesKt.to("{unit2}", unit2Label)), null, 8, null);
    }

    public final int a(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return (int) ((b() - date.getTime()) / 86400000);
    }

    public final String a(long timeInMs) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss", Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(Long.valueOf(timeInMs)) + " GMT";
    }

    public final String a(C1920v3 languagesHelper, long unitCount, String unitKey, boolean formatBigNumber) {
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        if (unitKey == null) {
            return a(languagesHelper, unitCount);
        }
        if (unitCount == 1) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            String str = String.format("%s_singular", Arrays.copyOf(new Object[]{unitKey}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return C1920v3.a(languagesHelper, str, null, null, null, 14, null);
        }
        String strValueOf = formatBigNumber ? NumberFormat.getNumberInstance(new Locale(languagesHelper.e())).format(unitCount) : String.valueOf(unitCount);
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.a;
        String str2 = String.format("%s_plural", Arrays.copyOf(new Object[]{unitKey}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return C1920v3.a(languagesHelper, str2, W5.NONE, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", strValueOf)), null, 8, null);
    }

    public final Date a() {
        Calendar calendar2 = calendar;
        if (calendar2 == null) {
            calendar2 = Calendar.getInstance();
        }
        Date time = calendar2.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "calendar ?: Calendar.getInstance()).time");
        return time;
    }

    public final Date a(String date) {
        if (date != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                return simpleDateFormat.parse(date);
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public final int b(Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return (int) ((b() - date.getTime()) / ((long) 1000));
    }

    public final long b() {
        Calendar calendar2 = calendar;
        if (calendar2 == null) {
            calendar2 = Calendar.getInstance();
        }
        return calendar2.getTimeInMillis();
    }

    public final String b(C1920v3 languagesHelper, long durationInSeconds) {
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        String strA = a(this, languagesHelper, durationInSeconds, (String) null, false, 12, (Object) null);
        if (durationInSeconds < 60) {
            return strA;
        }
        return strA + " (" + a(languagesHelper, durationInSeconds, "second", true) + ')';
    }

    public final SimpleDateFormat c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    public final boolean c(Date date) {
        return date != null && date.getTime() < b();
    }

    public final String d(Date date) {
        if (date == null) {
            return null;
        }
        return c().format(date);
    }
}
