package com.applovin.exoplayer2.i.i;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.i.f;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.facebook.internal.security.CertificateUtil;
import com.json.o2;
import com.json.v4;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private static final Map<String, Integer> TA;
    public static final Pattern Tx = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern Ty = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map<String, Integer> Tz;

    /* JADX INFO: Access modifiers changed from: private */
    static class a {
        private static final Comparator<a> TB = new Comparator() { // from class: com.applovin.exoplayer2.i.i.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return f.a.a((f.a) obj, (f.a) obj2);
            }
        };
        private final b TC;
        private final int TD;

        private a(b bVar, int i) {
            this.TC = bVar;
            this.TD = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar.TC.oX, aVar2.TC.oX);
        }
    }

    private static final class b {
        public final String TE;
        public final Set<String> TF;
        public final String name;
        public final int oX;

        private b(String str, int i, String str2, Set<String> set) {
            this.oX = i;
            this.name = str;
            this.TE = str2;
            this.TF = set;
        }

        public static b b(String str, int i) {
            String str2;
            String strTrim = str.trim();
            com.applovin.exoplayer2.l.a.checkArgument(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrL = ai.l(strTrim, "\\.");
            String str3 = strArrL[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < strArrL.length; i2++) {
                hashSet.add(strArrL[i2]);
            }
            return new b(str3, i, str2, hashSet);
        }

        public static b nb() {
            return new b("", 0, "", Collections.emptySet());
        }
    }

    private static final class c implements Comparable<c> {
        public final int TG;
        public final com.applovin.exoplayer2.i.i.d TH;

        public c(int i, com.applovin.exoplayer2.i.i.d dVar) {
            this.TG = i;
            this.TH = dVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return Integer.compare(this.TG, cVar.TG);
        }
    }

    private static final class d {
        public CharSequence NW;
        public long Gi = 0;
        public long Sy = 0;
        public int TI = 2;
        public float Oa = -3.4028235E38f;
        public int Ob = 1;
        public int Oc = 0;
        public float Od = -3.4028235E38f;
        public int Oe = Integer.MIN_VALUE;
        public float Of = 1.0f;
        public int Ol = Integer.MIN_VALUE;

        private static float b(int i, float f2) {
            if (i == 0) {
                return 1.0f - f2;
            }
            if (i == 1) {
                return f2 <= 0.5f ? f2 * 2.0f : (1.0f - f2) * 2.0f;
            }
            if (i == 2) {
                return f2;
            }
            throw new IllegalStateException(String.valueOf(i));
        }

        private static float d(float f2, int i) {
            if (f2 == -3.4028235E38f || i != 0 || (f2 >= 0.0f && f2 <= 1.0f)) {
                return f2 != -3.4028235E38f ? f2 : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        private static float eM(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int eN(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        @Nullable
        private static Layout.Alignment eO(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            q.h("WebvttCueParser", "Unknown textAlignment: " + i);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        public e nc() {
            return new e(nd().lU(), this.Gi, this.Sy);
        }

        public a.C0041a nd() {
            float fEM = this.Od;
            if (fEM == -3.4028235E38f) {
                fEM = eM(this.TI);
            }
            int iEN = this.Oe;
            if (iEN == Integer.MIN_VALUE) {
                iEN = eN(this.TI);
            }
            a.C0041a c0041aEi = new a.C0041a().a(eO(this.TI)).b(d(this.Oa, this.Ob), this.Ob).ef(this.Oc).o(fEM).eg(iEN).p(Math.min(this.Of, b(iEN, fEM))).ei(this.Ol);
            CharSequence charSequence = this.NW;
            if (charSequence != null) {
                c0041aEi.m(charSequence);
            }
            return c0041aEi;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        Tz = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        TA = Collections.unmodifiableMap(map2);
    }

    private static int a(String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static int a(List<com.applovin.exoplayer2.i.i.d> list, @Nullable String str, b bVar) {
        List<c> listB = b(list, str, bVar);
        for (int i = 0; i < listB.size(); i++) {
            com.applovin.exoplayer2.i.i.d dVar = listB.get(i).TH;
            if (dVar.mS() != -1) {
                return dVar.mS();
            }
        }
        return -1;
    }

    static SpannedString a(@Nullable String str, String str2, List<com.applovin.exoplayer2.i.i.d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char cCharAt = str2.charAt(i);
            if (cCharAt == '&') {
                i++;
                int iIndexOf = str2.indexOf(59, i);
                int iIndexOf2 = str2.indexOf(32, i);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    a(str2.substring(i, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i++;
            } else {
                int iA = i + 1;
                if (iA < str2.length()) {
                    boolean z = str2.charAt(iA) == '/';
                    iA = a(str2, iA);
                    int i2 = iA - 2;
                    boolean z2 = str2.charAt(i2) == '/';
                    int i3 = i + (z ? 2 : 1);
                    if (!z2) {
                        i2 = iA - 1;
                    }
                    String strSubstring = str2.substring(i3, i2);
                    if (!strSubstring.trim().isEmpty()) {
                        String strAF = aF(strSubstring);
                        if (aq(strAF)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    b bVar = (b) arrayDeque.pop();
                                    a(str, bVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new a(bVar, spannableStringBuilder.length()));
                                    }
                                    if (bVar.name.equals(strAF)) {
                                        break;
                                    }
                                }
                            } else if (!z2) {
                                arrayDeque.push(b.b(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i = iA;
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (b) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        a(str, b.nb(), (List<a>) Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    @Nullable
    public static e a(y yVar, List<com.applovin.exoplayer2.i.i.d> list) {
        String strPJ = yVar.pJ();
        if (strPJ == null) {
            return null;
        }
        Pattern pattern = Tx;
        Matcher matcher = pattern.matcher(strPJ);
        if (matcher.matches()) {
            return a((String) null, matcher, yVar, list);
        }
        String strPJ2 = yVar.pJ();
        if (strPJ2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strPJ2);
        if (matcher2.matches()) {
            return a(strPJ.trim(), matcher2, yVar, list);
        }
        return null;
    }

    @Nullable
    private static e a(@Nullable String str, Matcher matcher, y yVar, List<com.applovin.exoplayer2.i.i.d> list) {
        d dVar = new d();
        try {
            dVar.Gi = h.aG((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)));
            dVar.Sy = h.aG((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2)));
            a((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(3)), dVar);
            StringBuilder sb = new StringBuilder();
            String strPJ = yVar.pJ();
            while (!TextUtils.isEmpty(strPJ)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strPJ.trim());
                strPJ = yVar.pJ();
            }
            dVar.NW = a(str, sb.toString(), list);
            return dVar.nc();
        } catch (NumberFormatException unused) {
            q.h("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, com.applovin.exoplayer2.i.i.d dVar, int i, int i2) {
        if (dVar == null) {
            return;
        }
        if (dVar.mH() != -1) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new StyleSpan(dVar.mH()), i, i2, 33);
        }
        if (dVar.mI()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (dVar.mJ()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (dVar.mM()) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new ForegroundColorSpan(dVar.mL()), i, i2, 33);
        }
        if (dVar.mO()) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new BackgroundColorSpan(dVar.mN()), i, i2, 33);
        }
        if (dVar.mK() != null) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new TypefaceSpan(dVar.mK()), i, i2, 33);
        }
        int iMX = dVar.mX();
        if (iMX == 1) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.mY(), true), i, i2, 33);
        } else if (iMX == 2) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.mY()), i, i2, 33);
        } else if (iMX == 3) {
            com.applovin.exoplayer2.i.d.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.mY() / 100.0f), i, i2, 33);
        }
        if (dVar.mZ()) {
            spannableStringBuilder.setSpan(new com.applovin.exoplayer2.i.d.a(), i, i2, 33);
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, @Nullable String str, b bVar, List<a> list, List<com.applovin.exoplayer2.i.i.d> list2) {
        int iA = a(list2, str, bVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, a.TB);
        int i = bVar.oX;
        int length = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (v4.D.equals(((a) arrayList.get(i2)).TC.name)) {
                a aVar = (a) arrayList.get(i2);
                int iG = g(a(list2, str, aVar.TC), iA, 1);
                int i3 = aVar.TC.oX - length;
                int i4 = aVar.TD - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i3, i4);
                spannableStringBuilder.delete(i3, i4);
                spannableStringBuilder.setSpan(new com.applovin.exoplayer2.i.d.c(charSequenceSubSequence.toString(), iG), i, i3, 33);
                length += charSequenceSubSequence.length();
                i = i3;
            }
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String str : set) {
            Map<String, Integer> map = Tz;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i, i2, 33);
            } else {
                Map<String, Integer> map2 = TA;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i, i2, 33);
                }
            }
        }
    }

    private static void a(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        switch (str) {
            case "gt":
                spannableStringBuilder.append('>');
                break;
            case "lt":
                spannableStringBuilder.append('<');
                break;
            case "amp":
                spannableStringBuilder.append('&');
                break;
            case "nbsp":
                spannableStringBuilder.append(' ');
                break;
            default:
                q.h("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void a(@Nullable String str, b bVar, List<a> list, SpannableStringBuilder spannableStringBuilder, List<com.applovin.exoplayer2.i.i.d> list2) {
        int i;
        int length;
        i = bVar.oX;
        length = spannableStringBuilder.length();
        String str2 = bVar.name;
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, bVar.TF, i, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case "ruby":
                a(spannableStringBuilder, str, bVar, list, list2);
                break;
            default:
                return;
        }
        List<c> listB = b(list2, str, bVar);
        for (int i2 = 0; i2 < listB.size(); i2++) {
            a(spannableStringBuilder, listB.get(i2).TH, i, length);
        }
    }

    private static void a(String str, d dVar) {
        Matcher matcher = Ty.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1));
            String str3 = (String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    b(str3, dVar);
                } else if ("align".equals(str2)) {
                    dVar.TI = aE(str3);
                } else if (o2.h.L.equals(str2)) {
                    c(str3, dVar);
                } else if ("size".equals(str2)) {
                    dVar.Of = h.aH(str3);
                } else if ("vertical".equals(str2)) {
                    dVar.Ol = aD(str3);
                } else {
                    q.h("WebvttCueParser", "Unknown cue setting " + str2 + CertificateUtil.DELIMITER + str3);
                }
            } catch (NumberFormatException unused) {
                q.h("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static a.C0041a aA(String str) {
        d dVar = new d();
        a(str, dVar);
        return dVar.nd();
    }

    private static int aB(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            case "start":
                return 0;
            default:
                q.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int aC(String str) {
        str.hashCode();
        switch (str) {
            case "line-left":
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "line-right":
            case "end":
                return 2;
            default:
                q.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int aD(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        q.h("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }

    private static int aE(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 2;
            case "end":
                return 3;
            case "left":
                return 4;
            case "right":
                return 5;
            case "start":
                return 1;
            default:
                q.h("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static String aF(String str) {
        String strTrim = str.trim();
        com.applovin.exoplayer2.l.a.checkArgument(!strTrim.isEmpty());
        return ai.m(strTrim, "[ \\.]")[0];
    }

    private static boolean aq(String str) {
        str.hashCode();
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "u":
            case "v":
            case "rt":
            case "lang":
            case "ruby":
                return true;
            default:
                return false;
        }
    }

    private static List<c> b(List<com.applovin.exoplayer2.i.i.d> list, @Nullable String str, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.applovin.exoplayer2.i.i.d dVar = list.get(i);
            int iA = dVar.a(str, bVar.name, bVar.TF, bVar.TE);
            if (iA > 0) {
                arrayList.add(new c(iA, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void b(String str, d dVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            dVar.Oc = aB(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            dVar.Oa = h.aH(str);
            dVar.Ob = 0;
        } else {
            dVar.Oa = Integer.parseInt(str);
            dVar.Ob = 1;
        }
    }

    private static void c(String str, d dVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            dVar.Oe = aC(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        dVar.Od = h.aH(str);
    }

    private static int g(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    static com.applovin.exoplayer2.i.a n(CharSequence charSequence) {
        d dVar = new d();
        dVar.NW = charSequence;
        return dVar.nd().lU();
    }
}
