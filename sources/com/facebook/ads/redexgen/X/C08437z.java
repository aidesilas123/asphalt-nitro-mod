package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7z, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08437z {
    public static AtomicInteger A00;
    public static byte[] A01;
    public static String[] A02 = {"TEIgz1GSUxi0w6HxI", "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad", "95AkSvnB6didgYS0", "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1", "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ", "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr", "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ", "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"};
    public static final Object A03;
    public static final String A04;
    public static final Map<String, Integer> A05;
    public static final Set<String> A06;

    static {
        A06();
        A04 = C08437z.class.getName();
        A03 = new Object();
        A06 = Collections.synchronizedSet(new HashSet());
        A05 = Collections.synchronizedMap(new HashMap());
        A00 = new AtomicInteger();
    }

    public static int A00(Context context) {
        return context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) - A06.size();
    }

    public static AnonymousClass81 A01(String str, C7S c7s, Map<String, String> map) {
        AnonymousClass81 anonymousClass81 = null;
        try {
            anonymousClass81 = new AnonymousClass81(c7s.A08().A01(), c7s.A08().A02(), new C08307l(str, map, true).A02());
            A0C(anonymousClass81, c7s);
            return anonymousClass81;
        } catch (Exception unused) {
            return anonymousClass81;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static JSONArray A03(C7S c7s) {
        return A04(c7s, -1);
    }

    public static JSONArray A04(C7S c7s, int i) {
        InterfaceC08407w interfaceC08407wA07;
        JSONArray jSONArray = new JSONArray();
        synchronized (A03) {
            FileInputStream fileInputStreamOpenFileInput = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            try {
                try {
                    if (new File(c7s.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s)).exists()) {
                        fileInputStreamOpenFileInput = c7s.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s));
                        inputStreamReader = new InputStreamReader(fileInputStreamOpenFileInput);
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null || i == 0) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(line);
                            if (!jSONObject.has(A02(260, 7, 27))) {
                                jSONObject.put(A02(260, 7, 27), String.valueOf(0));
                            }
                            String string = jSONObject.getString(A02(343, 2, 126));
                            if (!A06.contains(string)) {
                                int i2 = jSONObject.getInt(A02(260, 7, 27));
                                Map<String, Integer> map = A05;
                                if (map.containsKey(string)) {
                                    jSONObject.put(A02(260, 7, 27), String.valueOf(map.get(string)));
                                } else {
                                    A0E(string, i2);
                                }
                                jSONArray.put(jSONObject);
                                if (i > 0) {
                                    i--;
                                }
                            }
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            e = e2;
                            interfaceC08407wA07 = c7s.A07();
                            interfaceC08407wA07.A3Y(e);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                } catch (IOException | JSONException e3) {
                    c7s.A07().A3Y(e3);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e4) {
                            e = e4;
                            interfaceC08407wA07 = c7s.A07();
                            interfaceC08407wA07.A3Y(e);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                }
            } finally {
                if (bufferedReader != null) {
                    try {
                    } catch (IOException e5) {
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject A05(AnonymousClass81 anonymousClass81) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(A02(343, 2, 126), UUID.randomUUID().toString());
        jSONObject.put(A02(TTAdConstant.LANDING_PAGE_TYPE_CODE, 4, 93), anonymousClass81.A03());
        jSONObject.put(A02(402, 4, 127), LM.A02(anonymousClass81.A01()));
        jSONObject.put(A02(355, 12, 71), LM.A02(anonymousClass81.A00()));
        jSONObject.put(A02(345, 10, 113), anonymousClass81.A02());
        jSONObject.put(A02(267, 4, 64), anonymousClass81.A04() != null ? new JSONObject(anonymousClass81.A04()) : new JSONObject());
        jSONObject.put(A02(260, 7, 27), String.valueOf(0));
        return jSONObject;
    }

    public static void A06() {
        A01 = new byte[]{7, 95, 83, 55, 1, Ascii.FS, 3, 48, Ascii.FS, 6, Ascii.GS, 7, Ascii.SYN, 1, 73, 83, 63, Ascii.GS, Ascii.DC2, 91, 8, 92, Ascii.CAN, Ascii.EM, Ascii.DLE, Ascii.EM, 8, Ascii.EM, 92, Ascii.CAN, Ascii.EM, Ascii.RS, 9, Ascii.ESC, 92, Ascii.EM, 10, Ascii.EM, Ascii.DC2, 8, Ascii.SI, 92, Ascii.SUB, Ascii.NAK, Ascii.DLE, Ascii.EM, 82, Ascii.SO, 44, 35, 106, 57, 109, 41, 40, 33, 40, 57, 40, 109, 43, 36, 33, 40, 108, 119, 118, 113, 102, 116, 108, 99, 97, 118, 117, 42, Ascii.EM, 10, 1, Ascii.ESC, 44, 0, Ascii.SUB, 1, Ascii.ESC, 41, 45, 46, Ascii.SUB, Ascii.VT, 6, 10, 1, Ascii.FF, 10, 33, 10, Ascii.ESC, Ascii.CAN, 0, Ascii.GS, 4, Ascii.US, 58, 61, 40, 42, 111, 43, 42, 45, 58, 40, 111, 42, 57, 42, 33, 59, 60, 111, 41, 38, 35, 42, 97, 69, 9, 38, 35, 42, 111, 60, 38, 53, 42, 117, 111, 111, 87, 85, 76, 76, 89, 88, Ascii.FS, 89, 74, 89, 82, 72, 79, Ascii.DC2, 40, Ascii.DLE, Ascii.DC2, Ascii.VT, Ascii.VT, Ascii.DC2, Ascii.NAK, Ascii.FS, 91, Ascii.CAN, Ascii.DC4, 9, 9, Ascii.SO, Ascii.VT, Ascii.SI, Ascii.RS, Ascii.US, 91, Ascii.US, Ascii.RS, Ascii.EM, Ascii.SO, Ascii.FS, 91, Ascii.RS, Ascii.CR, Ascii.RS, Ascii.NAK, Ascii.SI, 91, Ascii.ETB, Ascii.DC2, Ascii.NAK, Ascii.RS, 85, 98, 68, 79, 95, 88, 81, Ascii.SYN, 66, 89, Ascii.SYN, 67, 70, 82, 87, 66, 83, Ascii.SYN, 67, 88, 68, 83, 85, 89, 68, 82, 83, 82, Ascii.SYN, 82, 83, 84, 67, 81, 122, 89, 81, 115, 64, 83, 88, 66, Ascii.CAN, Ascii.SYN, 87, 82, 82, 95, 88, 81, Ascii.SYN, 66, 89, Ascii.SYN, 121, 88, 81, 89, 95, 88, 81, 115, 64, 83, 88, 66, Ascii.CAN, 58, 17, 0, 8, Ascii.NAK, 6, 19, 19, 2, 10, Ascii.ETB, 19, 88, 93, 72, 93, Ascii.DEL, 126, 68, 119, 116, 124, 124, 114, 117, 124, 43, 42, 45, 58, 40, 35, 32, 40, 60, 91, 84, 83, 84, 78, 85, 88, 89, Ascii.GS, 88, 75, 88, 83, 73, Ascii.GS, 78, 85, 82, 72, 81, 89, Ascii.GS, 83, 82, 73, Ascii.GS, 95, 88, Ascii.GS, 72, 77, 89, 92, 73, 88, 89, Ascii.GS, 73, 82, Ascii.GS, 114, 83, 90, 82, 84, 83, 90, 120, 75, 88, 83, 73, 19, 107, 102, 126, 104, 126, 126, 100, 98, 99, 82, 100, 105, 72, 94, 72, 72, 82, 84, 85, 100, 79, 82, 86, 94, 105, 113, 115, 106, 106, Ascii.DEL, 126, 95, 108, Ascii.DEL, 116, 110, 105, 58, 39, 58, 49, 55, 32, 54, 59, 50, 39, 75, 77, 90, 76, 65, 72, 93, 103, 91, 87, 92, 93, 119, 106, 110, 102, 85, 88, 81, 68};
    }

    public static void A07(Context context) {
        synchronized (A03) {
            File file = new File(context.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), context));
            if (file.exists()) {
                file.delete();
            }
            A09(context, 0);
            A06.clear();
            A05.clear();
        }
    }

    public static void A08(Context context) {
        A09(context, context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) + 1);
    }

    public static void A09(Context context, int i) {
        context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).edit().putInt(A02(75, 10, 19), i >= 0 ? i : 0).apply();
    }

    public static void A0A(C7S c7s, String str) {
        File file = new File(c7s.getFilesDir(), str);
        if (!file.exists() || file.delete()) {
            return;
        }
        c7s.A07().A3Y(new RuntimeException(A02(47, 18, 49)));
    }

    public static void A0B(Y9 y9, String str) {
        Map<String, Integer> map = A05;
        Integer num = map.get(str);
        if (num == null) {
            if (y9.A04().A8o()) {
                Log.e(A04, A02(PsExtractor.PRIVATE_STREAM_1, 66, 74));
            }
            num = 0;
        } else {
            map.remove(str);
        }
        map.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void A0C(AnonymousClass81 anonymousClass81, C7S c7s) {
        if (anonymousClass81 == null || c7s == null) {
            return;
        }
        synchronized (A03) {
            try {
                String processSpecificName = ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s);
                File file = new File(c7s.getFilesDir(), processSpecificName);
                if (file.exists()) {
                    int iA07 = IR.A07(c7s);
                    long length = file.length();
                    if (iA07 > 0 && length > iA07) {
                        boolean zDelete = file.delete();
                        A09(c7s, 0);
                        A06.clear();
                        A05.clear();
                        if (zDelete) {
                            Map<String, String> mapA4j = c7s.A03().A4j();
                            mapA4j.put(A02(383, 7, 62), A02(271, 10, 103));
                            mapA4j.put(A02(390, 12, 68), String.valueOf(IronSourceConstants.IS_CAP_SESSION));
                            A01(A02(102, 36, 51) + length + A02(1, 15, 15) + A00.getAndIncrement(), c7s, mapA4j);
                            return;
                        }
                        Log.e(A02(85, 17, 19), A02(16, 31, 0));
                    }
                }
                JSONObject jSONObjectA05 = A05(anonymousClass81);
                FileOutputStream fileOutputStreamOpenFileOutput = c7s.openFileOutput(processSpecificName, 32768);
                fileOutputStreamOpenFileOutput.write((jSONObjectA05.toString() + A02(0, 1, 113)).getBytes());
                fileOutputStreamOpenFileOutput.close();
                A08(c7s);
            } catch (Exception e2) {
                c7s.A07().A3Y(e2);
            }
        }
    }

    public static void A0D(String str) {
        A05.remove(str);
        A06.add(str);
    }

    public static void A0E(String str, int i) {
        if (A06.contains(str)) {
            throw new RuntimeException(A02(290, 53, 65));
        }
        Map<String, Integer> map = A05;
        boolean zContainsKey = map.containsKey(str);
        if (A02[7].charAt(23) == 'F') {
            throw new RuntimeException();
        }
        A02[6] = "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs";
        if (zContainsKey) {
            map.remove(str);
        }
        map.put(str, Integer.valueOf(i));
    }

    public static boolean A0F(C7S c7s) {
        if (IR.A0O(c7s)) {
            return A0H(c7s);
        }
        boolean zA0G = A0G(c7s);
        String[] strArr = A02;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[3] = "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN";
        strArr2[1] = "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ";
        return zA0G;
    }

    public static boolean A0G(C7S c7s) {
        JSONArray jSONArray = new JSONArray();
        synchronized (A03) {
            int i = 0;
            FileInputStream fileInputStreamOpenFileInput = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            FileOutputStream fileOutputStreamOpenFileOutput = null;
            try {
                try {
                    if (new File(c7s.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s)).exists()) {
                        fileInputStreamOpenFileInput = c7s.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s));
                        inputStreamReader = new InputStreamReader(fileInputStreamOpenFileInput);
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(line);
                            String string = jSONObject.getString(A02(343, 2, 126));
                            if (!A06.contains(string)) {
                                Map<String, Integer> map = A05;
                                if (map.containsKey(string)) {
                                    Integer num = map.get(string);
                                    Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 0);
                                    int iA02 = IR.A02(c7s);
                                    if (iA02 <= -1 || numValueOf.intValue() <= iA02 - 1) {
                                        jSONObject.put(A02(260, 7, 27), String.valueOf(numValueOf));
                                        jSONArray.put(jSONObject);
                                    } else {
                                        A0D(string);
                                        i++;
                                    }
                                } else {
                                    jSONArray.put(jSONObject);
                                }
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            sb.append(jSONArray.getJSONObject(i2).toString()).append('\n');
                        }
                        fileOutputStreamOpenFileOutput = c7s.openFileOutput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), c7s), 0);
                        fileOutputStreamOpenFileOutput.write(sb.toString().getBytes());
                    }
                    A09(c7s, A00(c7s));
                    if (i > 0) {
                        c7s.A07().A9M(A02(271, 10, 103), C08417x.A2V, new C08427y(A02(138, 15, 64), A02(367, 16, 102) + i));
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            c7s.A07().A3Y(e2);
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                    if (fileOutputStreamOpenFileOutput != null) {
                        fileOutputStreamOpenFileOutput.close();
                    }
                    A06.clear();
                    A05.clear();
                    return true;
                } finally {
                    if (bufferedReader != null) {
                        try {
                        } catch (IOException e3) {
                        }
                    }
                }
            } catch (IOException | JSONException e4) {
                c7s.A07().A3Y(e4);
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e5) {
                        c7s.A07().A3Y(e5);
                        A06.clear();
                        A05.clear();
                        return false;
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStreamOpenFileInput != null) {
                    fileInputStreamOpenFileInput.close();
                }
                if (fileOutputStreamOpenFileOutput != null) {
                    fileOutputStreamOpenFileOutput.close();
                }
                A06.clear();
                A05.clear();
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01fa A[Catch: IOException -> 0x0208, all -> 0x0252, TryCatch #5 {IOException -> 0x0208, blocks: (B:94:0x01eb, B:96:0x01f0, B:98:0x01f5, B:100:0x01fa, B:102:0x01ff, B:104:0x0204), top: B:137:0x01eb, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01ff A[Catch: IOException -> 0x0208, all -> 0x0252, TryCatch #5 {IOException -> 0x0208, blocks: (B:94:0x01eb, B:96:0x01f0, B:98:0x01f5, B:100:0x01fa, B:102:0x01ff, B:104:0x0204), top: B:137:0x01eb, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0204 A[Catch: IOException -> 0x0208, all -> 0x0252, TRY_LEAVE, TryCatch #5 {IOException -> 0x0208, blocks: (B:94:0x01eb, B:96:0x01f0, B:98:0x01f5, B:100:0x01fa, B:102:0x01ff, B:104:0x0204), top: B:137:0x01eb, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0227 A[Catch: IOException -> 0x023f, all -> 0x0252, TryCatch #6 {IOException -> 0x023f, blocks: (B:115:0x0222, B:117:0x0227, B:119:0x022c, B:121:0x0231, B:123:0x0236, B:125:0x023b), top: B:139:0x0222, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x022c A[Catch: IOException -> 0x023f, all -> 0x0252, TryCatch #6 {IOException -> 0x023f, blocks: (B:115:0x0222, B:117:0x0227, B:119:0x022c, B:121:0x0231, B:123:0x0236, B:125:0x023b), top: B:139:0x0222, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0231 A[Catch: IOException -> 0x023f, all -> 0x0252, TryCatch #6 {IOException -> 0x023f, blocks: (B:115:0x0222, B:117:0x0227, B:119:0x022c, B:121:0x0231, B:123:0x0236, B:125:0x023b), top: B:139:0x0222, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0236 A[Catch: IOException -> 0x023f, all -> 0x0252, TryCatch #6 {IOException -> 0x023f, blocks: (B:115:0x0222, B:117:0x0227, B:119:0x022c, B:121:0x0231, B:123:0x0236, B:125:0x023b), top: B:139:0x0222, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x023b A[Catch: IOException -> 0x023f, all -> 0x0252, TRY_LEAVE, TryCatch #6 {IOException -> 0x023f, blocks: (B:115:0x0222, B:117:0x0227, B:119:0x022c, B:121:0x0231, B:123:0x0236, B:125:0x023b), top: B:139:0x0222, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f0 A[Catch: IOException -> 0x0208, all -> 0x0252, TryCatch #5 {IOException -> 0x0208, blocks: (B:94:0x01eb, B:96:0x01f0, B:98:0x01f5, B:100:0x01fa, B:102:0x01ff, B:104:0x0204), top: B:137:0x01eb, outer: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f5 A[Catch: IOException -> 0x0208, all -> 0x0252, TryCatch #5 {IOException -> 0x0208, blocks: (B:94:0x01eb, B:96:0x01f0, B:98:0x01f5, B:100:0x01fa, B:102:0x01ff, B:104:0x0204), top: B:137:0x01eb, outer: #14 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0H(com.facebook.ads.redexgen.X.C7S r17) {
        /*
            Method dump skipped, instruction units count: 597
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C08437z.A0H(com.facebook.ads.redexgen.X.7S):boolean");
    }

    public static boolean A0I(String str) {
        return A06.contains(str) || A05.containsKey(str);
    }
}
