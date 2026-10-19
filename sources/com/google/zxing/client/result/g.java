package com.google.zxing.client.result;

import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: CalendarParsedResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g extends ParsedResult {
    private static final Pattern b = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
    private static final long[] c = {604800000, 86400000, 3600000, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, 1000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f4299d = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f4301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4302g;
    private final long h;
    private final boolean i;
    private final String j;
    private final String k;
    private final String[] l;
    private final String m;
    private final double n;
    private final double o;

    public g(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d2, double d3) {
        super(ParsedResultType.CALENDAR);
        this.f4300e = str;
        try {
            long jC = c(str2);
            this.f4301f = jC;
            if (str3 == null) {
                long jE = e(str4);
                this.h = jE < 0 ? -1L : jC + jE;
            } else {
                try {
                    this.h = c(str3);
                } catch (ParseException e2) {
                    throw new IllegalArgumentException(e2.toString());
                }
            }
            this.f4302g = str2.length() == 8;
            this.i = str3 != null && str3.length() == 8;
            this.j = str5;
            this.k = str6;
            this.l = strArr;
            this.m = str7;
            this.n = d2;
            this.o = d3;
        } catch (ParseException e3) {
            throw new IllegalArgumentException(e3.toString());
        }
    }

    private static String b(boolean z, long j) {
        if (j < 0) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(Long.valueOf(j));
    }

    private static long c(String str) throws ParseException {
        if (!f4299d.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        }
        if (str.length() != 16 || str.charAt(15) != 'Z') {
            return d(str);
        }
        long jD = d(str.substring(0, 15));
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long j = jD + ((long) gregorianCalendar.get(15));
        gregorianCalendar.setTime(new Date(j));
        return j + ((long) gregorianCalendar.get(16));
    }

    private static long d(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    private static long e(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = b.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (true) {
            long[] jArr = c;
            if (i >= jArr.length) {
                return j;
            }
            int i2 = i + 1;
            String strGroup = matcher.group(i2);
            if (strGroup != null) {
                j += jArr[i] * ((long) Integer.parseInt(strGroup));
            }
            i = i2;
        }
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String a() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f4300e, sb);
        ParsedResult.maybeAppend(b(this.f4302g, this.f4301f), sb);
        ParsedResult.maybeAppend(b(this.i, this.h), sb);
        ParsedResult.maybeAppend(this.j, sb);
        ParsedResult.maybeAppend(this.k, sb);
        ParsedResult.maybeAppend(this.l, sb);
        ParsedResult.maybeAppend(this.m, sb);
        return sb.toString();
    }
}
