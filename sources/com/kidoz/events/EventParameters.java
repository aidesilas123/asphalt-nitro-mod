package com.kidoz.events;

import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public class EventParameters {
    public static String getCurrentTimezoneOffset() {
        TimeZone timeZone = TimeZone.getDefault();
        int offset = timeZone.getOffset(GregorianCalendar.getInstance(timeZone).getTimeInMillis());
        String str = String.format(Locale.getDefault(), "%02d", Integer.valueOf(Math.abs(offset / 3600000)));
        StringBuilder sb = new StringBuilder();
        sb.append(offset >= 0 ? "+" : "-");
        sb.append(str);
        return sb.toString();
    }
}
