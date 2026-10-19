package com.bytedance.sdk.openadsdk.core.g.a.a;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: LinearParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.bytedance.sdk.openadsdk.core.g.b a(org.xmlpull.v1.XmlPullParser r22) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 550
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.g.a.a.c.a(org.xmlpull.v1.XmlPullParser):com.bytedance.sdk.openadsdk.core.g.b");
    }

    private static String a(XmlPullParser xmlPullParser, int i, double d2, com.bytedance.sdk.openadsdk.core.g.a aVar) throws XmlPullParserException, IOException {
        int i2 = Integer.MIN_VALUE;
        String str = null;
        double d3 = Double.NEGATIVE_INFINITY;
        int i3 = Integer.MIN_VALUE;
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("MediaFiles")) {
                break;
            }
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("MediaFile")) {
                String str2 = e.f1504g;
                String attributeValue = xmlPullParser.getAttributeValue(str2, "type");
                int iB = e.b(xmlPullParser.getAttributeValue(str2, "width"));
                int iB2 = e.b(xmlPullParser.getAttributeValue(str2, "height"));
                int iB3 = e.b(xmlPullParser.getAttributeValue(str2, "bitrate"));
                String strB = e.b(xmlPullParser, "MediaFile");
                if (iB > 0 && iB2 > 0 && com.bytedance.sdk.openadsdk.core.g.c.d.a.contains(attributeValue) && !TextUtils.isEmpty(strB)) {
                    double dA = com.bytedance.sdk.openadsdk.core.g.c.d.a(i, d2, iB, iB2, iB3, attributeValue);
                    if (dA > d3) {
                        str = strB;
                        d3 = dA;
                        i2 = iB;
                        i3 = iB2;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            aVar.d(str);
            aVar.a(i2);
            aVar.b(i3);
        }
        return str;
    }

    private static void a(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.g.a aVar) throws XmlPullParserException, IOException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("VideoClicks")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                if (name.equals("ClickThrough")) {
                    aVar.c(e.b(xmlPullParser, "ClickThrough"));
                } else if (name.equals("ClickTracking")) {
                    aVar.a().g(e.a(xmlPullParser, "ClickTracking"));
                } else {
                    e.a(xmlPullParser);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(org.xmlpull.v1.XmlPullParser r8, com.bytedance.sdk.openadsdk.core.g.a r9, int r10, double r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.g.a.a.c.a(org.xmlpull.v1.XmlPullParser, com.bytedance.sdk.openadsdk.core.g.a, int, double):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(org.xmlpull.v1.XmlPullParser r7, com.bytedance.sdk.openadsdk.core.g.d r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.g.a.a.c.a(org.xmlpull.v1.XmlPullParser, com.bytedance.sdk.openadsdk.core.g.d):void");
    }

    public static double b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (e.b(xmlPullParser, "Duration").split(CertificateUtil.DELIMITER).length != 3) {
            return 0.0d;
        }
        try {
            return (Integer.parseInt(r2[0].trim()) * 60 * 60) + (Integer.parseInt(r2[1].trim()) * 60) + Float.parseFloat(r2[2].trim());
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.g.b.c> c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return e.a(xmlPullParser, "Tracking");
    }
}
