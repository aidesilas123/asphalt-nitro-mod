package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class StringUtils {
    private static final Charset a = Charset.defaultCharset();
    public static final Charset b;
    public static final Charset c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f4325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f4326e;

    static {
        Charset charsetForName;
        Charset charsetForName2;
        Charset charsetForName3 = null;
        try {
            charsetForName = Charset.forName("SJIS");
        } catch (UnsupportedCharsetException unused) {
            charsetForName = null;
        }
        b = charsetForName;
        try {
            charsetForName2 = Charset.forName("GB2312");
        } catch (UnsupportedCharsetException unused2) {
            charsetForName2 = null;
        }
        c = charsetForName2;
        try {
            charsetForName3 = Charset.forName("EUC_JP");
        } catch (UnsupportedCharsetException unused3) {
        }
        f4325d = charsetForName3;
        Charset charset = b;
        f4326e = (charset != null && charset.equals(a)) || (charsetForName3 != null && charsetForName3.equals(a));
    }

    private StringUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007b A[PHI: r10
      0x007b: PHI (r10v6 int) = (r10v1 int), (r10v5 int), (r10v1 int) binds: [B:49:0x0086, B:58:0x009f, B:43:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.nio.charset.Charset guessCharset(byte[] r19, java.util.Map<com.google.zxing.DecodeHintType, ?> r20) {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessCharset(byte[], java.util.Map):java.nio.charset.Charset");
    }

    public static String guessEncoding(byte[] bArr, Map<DecodeHintType, ?> map) {
        Charset charsetGuessCharset = guessCharset(bArr, map);
        return charsetGuessCharset.equals(b) ? "SJIS" : charsetGuessCharset.equals(StandardCharsets.UTF_8) ? "UTF8" : charsetGuessCharset.equals(StandardCharsets.ISO_8859_1) ? "ISO8859_1" : charsetGuessCharset.name();
    }
}
