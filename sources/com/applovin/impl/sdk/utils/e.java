package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static e aVw;
    private static final Object aVx = new Object();
    private final boolean aVA;
    private final Bundle aVy;
    private final int aVz;

    private e(Context context) {
        boolean zBooleanValue;
        Bundle bundle = null;
        try {
            try {
                bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e2) {
                com.applovin.impl.sdk.x.e("AndroidManifest", "Failed to get meta data.", e2);
            }
            int i = 0;
            try {
                XmlResourceParser xmlResourceParserOpenXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
                int eventType = xmlResourceParserOpenXmlResourceParser.getEventType();
                int iIntValue = 0;
                zBooleanValue = false;
                do {
                    if (2 == eventType) {
                        try {
                            if (xmlResourceParserOpenXmlResourceParser.getName().equals("application")) {
                                for (int i2 = 0; i2 < xmlResourceParserOpenXmlResourceParser.getAttributeCount(); i2++) {
                                    String attributeName = xmlResourceParserOpenXmlResourceParser.getAttributeName(i2);
                                    String attributeValue = xmlResourceParserOpenXmlResourceParser.getAttributeValue(i2);
                                    if (attributeName.equals("networkSecurityConfig")) {
                                        iIntValue = Integer.valueOf(attributeValue.substring(1)).intValue();
                                    } else if (attributeName.equals("usesCleartextTraffic")) {
                                        zBooleanValue = Boolean.valueOf(attributeValue).booleanValue();
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            i = iIntValue;
                            try {
                                com.applovin.impl.sdk.x.e("AndroidManifest", "Failed to parse AndroidManifest.xml.", th);
                                this.aVz = i;
                            } catch (Throwable th2) {
                                this.aVz = i;
                                this.aVA = zBooleanValue;
                                throw th2;
                            }
                        }
                    }
                    eventType = xmlResourceParserOpenXmlResourceParser.next();
                } while (eventType != 1);
                this.aVz = iIntValue;
            } catch (Throwable th3) {
                th = th3;
                zBooleanValue = false;
            }
            this.aVA = zBooleanValue;
        } finally {
            this.aVy = bundle;
        }
    }

    public static e X(Context context) {
        e eVar;
        synchronized (aVx) {
            if (aVw == null) {
                aVw = new e(context);
            }
            eVar = aVw;
        }
        return eVar;
    }

    public String L(String str, String str2) {
        Bundle bundle = this.aVy;
        return bundle != null ? bundle.getString(str, str2) : str2;
    }

    public boolean dy(String str) {
        Bundle bundle = this.aVy;
        if (bundle != null) {
            return bundle.containsKey(str);
        }
        return false;
    }

    public boolean e(String str, boolean z) {
        Bundle bundle = this.aVy;
        return bundle != null ? bundle.getBoolean(str, z) : z;
    }
}
