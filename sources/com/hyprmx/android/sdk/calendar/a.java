package com.hyprmx.android.sdk.calendar;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static final List<String> a;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.calendar.a$a, reason: collision with other inner class name */
    public static final class C0282a {
        public static final Date a(String str) {
            StringBuilder sb;
            Iterator<String> it = a.a.iterator();
            String str2 = null;
            Date date = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(next, Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    date = simpleDateFormat.parse(str);
                } catch (IllegalArgumentException | ParseException unused) {
                }
                if (date != null) {
                    str2 = next;
                    break;
                }
            }
            if (date == null) {
                sb = new StringBuilder("No parser for ");
                sb.append(str);
            } else {
                sb = new StringBuilder();
                sb.append(str);
                sb.append(" parsed with ");
                sb.append(str2);
            }
            HyprMXLog.d(sb.toString());
            return date;
        }
    }

    static {
        new C0282a();
        a = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"yyyy-MM-dd'T'HH:mm:ss.SSSX", "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ssX", "yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mmX", "yyyy-MM-dd'T'HH:mmZ", "yyyy-MM-dd'T'HH:mm:ss.SSS", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd'T'HH:mm", "yyyyMMdd'T'HH:mm:ss.SSSX", "yyyyMMdd'T'HH:mm:ss.SSSZ", "yyyyMMdd'T'HH:mm:ssX", "yyyyMMdd'T'HH:mm:ssZ", "yyyyMMdd'T'HH:mmX", "yyyyMMdd'T'HH:mmZ", "yyyyMMdd'T'HH:mm:ss.SSS", "yyyyMMdd'T'HH:mm:ss", "yyyyMMdd'T'HH:mm", "yyyy-MM-dd'T'HHmmss.SSSX", "yyyy-MM-dd'T'HHmmss.SSSZ", "yyyy-MM-dd'T'HHmmssX", "yyyy-MM-dd'T'HHmmssZ", "yyyy-MM-dd'T'HHmmX", "yyyy-MM-dd'T'HHmmZ", "yyyy-MM-dd'T'HHmmss.SSS", "yyyy-MM-dd'T'HHmmss", "yyyy-MM-dd'T'HHmm", "yyyyMMdd'T'HHmmss.SSSX", "yyyyMMdd'T'HHmmss.SSSZ", "yyyyMMdd'T'HHmmssX", "yyyyMMdd'T'HHmmssZ", "yyyyMMdd'T'HHmmX", "yyyyMMdd'T'HHmmZ", "yyyyMMdd'T'HHmmss.SSS", "yyyyMMdd'T'HHmmss", "yyyyMMdd'T'HHmm"});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.HashMap a(java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 901
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.calendar.a.a(java.lang.String):java.util.HashMap");
    }

    public final boolean a(Context context, String calEventString) {
        String str;
        Intrinsics.checkNotNullParameter(calEventString, "calEventString");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(calEventString, "calEventString");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            HashMap mapA = a(calEventString);
            Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event");
            Intrinsics.checkNotNullExpressionValue(type, "Intent(Intent.ACTION_INS…tType(CALENDAR_MIME_TYPE)");
            for (String str2 : mapA.keySet()) {
                Object obj = mapA.get(str2);
                if (obj instanceof Long) {
                    type.putExtra(str2, ((Number) obj).longValue());
                } else if (obj instanceof Integer) {
                    type.putExtra(str2, ((Number) obj).intValue());
                } else {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    type.putExtra(str2, (String) obj);
                }
            }
            type.setFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(type);
            return true;
        } catch (ActivityNotFoundException unused) {
            str = "Calendar app not installed.";
            HyprMXLog.d(str);
            return false;
        } catch (IllegalArgumentException unused2) {
            str = "Invalid params for calendar event.";
            HyprMXLog.d(str);
            return false;
        } catch (Exception unused3) {
            str = "Error creating calendar event.";
            HyprMXLog.d(str);
            return false;
        }
    }
}
