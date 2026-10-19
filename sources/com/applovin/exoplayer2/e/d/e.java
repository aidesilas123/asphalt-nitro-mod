package com.applovin.exoplayer2.e.d;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.e.d.b;
import com.applovin.exoplayer2.l.aj;
import com.applovin.exoplayer2.l.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
final class e {
    private static final String[] wH = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] wI = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] wJ = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    @Nullable
    public static b E(String str) throws IOException {
        try {
            return F(str);
        } catch (ai | NumberFormatException | XmlPullParserException unused) {
            q.h("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static b F(String str) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!aj.b(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw ai.c("Couldn't find xmp metadata", null);
        }
        long jB = C.TIME_UNSET;
        s<b.a> sVarGa = s.ga();
        do {
            xmlPullParserNewPullParser.next();
            if (aj.b(xmlPullParserNewPullParser, "rdf:Description")) {
                if (!a(xmlPullParserNewPullParser)) {
                    return null;
                }
                jB = b(xmlPullParserNewPullParser);
                sVarGa = c(xmlPullParserNewPullParser);
            } else if (aj.b(xmlPullParserNewPullParser, "Container:Directory")) {
                sVarGa = a(xmlPullParserNewPullParser, "Container", "Item");
            } else if (aj.b(xmlPullParserNewPullParser, "GContainer:Directory")) {
                sVarGa = a(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!aj.a(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (sVarGa.isEmpty()) {
            return null;
        }
        return new b(jB, sVarGa);
    }

    private static s<b.a> a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        s.a aVarGc = s.gc();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (aj.b(xmlPullParser, str3)) {
                String strC = aj.c(xmlPullParser, str2 + ":Mime");
                String strC2 = aj.c(xmlPullParser, str2 + ":Semantic");
                String strC3 = aj.c(xmlPullParser, str2 + ":Length");
                String strC4 = aj.c(xmlPullParser, str2 + ":Padding");
                if (strC == null || strC2 == null) {
                    return s.ga();
                }
                aVarGc.t(new b.a(strC, strC2, strC3 != null ? Long.parseLong(strC3) : 0L, strC4 != null ? Long.parseLong(strC4) : 0L));
            }
        } while (!aj.a(xmlPullParser, str4));
        return aVarGc.gd();
    }

    private static boolean a(XmlPullParser xmlPullParser) {
        for (String str : wH) {
            String strC = aj.c(xmlPullParser, str);
            if (strC != null) {
                return Integer.parseInt(strC) == 1;
            }
        }
        return false;
    }

    private static long b(XmlPullParser xmlPullParser) {
        for (String str : wI) {
            String strC = aj.c(xmlPullParser, str);
            if (strC != null) {
                long j = Long.parseLong(strC);
                return j == -1 ? C.TIME_UNSET : j;
            }
        }
        return C.TIME_UNSET;
    }

    private static s<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : wJ) {
            String strC = aj.c(xmlPullParser, str);
            if (strC != null) {
                return s.k(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a(MimeTypes.VIDEO_MP4, "MotionPhoto", Long.parseLong(strC), 0L));
            }
        }
        return s.ga();
    }
}
