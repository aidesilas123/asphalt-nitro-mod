package com.pgl.ssdk;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.facebook.internal.security.CertificateUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.pgl.ssdk.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C1645c {
    private static final FileFilter a = new C1644b();

    /* JADX WARN: Removed duplicated region for block: B:20:0x0029 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a(java.lang.String r2) {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L17
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L17
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L15
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L15
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> L13
            r2.close()     // Catch: java.lang.Throwable -> L22
            goto L22
        L13:
            goto L19
        L15:
            r2 = r0
            goto L19
        L17:
            r2 = r0
            r1 = r2
        L19:
            if (r2 == 0) goto L20
            r2.close()     // Catch: java.lang.Throwable -> L1f
            goto L20
        L1f:
        L20:
            if (r1 == 0) goto L27
        L22:
            r1.close()     // Catch: java.lang.Throwable -> L26
            goto L27
        L26:
        L27:
            if (r0 != 0) goto L2c
            java.lang.String r2 = "0"
            goto L30
        L2c:
            java.lang.String r2 = r0.trim()
        L30:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.C1645c.a(java.lang.String):java.lang.String");
    }

    private static HashMap a() {
        FileReader fileReader;
        HashMap map = new HashMap();
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/cpuinfo");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            try {
                                break;
                            } catch (Throwable unused) {
                            }
                        } else {
                            String[] strArrSplit = line.split(CertificateUtil.DELIMITER, 2);
                            if (strArrSplit.length >= 2) {
                                String strTrim = strArrSplit[0].trim();
                                String strTrim2 = strArrSplit[1].trim();
                                if (map.get(strTrim) == null) {
                                    map.put(strTrim, strTrim2);
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused3) {
                            }
                        }
                        if (fileReader != null) {
                        }
                        return map;
                    }
                }
                bufferedReader2.close();
            } catch (Throwable unused4) {
            }
        } catch (Throwable unused5) {
            fileReader = null;
        }
        try {
            fileReader.close();
        } catch (Throwable unused6) {
        }
        return map;
    }

    public static String b() {
        int length;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap mapA = a();
            try {
                length = new File("/sys/devices/system/cpu/").listFiles(a).length;
            } catch (Throwable unused) {
                length = -1;
            }
            jSONObject.put("core", length);
            String str2 = null;
            try {
                str = (String) mapA.get("Hardware");
            } catch (Throwable unused2) {
                str = null;
            }
            jSONObject.put("hw", str == null ? "" : str.trim());
            jSONObject.put("max", a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
            jSONObject.put("min", a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"));
            try {
                str2 = (String) mapA.get("Features");
            } catch (Throwable unused3) {
            }
            jSONObject.put("ft", str2 != null ? str2.trim() : "");
        } catch (Throwable unused4) {
        }
        String string = jSONObject.toString();
        return string == null ? JsonUtils.EMPTY_JSON : string.trim();
    }
}
