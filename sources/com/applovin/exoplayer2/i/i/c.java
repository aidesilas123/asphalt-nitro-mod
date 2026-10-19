package com.applovin.exoplayer2.i.i;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.facebook.internal.security.CertificateUtil;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class c {
    private static final Pattern To = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern Tp = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final y Tq = new y();
    private final StringBuilder Tr = new StringBuilder();

    private static char E(y yVar, int i) {
        return (char) yVar.hO()[i];
    }

    @Nullable
    private static String a(y yVar, StringBuilder sb) {
        aj(yVar);
        if (yVar.pj() < 5 || !"::cue".equals(yVar.fB(5))) {
            return null;
        }
        int iIl = yVar.il();
        String strB = b(yVar, sb);
        if (strB == null) {
            return null;
        }
        if ("{".equals(strB)) {
            yVar.fx(iIl);
            return "";
        }
        String strAi = "(".equals(strB) ? ai(yVar) : null;
        if (")".equals(b(yVar, sb))) {
            return strAi;
        }
        return null;
    }

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = To.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                dVar.ay((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrL = ai.l(str, "\\.");
        String str2 = strArrL[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            dVar.ax(str2.substring(0, iIndexOf2));
            dVar.aw(str2.substring(iIndexOf2 + 1));
        } else {
            dVar.ax(str2);
        }
        if (strArrL.length > 1) {
            dVar.a((String[]) ai.a(strArrL, 1, strArrL.length));
        }
    }

    private static void a(y yVar, d dVar, StringBuilder sb) {
        aj(yVar);
        String strD = d(yVar, sb);
        if (!"".equals(strD) && CertificateUtil.DELIMITER.equals(b(yVar, sb))) {
            aj(yVar);
            String strC = c(yVar, sb);
            if (strC == null || "".equals(strC)) {
                return;
            }
            int iIl = yVar.il();
            String strB = b(yVar, sb);
            if (!";".equals(strB)) {
                if (!"}".equals(strB)) {
                    return;
                } else {
                    yVar.fx(iIl);
                }
            }
            if ("color".equals(strD)) {
                dVar.eI(com.applovin.exoplayer2.l.f.aT(strC));
                return;
            }
            if ("background-color".equals(strD)) {
                dVar.eJ(com.applovin.exoplayer2.l.f.aT(strC));
                return;
            }
            boolean z = true;
            if ("ruby-position".equals(strD)) {
                if ("over".equals(strC)) {
                    dVar.eL(1);
                    return;
                } else {
                    if ("under".equals(strC)) {
                        dVar.eL(2);
                        return;
                    }
                    return;
                }
            }
            if ("text-combine-upright".equals(strD)) {
                if (!"all".equals(strC) && !strC.startsWith("digits")) {
                    z = false;
                }
                dVar.ab(z);
                return;
            }
            if ("text-decoration".equals(strD)) {
                if (TtmlNode.UNDERLINE.equals(strC)) {
                    dVar.Y(true);
                    return;
                }
                return;
            }
            if ("font-family".equals(strD)) {
                dVar.az(strC);
                return;
            }
            if ("font-weight".equals(strD)) {
                if (TtmlNode.BOLD.equals(strC)) {
                    dVar.Z(true);
                }
            } else if ("font-style".equals(strD)) {
                if (TtmlNode.ITALIC.equals(strC)) {
                    dVar.aa(true);
                }
            } else if ("font-size".equals(strD)) {
                a(strC, dVar);
            }
        }
    }

    private static void a(String str, d dVar) {
        Matcher matcher = Tp.matcher(Ascii.toLowerCase(str));
        if (!matcher.matches()) {
            q.h("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                dVar.eK(3);
                break;
            case "em":
                dVar.eK(2);
                break;
            case "px":
                dVar.eK(1);
                break;
            default:
                throw new IllegalStateException();
        }
        dVar.u(Float.parseFloat((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1))));
    }

    private static String ai(y yVar) {
        int iIl = yVar.il();
        int iPk = yVar.pk();
        boolean z = false;
        while (iIl < iPk && !z) {
            int i = iIl + 1;
            z = ((char) yVar.hO()[iIl]) == ')';
            iIl = i;
        }
        return yVar.fB((iIl - 1) - yVar.il()).trim();
    }

    static void aj(y yVar) {
        while (true) {
            for (boolean z = true; yVar.pj() > 0 && z; z = false) {
                if (ak(yVar) || am(yVar)) {
                    break;
                }
            }
            return;
        }
    }

    private static boolean ak(y yVar) {
        char cE = E(yVar, yVar.il());
        if (cE != '\t' && cE != '\n' && cE != '\f' && cE != '\r' && cE != ' ') {
            return false;
        }
        yVar.fz(1);
        return true;
    }

    static void al(y yVar) {
        while (!TextUtils.isEmpty(yVar.pJ())) {
        }
    }

    private static boolean am(y yVar) {
        int iIl = yVar.il();
        int iPk = yVar.pk();
        byte[] bArrHO = yVar.hO();
        if (iIl + 2 > iPk) {
            return false;
        }
        int i = iIl + 1;
        if (bArrHO[iIl] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (bArrHO[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iPk) {
                yVar.fz(iPk - yVar.il());
                return true;
            }
            if (((char) bArrHO[i2]) == '*' && ((char) bArrHO[i3]) == '/') {
                i2 = i3 + 1;
                iPk = i2;
            } else {
                i2 = i3;
            }
        }
    }

    @Nullable
    static String b(y yVar, StringBuilder sb) {
        aj(yVar);
        if (yVar.pj() == 0) {
            return null;
        }
        String strD = d(yVar, sb);
        if (!"".equals(strD)) {
            return strD;
        }
        return "" + ((char) yVar.po());
    }

    @Nullable
    private static String c(y yVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int iIl = yVar.il();
            String strB = b(yVar, sb);
            if (strB == null) {
                return null;
            }
            if ("}".equals(strB) || ";".equals(strB)) {
                yVar.fx(iIl);
                z = true;
            } else {
                sb2.append(strB);
            }
        }
        return sb2.toString();
    }

    private static String d(y yVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int iIl = yVar.il();
        int iPk = yVar.pk();
        while (iIl < iPk && !z) {
            char c = (char) yVar.hO()[iIl];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                iIl++;
                sb.append(c);
            }
        }
        yVar.fz(iIl - yVar.il());
        return sb.toString();
    }

    public List<d> ah(y yVar) {
        this.Tr.setLength(0);
        int iIl = yVar.il();
        al(yVar);
        this.Tq.l(yVar.hO(), yVar.il());
        this.Tq.fx(iIl);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strA = a(this.Tq, this.Tr);
            if (strA == null || !"{".equals(b(this.Tq, this.Tr))) {
                return arrayList;
            }
            d dVar = new d();
            a(dVar, strA);
            String str = null;
            boolean z = false;
            while (!z) {
                int iIl2 = this.Tq.il();
                String strB = b(this.Tq, this.Tr);
                boolean z2 = strB == null || "}".equals(strB);
                if (!z2) {
                    this.Tq.fx(iIl2);
                    a(this.Tq, dVar, this.Tr);
                }
                str = strB;
                z = z2;
            }
            if ("}".equals(str)) {
                arrayList.add(dVar);
            }
        }
    }
}
