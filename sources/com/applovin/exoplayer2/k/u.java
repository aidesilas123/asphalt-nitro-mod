package com.applovin.exoplayer2.k;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.json.o2;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    private static final Pattern aaQ = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern aaR = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    @Nullable
    public static String A(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static long aQ(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = aaR.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }

    public static long d(@Nullable String str, @Nullable String str2) {
        long j;
        if (TextUtils.isEmpty(str)) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                com.applovin.exoplayer2.l.q.i("HttpUtil", "Unexpected Content-Length [" + str + o2.i.f6491e);
                j = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j;
        }
        Matcher matcher = aaQ.matcher(str2);
        if (!matcher.matches()) {
            return j;
        }
        try {
            long j2 = (Long.parseLong((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2))) - Long.parseLong((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            com.applovin.exoplayer2.l.q.h("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + o2.i.f6491e);
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            com.applovin.exoplayer2.l.q.i("HttpUtil", "Unexpected Content-Range [" + str2 + o2.i.f6491e);
            return j;
        }
    }
}
