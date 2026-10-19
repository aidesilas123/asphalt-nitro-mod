package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class ResLoader {
    ResLoader() {
    }

    public static byte[] getBytes(int i) {
        try {
            InputStream inputStreamOpenRawResource = SUtils.getApplicationContext().getResources().openRawResource(i);
            int iAvailable = inputStreamOpenRawResource.available();
            byte[] bArr = new byte[iAvailable];
            inputStreamOpenRawResource.read(bArr, 0, iAvailable);
            inputStreamOpenRawResource.close();
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] getBytes(String str) {
        InputStream inputStream = getInputStream(str);
        byte[] bArr = null;
        if (inputStream == null) {
            return null;
        }
        try {
            int iAvailable = inputStream.available();
            bArr = new byte[iAvailable];
            inputStream.read(bArr, 0, iAvailable);
            inputStream.close();
            return bArr;
        } catch (Exception unused) {
            return bArr;
        }
    }

    private static InputStream getInputStream(String str) {
        try {
            InputStream inputStreamOpen = SUtils.getApplicationContext().getAssets().open(trimName(str));
            if (inputStreamOpen != null) {
                return inputStreamOpen;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getLength(String str) {
        InputStream inputStream = getInputStream(str);
        if (inputStream == null) {
            return 0;
        }
        try {
            int iAvailable = inputStream.available();
            inputStream.close();
            return iAvailable;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static String trimName(String str) {
        if (str.startsWith(".//")) {
            str = str.substring(3);
        } else if (str.startsWith("./")) {
            str = str.substring(2);
        }
        return str.trim();
    }
}
