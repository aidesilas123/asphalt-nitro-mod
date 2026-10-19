package com.bytedance.sdk.openadsdk.core.g.a.a;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.g.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: VastAdVerificationsParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static Set<j> a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        j jVarA;
        if (xmlPullParser == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Verification".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(e.f1504g, "vendor");
                    String strB = null;
                    String strB2 = null;
                    String strB3 = null;
                    while (true) {
                        if (xmlPullParser.getEventType() != 3 || !"Verification".equals(xmlPullParser.getName())) {
                            xmlPullParser.next();
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                switch (name) {
                                    case "Tracking":
                                        if (!"verificationNotExecuted".equals(xmlPullParser.getAttributeValue(e.f1504g, NotificationCompat.CATEGORY_EVENT))) {
                                            break;
                                        } else {
                                            strB3 = e.b(xmlPullParser, "Tracking");
                                            break;
                                        }
                                        break;
                                    case "JavaScriptResource":
                                        if (!CampaignEx.KEY_OMID.equals(xmlPullParser.getAttributeValue(e.f1504g, "apiFramework"))) {
                                            break;
                                        } else {
                                            strB = e.b(xmlPullParser, "JavaScriptResource");
                                            break;
                                        }
                                        break;
                                    case "VerificationParameters":
                                        strB2 = e.b(xmlPullParser, "VerificationParameters");
                                        break;
                                }
                            }
                        } else if (!TextUtils.isEmpty(strB) && (jVarA = j.a(CampaignEx.KEY_OMID, strB, attributeValue, strB2, strB3)) != null) {
                            hashSet.add(jVarA);
                        }
                    }
                } else {
                    e.a(xmlPullParser);
                }
            }
        }
        return hashSet;
    }
}
