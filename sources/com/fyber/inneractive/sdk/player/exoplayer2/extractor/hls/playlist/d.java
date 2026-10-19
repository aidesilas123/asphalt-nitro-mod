package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.y;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Queue;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements y.a<c> {
    public static final Pattern a = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    public static final Pattern b = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    public static final Pattern c = Pattern.compile("CODECS=\"(.+?)\"");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f2280d = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f2281e = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f2282f = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f2283g = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final Pattern h = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern i = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern j = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern k = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern l = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern m = Pattern.compile("METHOD=(NONE|AES-128)");
    public static final Pattern n = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern o = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern p = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern q = Pattern.compile("LANGUAGE=\"(.+?)\"");
    public static final Pattern r = Pattern.compile("NAME=\"(.+?)\"");
    public static final Pattern s = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern t = a("AUTOSELECT");
    public static final Pattern u = a("DEFAULT");
    public static final Pattern v = a("FORCED");

    public static class a {
        public final BufferedReader a;
        public final Queue<String> b;
        public String c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.b = queue;
            this.a = bufferedReader;
        }

        public boolean a() throws IOException {
            String strTrim;
            if (this.c != null) {
                return true;
            }
            if (!this.b.isEmpty()) {
                this.c = this.b.poll();
                return true;
            }
            do {
                String line = this.a.readLine();
                this.c = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.c = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String b() throws IOException {
            if (!a()) {
                return null;
            }
            String str = this.c;
            this.c = null;
            return str;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d.a r45, java.lang.String r46) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 520
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d$a, java.lang.String):com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a");
    }

    public static String a(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static Pattern a(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    public static boolean a(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z;
    }

    public static b b(a aVar, String str) throws IOException {
        int i2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i3 = 2;
        char c2 = 0;
        int i4 = 1;
        long j2 = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        long jA = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 1;
        boolean z2 = false;
        b.a aVar2 = null;
        int i10 = 0;
        long j7 = -1;
        boolean zEquals = false;
        while (true) {
            String strA = null;
            String strB = null;
            while (aVar.a()) {
                String strB2 = aVar.b();
                if (strB2.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                    String strB3 = b(strB2, f2283g);
                    if ("VOD".equals(strB3)) {
                        i5 = 1;
                    } else if ("EVENT".equals(strB3)) {
                        i5 = 2;
                    }
                } else if (strB2.startsWith("#EXT-X-START")) {
                    j2 = (long) (Double.parseDouble(b(strB2, j)) * 1000000.0d);
                } else if (strB2.startsWith("#EXT-X-MAP")) {
                    String strB4 = b(strB2, n);
                    String strA2 = a(strB2, l);
                    if (strA2 != null) {
                        String[] strArrSplit = strA2.split("@");
                        j7 = Long.parseLong(strArrSplit[c2]);
                        if (strArrSplit.length > i4) {
                            j4 = Long.parseLong(strArrSplit[i4]);
                        }
                    }
                    aVar2 = new b.a(strB4, 0L, -1, C.TIME_UNSET, false, null, null, j4, j7);
                    j4 = 0;
                    j7 = -1;
                } else if (strB2.startsWith("#EXT-X-TARGETDURATION")) {
                    j3 = 1000000 * ((long) Integer.parseInt(b(strB2, f2281e)));
                } else if (strB2.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                    i10 = Integer.parseInt(b(strB2, h));
                    i8 = i10;
                } else if (strB2.startsWith("#EXT-X-VERSION")) {
                    i9 = Integer.parseInt(b(strB2, f2282f));
                } else if (strB2.startsWith("#EXTINF")) {
                    j6 = (long) (Double.parseDouble(b(strB2, i)) * 1000000.0d);
                } else if (strB2.startsWith("#EXT-X-KEY")) {
                    zEquals = "AES-128".equals(b(strB2, m));
                    if (zEquals) {
                        strB = b(strB2, n);
                        strA = a(strB2, o);
                    }
                } else if (strB2.startsWith("#EXT-X-BYTERANGE")) {
                    String[] strArrSplit2 = b(strB2, k).split("@");
                    j7 = Long.parseLong(strArrSplit2[c2]);
                    if (strArrSplit2.length > i4) {
                        j4 = Long.parseLong(strArrSplit2[i4]);
                    }
                } else if (strB2.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                    i7 = Integer.parseInt(strB2.substring(strB2.indexOf(58) + i4));
                    z = true;
                } else if (strB2.equals("#EXT-X-DISCONTINUITY")) {
                    i6++;
                } else if (strB2.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                    if (jA == 0) {
                        String strSubstring = strB2.substring(strB2.indexOf(58) + i4);
                        Matcher matcher = u.f2617f.matcher(strSubstring);
                        if (!matcher.matches()) {
                            throw new l("Invalid date/time format: " + strSubstring);
                        }
                        if (matcher.group(9) == null || matcher.group(9).equalsIgnoreCase("Z")) {
                            i2 = 0;
                        } else {
                            i2 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
                            if (matcher.group(11).equals("-")) {
                                i2 *= -1;
                            }
                        }
                        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
                        gregorianCalendar.clear();
                        gregorianCalendar.set(Integer.parseInt(matcher.group(i4)), Integer.parseInt(matcher.group(i3)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
                        if (!TextUtils.isEmpty(matcher.group(8))) {
                            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
                        }
                        long timeInMillis = gregorianCalendar.getTimeInMillis();
                        if (i2 != 0) {
                            timeInMillis -= (long) (i2 * 60000);
                        }
                        jA = com.fyber.inneractive.sdk.player.exoplayer2.b.a(timeInMillis) - j5;
                    }
                } else if (strB2.startsWith("#EXT-X-DATERANGE")) {
                    arrayList2.add(strB2);
                } else if (!strB2.startsWith("#")) {
                    String hexString = !zEquals ? null : strA != null ? strA : Integer.toHexString(i10);
                    int i11 = i10 + 1;
                    if (j7 == -1) {
                        j4 = 0;
                    }
                    arrayList.add(new b.a(strB2, j6, i6, j5, zEquals, strB, hexString, j4, j7));
                    j5 += j6;
                    if (j7 != -1) {
                        j4 += j7;
                    }
                    i10 = i11;
                    j7 = -1;
                    j6 = 0;
                } else if (strB2.equals("#EXT-X-ENDLIST")) {
                    i3 = 2;
                    c2 = 0;
                    i4 = 1;
                    z2 = true;
                }
                i3 = 2;
                c2 = 0;
                i4 = 1;
            }
            return new b(i5, str, j2, jA, z, i7, i8, i9, j3, z2, jA != 0, aVar2, arrayList, arrayList2);
        }
    }

    public static String b(String str, Pattern pattern) throws l {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        throw new l("Couldn't match " + pattern.pattern() + " in " + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: all -> 0x00fe, TryCatch #0 {all -> 0x00fe, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:10:0x0029, B:30:0x0068, B:32:0x006e, B:35:0x0079, B:37:0x0081, B:38:0x0092, B:40:0x009a, B:42:0x00a2, B:44:0x00aa, B:46:0x00b2, B:48:0x00ba, B:50:0x00c2, B:52:0x00ca, B:55:0x00d3, B:56:0x00d7, B:61:0x00f6, B:62:0x00fd, B:13:0x0030, B:15:0x0036, B:18:0x003f, B:21:0x0048, B:23:0x0051, B:25:0x0057, B:27:0x005d, B:28:0x0062), top: B:66:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x004f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(android.net.Uri r8, java.io.InputStream r9) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d.a(android.net.Uri, java.io.InputStream):java.lang.Object");
    }
}
