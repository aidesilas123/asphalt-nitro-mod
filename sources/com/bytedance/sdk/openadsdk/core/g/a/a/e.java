package com.bytedance.sdk.openadsdk.core.g.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.g.a.b;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.bytedance.sdk.openadsdk.core.g.c.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: VastXmlPullParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends com.bytedance.sdk.openadsdk.core.g.a.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f1504g = null;

    /* JADX INFO: compiled from: VastXmlPullParser.java */
    static class a {
        String a;
        a.EnumC0136a b;
        a.b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f1505d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<com.bytedance.sdk.openadsdk.core.g.b.c> f1506e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<com.bytedance.sdk.openadsdk.core.g.b.c> f1507f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f1508g = Float.MIN_VALUE;

        public a() {
        }

        public a(String str, a.EnumC0136a enumC0136a, a.b bVar) {
            a(str, enumC0136a, bVar);
        }

        public void a(String str) {
            this.f1506e.add(new c.a(str).a());
        }

        public void a(String str, a.EnumC0136a enumC0136a, a.b bVar) {
            this.a = str;
            this.b = enumC0136a;
            this.c = bVar;
        }

        public void b(String str) {
            this.f1507f.add(new c.a(str).a());
        }
    }

    public e(Context context, int i, int i2) {
        super(context, i, i2);
    }

    private com.bytedance.sdk.openadsdk.core.g.a a(XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.g.b.c> list) throws Throwable {
        xmlPullParser.require(2, f1504g, "VAST");
        boolean z = false;
        String strB = null;
        while (xmlPullParser.next() != 1) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("Error".equals(name)) {
                    strB = b(xmlPullParser, name);
                } else if ("Ad".equals(name)) {
                    if (a(xmlPullParser.getAttributeValue(f1504g, "sequence"))) {
                        while (true) {
                            if (xmlPullParser.next() == 3 && "Ad".equals(xmlPullParser.getName())) {
                                break;
                            }
                            if (xmlPullParser.getEventType() == 2) {
                                String name2 = xmlPullParser.getName();
                                if ("InLine".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.g.a aVarA = b.a(this.b, xmlPullParser, list, this.c, this.f1509d);
                                    if (aVarA != null) {
                                        if (!TextUtils.isEmpty(aVarA.g())) {
                                            return aVarA;
                                        }
                                        this.f1510e = -6;
                                        return null;
                                    }
                                } else if ("Wrapper".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.g.a aVarB = b(xmlPullParser, list);
                                    if (aVarB != null) {
                                        return aVarB;
                                    }
                                } else {
                                    a(xmlPullParser);
                                }
                            }
                        }
                    } else {
                        a(xmlPullParser);
                    }
                    z = true;
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (!z) {
            this.f1510e = -4;
            c(strB);
        }
        if (this.f1510e == 0) {
            this.f1510e = -5;
        }
        return null;
    }

    private static List<com.bytedance.sdk.openadsdk.core.g.b.c> a(String str, boolean z) {
        return TextUtils.isEmpty(str) ? new ArrayList() : Collections.singletonList(new c.a(str).a(z).a());
    }

    public static List<com.bytedance.sdk.openadsdk.core.g.b.c> a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        return d(b(xmlPullParser, str));
    }

    private void a(com.bytedance.sdk.openadsdk.core.g.a aVar) {
        if (this.f1511f == null) {
            this.f1511f = new b.a();
        }
        b.a aVar2 = this.f1511f;
        aVar2.a = this.f1510e;
        aVar2.b = this.a;
        if (aVar != null) {
            aVar2.c = aVar.a().b.size() <= 0;
        }
    }

    public static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static void a(XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        while (xmlPullParser.getEventType() != 1) {
            if (str.equals(xmlPullParser.getName()) && xmlPullParser.getEventType() == i) {
                return;
            } else {
                xmlPullParser.next();
            }
        }
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.bytedance.sdk.openadsdk.core.g.a b(org.xmlpull.v1.XmlPullParser r17, java.util.List<com.bytedance.sdk.openadsdk.core.g.b.c> r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.g.a.a.e.b(org.xmlpull.v1.XmlPullParser, java.util.List):com.bytedance.sdk.openadsdk.core.g.a");
    }

    public static String b(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strTrim;
        String str2 = f1504g;
        xmlPullParser.require(2, str2, str);
        if (xmlPullParser.next() == 4) {
            strTrim = xmlPullParser.getText().trim();
            xmlPullParser.nextTag();
        } else {
            strTrim = "";
        }
        xmlPullParser.require(3, str2, str);
        return strTrim;
    }

    private void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.g.b.c.a(com.bytedance.sdk.openadsdk.core.g.b.c.a(Collections.singletonList(new c.a(str).a()), this.a > 0 ? com.bytedance.sdk.openadsdk.core.g.a.a.NO_ADS_VAST_RESPONSE : com.bytedance.sdk.openadsdk.core.g.a.a.UNDEFINED_ERROR, -1L, null), (c.b) null);
    }

    private static List<com.bytedance.sdk.openadsdk.core.g.b.c> d(String str) {
        return a(str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.g.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.bytedance.sdk.openadsdk.core.g.a a(java.lang.String r6, java.util.List<com.bytedance.sdk.openadsdk.core.g.b.c> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.String r0 = "UTF-8"
            r1 = 0
            r5.f1510e = r1
            android.content.Context r2 = r5.b
            r3 = 0
            if (r2 != 0) goto Le
            r6 = -1
            r5.f1510e = r6
            return r3
        Le:
            boolean r2 = android.text.TextUtils.isEmpty(r6)
            if (r2 == 0) goto L18
            r6 = -2
            r5.f1510e = r6
            return r3
        L18:
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            byte[] r6 = r6.getBytes(r0)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            org.xmlpull.v1.XmlPullParser r6 = android.util.Xml.newPullParser()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            java.lang.String r4 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r6.setFeature(r4, r1)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            r6.setInput(r2, r0)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            r6.nextTag()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            com.bytedance.sdk.openadsdk.core.g.a r6 = r5.a(r6, r7)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            r5.a(r6)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L4a
            r2.close()     // Catch: java.io.IOException -> L3a
        L3a:
            return r6
        L3b:
            r6 = move-exception
            goto L4c
        L3d:
            r2 = r3
        L3e:
            r6 = -3
            r5.f1510e = r6     // Catch: java.lang.Throwable -> L4a
            r5.a(r3)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L49
            r2.close()     // Catch: java.io.IOException -> L49
        L49:
            return r3
        L4a:
            r6 = move-exception
            r3 = r2
        L4c:
            if (r3 == 0) goto L51
            r3.close()     // Catch: java.io.IOException -> L51
        L51:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.g.a.a.e.a(java.lang.String, java.util.List):com.bytedance.sdk.openadsdk.core.g.a");
    }
}
