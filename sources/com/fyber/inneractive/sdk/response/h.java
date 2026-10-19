package com.fyber.inneractive.sdk.response;

import android.util.Xml;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.b0;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    public boolean a;
    public String b;

    public h(String str) throws Exception {
        this.a = false;
        try {
            a(str);
            this.a = true;
            IAlog.a("parser: Parsing finished. parser is ready", new Object[0]);
        } catch (Exception e2) {
            IAlog.b("Error parsing Ad XML: %s", e2.getMessage());
            throw e2;
        }
    }

    public final void a(String str) throws XmlPullParserException, IOException {
        String text;
        IAlog.a("Start reading Response", new Object[0]);
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.nextTag();
        xmlPullParserNewPullParser.require(2, null, "tns:Response");
        while (xmlPullParserNewPullParser.next() != 3) {
            if (xmlPullParserNewPullParser.getEventType() == 2) {
                int i = 1;
                if (xmlPullParserNewPullParser.getName().equals("tns:Ad")) {
                    xmlPullParserNewPullParser.require(2, null, "tns:Ad");
                    IAlog.a("Start reading Ad", new Object[0]);
                    if (xmlPullParserNewPullParser.next() == 4) {
                        text = xmlPullParserNewPullParser.getText();
                        xmlPullParserNewPullParser.nextTag();
                    } else {
                        IAlog.e("No text: %s", xmlPullParserNewPullParser.getName());
                        text = "";
                    }
                    String strTrim = text.trim();
                    this.b = strTrim == null ? null : b0.f2737f.a(strTrim);
                } else {
                    if (xmlPullParserNewPullParser.getEventType() != 2) {
                        throw new IllegalStateException();
                    }
                    while (i != 0) {
                        int next = xmlPullParserNewPullParser.next();
                        if (next == 2) {
                            i++;
                        } else if (next == 3) {
                            i--;
                        }
                    }
                }
            }
        }
    }
}
