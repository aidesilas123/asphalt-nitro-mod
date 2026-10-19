package com.bytedance.sdk.openadsdk.core.g.a.a;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: InLineParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static com.bytedance.sdk.openadsdk.core.g.a a(Context context, XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.g.b.c> list, int i, double d2) throws XmlPullParserException, IOException {
        String name;
        xmlPullParser.require(2, e.f1504g, "InLine");
        com.bytedance.sdk.openadsdk.core.g.a aVar = new com.bytedance.sdk.openadsdk.core.g.a();
        while (true) {
            if (xmlPullParser.next() != 3 || !"InLine".equals(xmlPullParser.getName())) {
                if (xmlPullParser.getEventType() == 2) {
                    name = xmlPullParser.getName();
                    name.hashCode();
                    switch (name) {
                        case "AdVerifications":
                            aVar.a(d.a(xmlPullParser));
                            break;
                        case "Creatives":
                            if (!TextUtils.isEmpty(aVar.g()) && aVar.c() != null) {
                                e.a(xmlPullParser);
                                break;
                            } else {
                                while (xmlPullParser.next() != 3) {
                                    if (xmlPullParser.getEventType() == 2) {
                                        if ("Creative".equals(xmlPullParser.getName())) {
                                            a(context, xmlPullParser, aVar, i, d2);
                                        } else {
                                            e.a(xmlPullParser);
                                        }
                                    }
                                }
                                break;
                            }
                            break;
                        case "Description":
                            aVar.b(e.b(xmlPullParser, name));
                            break;
                        case "Error":
                            list.addAll(e.a(xmlPullParser, name));
                            break;
                        case "Extensions":
                            while (true) {
                                if (xmlPullParser.getEventType() != 3 || !"Extensions".equals(xmlPullParser.getName())) {
                                    xmlPullParser.next();
                                    if (xmlPullParser.getEventType() == 2 && "AdVerifications".equals(xmlPullParser.getName())) {
                                        aVar.a(d.a(xmlPullParser));
                                    }
                                }
                            }
                            break;
                        case "AdTitle":
                            aVar.a(e.b(xmlPullParser, name));
                            break;
                        case "Impression":
                            aVar.a().a(e.a(xmlPullParser, name));
                            break;
                        default:
                            e.a(xmlPullParser);
                            break;
                    }
                }
            } else {
                aVar.a().j(list);
                return aVar;
            }
        }
    }

    public static void a(Context context, XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.g.a aVar, int i, double d2) throws XmlPullParserException, IOException {
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Linear".equals(xmlPullParser.getName()) && TextUtils.isEmpty(aVar.g())) {
                    c.a(xmlPullParser, aVar, i, d2);
                } else if ("CompanionAds".equals(xmlPullParser.getName()) && aVar.c() == null) {
                    aVar.a(a.a(context, xmlPullParser));
                } else {
                    e.a(xmlPullParser);
                }
            }
        }
    }
}
