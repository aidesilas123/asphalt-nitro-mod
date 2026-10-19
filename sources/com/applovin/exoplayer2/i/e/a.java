package com.applovin.exoplayer2.i.e;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.e.c;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a extends com.applovin.exoplayer2.i.d {
    private static final Pattern Rs = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final boolean Rt;

    @Nullable
    private final b Ru;
    private Map<String, c> Rv;
    private float Rw;
    private float Rx;

    public a() {
        this(null);
    }

    public a(@Nullable List<byte[]> list) {
        super("SsaDecoder");
        this.Rw = -3.4028235E38f;
        this.Rx = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.Rt = false;
            this.Ru = null;
            return;
        }
        this.Rt = true;
        String strJ = ai.J(list.get(0));
        com.applovin.exoplayer2.l.a.checkArgument(strJ.startsWith("Format:"));
        this.Ru = (b) com.applovin.exoplayer2.l.a.checkNotNull(b.ac(strJ));
        ad(new y(list.get(1)));
    }

    private static int a(long j, List<Long> list, List<List<com.applovin.exoplayer2.i.a>> list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (list.get(size).longValue() == j) {
                return size;
            }
            if (list.get(size).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList(list2.get(i - 1)));
        return i;
    }

    private static com.applovin.exoplayer2.i.a a(String str, @Nullable c cVar, c.b bVar, float f2, float f3) {
        SpannableString spannableString = new SpannableString(str);
        a.C0041a c0041aM = new a.C0041a().m(spannableString);
        if (cVar != null) {
            if (cVar.RD != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.RD.intValue()), 0, spannableString.length(), 33);
            }
            float f4 = cVar.RE;
            if (f4 != -3.4028235E38f && f3 != -3.4028235E38f) {
                c0041aM.c(f4 / f3, 1);
            }
            boolean z = cVar.RF;
            if (z && cVar.RG) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.RG) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.Pn) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.RH) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i = bVar.RC;
        if (i == -1) {
            i = cVar != null ? cVar.RC : -1;
        }
        c0041aM.a(ew(i)).eg(ey(i)).ef(ex(i));
        PointF pointF = bVar.RV;
        if (pointF == null || f3 == -3.4028235E38f || f2 == -3.4028235E38f) {
            c0041aM.o(ez(c0041aM.lS()));
            c0041aM.b(ez(c0041aM.lR()), 0);
        } else {
            c0041aM.o(pointF.x / f2);
            c0041aM.b(bVar.RV.y / f3, 0);
        }
        return c0041aM.lU();
    }

    private void a(y yVar, List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        b bVarAc = this.Rt ? this.Ru : null;
        while (true) {
            String strPJ = yVar.pJ();
            if (strPJ == null) {
                return;
            }
            if (strPJ.startsWith("Format:")) {
                bVarAc = b.ac(strPJ);
            } else if (strPJ.startsWith("Dialogue:")) {
                if (bVarAc == null) {
                    q.h("SsaDecoder", "Skipping dialogue line before complete format: " + strPJ);
                } else {
                    a(strPJ, bVarAc, list, list2);
                }
            }
        }
    }

    private void a(String str, b bVar, List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        int i;
        com.applovin.exoplayer2.l.a.checkArgument(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", bVar.fR);
        if (strArrSplit.length != bVar.fR) {
            q.h("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jAb = ab(strArrSplit[bVar.Ry]);
        if (jAb == C.TIME_UNSET) {
            q.h("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long jAb2 = ab(strArrSplit[bVar.Rz]);
        if (jAb2 == C.TIME_UNSET) {
            q.h("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map<String, c> map = this.Rv;
        c cVar = (map == null || (i = bVar.RA) == -1) ? null : map.get(strArrSplit[i].trim());
        String str2 = strArrSplit[bVar.RB];
        com.applovin.exoplayer2.i.a aVarA = a(c.b.ak(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.aj(str2), this.Rw, this.Rx);
        int iA = a(jAb2, list2, list);
        for (int iA2 = a(jAb, list2, list); iA2 < iA; iA2++) {
            list.get(iA2).add(aVarA);
        }
    }

    private static long ab(String str) {
        Matcher matcher = Rs.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) ai.R(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) ai.R(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) ai.R(matcher.group(3))) * 1000000) + (Long.parseLong((String) ai.R(matcher.group(4))) * 10000);
    }

    private void ad(y yVar) {
        while (true) {
            String strPJ = yVar.pJ();
            if (strPJ == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strPJ)) {
                ae(yVar);
            } else if ("[V4+ Styles]".equalsIgnoreCase(strPJ)) {
                this.Rv = af(yVar);
            } else if ("[V4 Styles]".equalsIgnoreCase(strPJ)) {
                q.g("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strPJ)) {
                return;
            }
        }
    }

    private void ae(y yVar) {
        while (true) {
            String strPJ = yVar.pJ();
            if (strPJ == null) {
                return;
            }
            if (yVar.pj() != 0 && yVar.pm() == 91) {
                return;
            }
            String[] strArrSplit = strPJ.split(CertificateUtil.DELIMITER);
            if (strArrSplit.length == 2) {
                String lowerCase = Ascii.toLowerCase(strArrSplit[0].trim());
                lowerCase.hashCode();
                if (lowerCase.equals("playresx")) {
                    this.Rw = Float.parseFloat(strArrSplit[1].trim());
                } else if (lowerCase.equals("playresy")) {
                    try {
                        this.Rx = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map<String, c> af(y yVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVarAi = null;
        while (true) {
            String strPJ = yVar.pJ();
            if (strPJ == null || (yVar.pj() != 0 && yVar.pm() == 91)) {
                break;
            }
            if (strPJ.startsWith("Format:")) {
                aVarAi = c.a.ai(strPJ);
            } else if (strPJ.startsWith("Style:")) {
                if (aVarAi == null) {
                    q.h("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + strPJ);
                } else {
                    c cVarA = c.a(strPJ, aVarAi);
                    if (cVarA != null) {
                        linkedHashMap.put(cVarA.name, cVarA);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    @Nullable
    private static Layout.Alignment ew(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                q.h("SsaDecoder", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    private static int ex(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                q.h("SsaDecoder", "Unknown alignment: " + i);
                break;
            case 1:
            case 2:
            case 3:
                break;
            case 4:
            case 5:
            case 6:
                break;
            case 7:
            case 8:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    private static int ey(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                q.h("SsaDecoder", "Unknown alignment: " + i);
                break;
            case 1:
            case 4:
            case 7:
                break;
            case 2:
            case 5:
            case 8:
                break;
            case 3:
            case 6:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    private static float ez(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f c(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        y yVar = new y(bArr, i);
        if (!this.Rt) {
            ad(yVar);
        }
        a(yVar, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
