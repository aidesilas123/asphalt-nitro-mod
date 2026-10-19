package com.applovin.exoplayer2.i.g;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.aj;
import com.applovin.exoplayer2.l.q;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.applovin.exoplayer2.i.d {
    private static final Pattern Si = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern Sj = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern Sk = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern Sl = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern Sm = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern Sn = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern So = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b Sp = new b(30.0f, 1, 1);
    private static final a Sq = new a(32, 15);
    private final XmlPullParserFactory Sr;

    private static final class a {
        final int Ss;
        final int St;

        a(int i, int i2) {
            this.Ss = i;
            this.St = i2;
        }
    }

    private static final class b {
        final float Su;
        final int Sv;
        final int Sw;

        b(float f2, int i, int i2) {
            this.Su = f2;
            this.Sv = i;
            this.Sw = i2;
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.g.c$c, reason: collision with other inner class name */
    private static final class C0047c {
        final int dE;
        final int height;

        C0047c(int i, int i2) {
            this.dE = i;
            this.height = i2;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.Sr = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static long a(java.lang.String r13, com.applovin.exoplayer2.i.g.c.b r14) throws com.applovin.exoplayer2.i.h {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(java.lang.String, com.applovin.exoplayer2.i.g.c$b):long");
    }

    private static a a(XmlPullParser xmlPullParser, a aVar) throws com.applovin.exoplayer2.i.h {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = So.matcher(attributeValue);
        if (!matcher.matches()) {
            q.h("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int i = Integer.parseInt((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)));
            int i2 = Integer.parseInt((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2)));
            if (i != 0 && i2 != 0) {
                return new a(i, i2);
            }
            throw new com.applovin.exoplayer2.i.h("Invalid cell resolution " + i + " " + i2);
        } catch (NumberFormatException unused) {
            q.h("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.i.g.d a(org.xmlpull.v1.XmlPullParser r19, @androidx.annotation.Nullable com.applovin.exoplayer2.i.g.d r20, java.util.Map<java.lang.String, com.applovin.exoplayer2.i.g.e> r21, com.applovin.exoplayer2.i.g.c.b r22) throws com.applovin.exoplayer2.i.h {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(org.xmlpull.v1.XmlPullParser, com.applovin.exoplayer2.i.g.d, java.util.Map, com.applovin.exoplayer2.i.g.c$b):com.applovin.exoplayer2.i.g.d");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b3  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.i.g.e a(org.xmlpull.v1.XmlPullParser r17, com.applovin.exoplayer2.i.g.c.a r18, @androidx.annotation.Nullable com.applovin.exoplayer2.i.g.c.C0047c r19) {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(org.xmlpull.v1.XmlPullParser, com.applovin.exoplayer2.i.g.c$a, com.applovin.exoplayer2.i.g.c$c):com.applovin.exoplayer2.i.g.e");
    }

    private static g a(@Nullable g gVar) {
        return gVar == null ? new g() : gVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.i.g.g a(org.xmlpull.v1.XmlPullParser r12, com.applovin.exoplayer2.i.g.g r13) {
        /*
            Method dump skipped, instruction units count: 928
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.c.a(org.xmlpull.v1.XmlPullParser, com.applovin.exoplayer2.i.g.g):com.applovin.exoplayer2.i.g.g");
    }

    private static Map<String, g> a(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, @Nullable C0047c c0047c, Map<String, e> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (aj.b(xmlPullParser, "style")) {
                String strC = aj.c(xmlPullParser, "style");
                g gVarA = a(xmlPullParser, new g());
                if (strC != null) {
                    for (String str : ao(strC)) {
                        gVarA.b(map.get(str));
                    }
                }
                String strMQ = gVarA.mQ();
                if (strMQ != null) {
                    map.put(strMQ, gVarA);
                }
            } else if (aj.b(xmlPullParser, TtmlNode.TAG_REGION)) {
                e eVarA = a(xmlPullParser, aVar, c0047c);
                if (eVarA != null) {
                    map2.put(eVarA.f2do, eVarA);
                }
            } else if (aj.b(xmlPullParser, "metadata")) {
                a(xmlPullParser, map3);
            }
        } while (!aj.a(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void a(String str, g gVar) throws com.applovin.exoplayer2.i.h {
        Matcher matcher;
        String str2;
        String[] strArrL = ai.l(str, "\\s+");
        if (strArrL.length == 1) {
            matcher = Sk.matcher(str);
        } else {
            if (strArrL.length != 2) {
                throw new com.applovin.exoplayer2.i.h("Invalid number of entries for fontSize: " + strArrL.length + ".");
            }
            matcher = Sk.matcher(strArrL[1]);
            q.h("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new com.applovin.exoplayer2.i.h("Invalid expression for fontSize: '" + str + "'.");
        }
        str2 = (String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                gVar.eH(3);
                break;
            case "em":
                gVar.eH(2);
                break;
            case "px":
                gVar.eH(1);
                break;
            default:
                throw new com.applovin.exoplayer2.i.h("Invalid unit for fontSize: '" + str2 + "'.");
        }
        gVar.t(Float.parseFloat((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1))));
    }

    private static void a(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String strC;
        do {
            xmlPullParser.next();
            if (aj.b(xmlPullParser, "image") && (strC = aj.c(xmlPullParser, "id")) != null) {
                map.put(strC, xmlPullParser.nextText());
            }
        } while (!aj.a(xmlPullParser, "metadata"));
    }

    private static String[] ao(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : ai.l(strTrim, "\\s+");
    }

    @Nullable
    private static Layout.Alignment ap(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.hashCode();
        switch (lowerCase) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static boolean aq(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals("body") || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    private static float ar(String str) {
        Matcher matcher = Sl.matcher(str);
        if (!matcher.matches()) {
            q.h("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1)))));
        } catch (NumberFormatException e2) {
            q.b("TtmlDecoder", "Failed to parse shear: " + str, e2);
            return Float.MAX_VALUE;
        }
    }

    private static b d(XmlPullParser xmlPullParser) throws com.applovin.exoplayer2.i.h {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f2 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (ai.l(attributeValue2, " ").length != 2) {
                throw new com.applovin.exoplayer2.i.h("frameRateMultiplier doesn't have 2 parts");
            }
            f2 = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        }
        b bVar = Sp;
        int i2 = bVar.Sv;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = bVar.Sw;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(i * f2, i2, i3);
    }

    @Nullable
    private static C0047c e(XmlPullParser xmlPullParser) {
        String strC = aj.c(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strC == null) {
            return null;
        }
        Matcher matcher = Sn.matcher(strC);
        if (!matcher.matches()) {
            q.h("TtmlDecoder", "Ignoring non-pixel tts extent: " + strC);
            return null;
        }
        try {
            return new C0047c(Integer.parseInt((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(1))), Integer.parseInt((String) com.applovin.exoplayer2.l.a.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            q.h("TtmlDecoder", "Ignoring malformed tts extent: " + strC);
            return null;
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f c(byte[] bArr, int i, boolean z) throws com.applovin.exoplayer2.i.h {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.Sr.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new e(""));
            C0047c c0047cE = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarD = Sp;
            a aVarA = Sq;
            h hVar = null;
            int i2 = 0;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i2 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVarD = d(xmlPullParserNewPullParser);
                            aVarA = a(xmlPullParserNewPullParser, Sq);
                            c0047cE = e(xmlPullParserNewPullParser);
                        }
                        C0047c c0047c = c0047cE;
                        b bVar2 = bVarD;
                        a aVar = aVarA;
                        if (aq(name)) {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                bVar = bVar2;
                                a(xmlPullParserNewPullParser, map, aVar, c0047c, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    d dVarA = a(xmlPullParserNewPullParser, dVar, map2, bVar);
                                    arrayDeque.push(dVarA);
                                    if (dVar != null) {
                                        dVar.a(dVarA);
                                    }
                                } catch (com.applovin.exoplayer2.i.h e2) {
                                    q.b("TtmlDecoder", "Suppressing parser error", e2);
                                    i2++;
                                }
                            }
                            bVarD = bVar;
                        } else {
                            q.g("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i2++;
                            bVarD = bVar2;
                        }
                        c0047cE = c0047c;
                        aVarA = aVar;
                    } else if (eventType == 4) {
                        ((d) com.applovin.exoplayer2.l.a.checkNotNull(dVar)).a(d.as(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((d) com.applovin.exoplayer2.l.a.checkNotNull((d) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new com.applovin.exoplayer2.i.h("No TTML subtitles found");
        } catch (IOException e3) {
            throw new IllegalStateException("Unexpected error when reading input.", e3);
        } catch (XmlPullParserException e4) {
            throw new com.applovin.exoplayer2.i.h("Unable to decode source", e4);
        }
    }
}
