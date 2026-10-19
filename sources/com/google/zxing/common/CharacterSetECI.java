package com.google.zxing.common;

import com.google.zxing.FormatException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public enum CharacterSetECI {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, "ISO-8859-1"),
    ISO8859_2(4, "ISO-8859-2"),
    ISO8859_3(5, "ISO-8859-3"),
    ISO8859_4(6, "ISO-8859-4"),
    ISO8859_5(7, "ISO-8859-5"),
    ISO8859_6(8, "ISO-8859-6"),
    ISO8859_7(9, "ISO-8859-7"),
    ISO8859_8(10, "ISO-8859-8"),
    ISO8859_9(11, "ISO-8859-9"),
    ISO8859_10(12, "ISO-8859-10"),
    ISO8859_11(13, "ISO-8859-11"),
    ISO8859_13(15, "ISO-8859-13"),
    ISO8859_14(16, "ISO-8859-14"),
    ISO8859_15(17, "ISO-8859-15"),
    ISO8859_16(18, "ISO-8859-16"),
    SJIS(20, "Shift_JIS"),
    Cp1250(21, "windows-1250"),
    Cp1251(22, "windows-1251"),
    Cp1252(23, "windows-1252"),
    Cp1256(24, "windows-1256"),
    UnicodeBigUnmarked(25, "UTF-16BE", "UnicodeBig"),
    UTF8(26, C.UTF8_NAME),
    ASCII(new int[]{27, 170}, C.ASCII_NAME),
    Big5(28),
    GB18030(29, "GB2312", "EUC_CN", "GBK"),
    EUC_KR(30, "EUC-KR");

    private static final Map<Integer, CharacterSetECI> B = new HashMap();
    private static final Map<String, CharacterSetECI> C = new HashMap();
    private final int[] E;
    private final String[] F;

    static {
        for (CharacterSetECI characterSetECI : values()) {
            if (Charset.isSupported(characterSetECI.name())) {
                for (int i : characterSetECI.E) {
                    B.put(Integer.valueOf(i), characterSetECI);
                }
                C.put(characterSetECI.name(), characterSetECI);
                for (String str : characterSetECI.F) {
                    C.put(str, characterSetECI);
                }
            }
        }
    }

    CharacterSetECI(int i) {
        this(new int[]{i}, new String[0]);
    }

    CharacterSetECI(int i, String... strArr) {
        this.E = new int[]{i};
        this.F = strArr;
    }

    CharacterSetECI(int[] iArr, String... strArr) {
        this.E = iArr;
        this.F = strArr;
    }

    public static CharacterSetECI getCharacterSetECI(Charset charset) {
        return C.get(charset.name());
    }

    public static CharacterSetECI getCharacterSetECIByName(String str) {
        return C.get(str);
    }

    public static CharacterSetECI getCharacterSetECIByValue(int i) throws FormatException {
        if (i < 0 || i >= 900) {
            throw FormatException.getFormatInstance();
        }
        return B.get(Integer.valueOf(i));
    }

    public Charset e() {
        return Charset.forName(name());
    }

    public int f() {
        return this.E[0];
    }
}
