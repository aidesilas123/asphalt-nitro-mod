package com.fyber.inneractive.sdk.util;

/* JADX INFO: loaded from: classes2.dex */
public class t0 {
    public static boolean a(String str, com.fyber.inneractive.sdk.model.vast.i iVar) {
        String strSubstring = str != null ? str.substring(str.lastIndexOf(".") + 1) : "";
        String string = iVar.toString();
        if (string.equalsIgnoreCase(strSubstring)) {
            return true;
        }
        if (strSubstring.equals("jpeg") || strSubstring.equals("jpg")) {
            return string.equals("Jpeg") || string.equals("Jpg");
        }
        return false;
    }
}
