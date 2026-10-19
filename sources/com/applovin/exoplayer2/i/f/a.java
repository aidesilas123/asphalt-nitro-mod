package com.applovin.exoplayer2.i.f;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.r;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    private static final Pattern RX = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern RY = Pattern.compile("\\{\\\\.*?\\}");
    private final StringBuilder RZ;
    private final ArrayList<String> Sa;

    public a() {
        super("SubripDecoder");
        this.RZ = new StringBuilder();
        this.Sa = new ArrayList<>();
    }

    private static long a(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = (strGroup != null ? Long.parseLong(strGroup) * 60 * 60 * 1000 : 0L) + (Long.parseLong((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(i + 2))) * 60 * 1000) + (Long.parseLong((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(i + 3))) * 1000);
        String strGroup2 = matcher.group(i + 4);
        if (strGroup2 != null) {
            j += Long.parseLong(strGroup2);
        }
        return j * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.applovin.exoplayer2.i.a a(android.text.Spanned r17, @androidx.annotation.Nullable java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.f.a.a(android.text.Spanned, java.lang.String):com.applovin.exoplayer2.i.a");
    }

    private String a(String str, ArrayList<String> arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = RY.matcher(strTrim);
        int i = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i += length;
        }
        return sb.toString();
    }

    static float eB(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f c(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        r rVar = new r();
        y yVar = new y(bArr, i);
        while (true) {
            String strPJ = yVar.pJ();
            int i2 = 0;
            if (strPJ == null) {
                break;
            }
            if (strPJ.length() != 0) {
                try {
                    Integer.parseInt(strPJ);
                    String strPJ2 = yVar.pJ();
                    if (strPJ2 == null) {
                        q.h("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = RX.matcher(strPJ2);
                    if (matcher.matches()) {
                        rVar.bo(a(matcher, 1));
                        rVar.bo(a(matcher, 6));
                        this.RZ.setLength(0);
                        this.Sa.clear();
                        for (String strPJ3 = yVar.pJ(); !TextUtils.isEmpty(strPJ3); strPJ3 = yVar.pJ()) {
                            if (this.RZ.length() > 0) {
                                this.RZ.append("<br>");
                            }
                            this.RZ.append(a(strPJ3, this.Sa));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.RZ.toString());
                        String str = null;
                        while (true) {
                            if (i2 >= this.Sa.size()) {
                                break;
                            }
                            String str2 = this.Sa.get(i2);
                            if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                str = str2;
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(a(spannedFromHtml, str));
                        arrayList.add(com.applovin.exoplayer2.i.a.NV);
                    } else {
                        q.h("SubripDecoder", "Skipping invalid timing: " + strPJ2);
                    }
                } catch (NumberFormatException unused) {
                    q.h("SubripDecoder", "Skipping invalid index: " + strPJ);
                }
            }
        }
        return new b((com.applovin.exoplayer2.i.a[]) arrayList.toArray(new com.applovin.exoplayer2.i.a[0]), rVar.pa());
    }
}
