package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'A05' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1a, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class EnumC06761a {
    public static byte[] A01;
    public static final /* synthetic */ EnumC06761a[] A02;
    public static final EnumC06761a A03;
    public static final EnumC06761a A04;
    public static final EnumC06761a A05;
    public final String A00;

    static {
        A02();
        String strA01 = A01(27, 16, 0);
        EnumC06761a enumC06761a = new EnumC06761a(strA01, 0, strA01);
        A05 = enumC06761a;
        String strA012 = A01(13, 14, 115);
        EnumC06761a enumC06761a2 = new EnumC06761a(strA012, 1, strA012);
        A04 = enumC06761a2;
        String strA013 = A01(0, 13, 126);
        EnumC06761a enumC06761a3 = new EnumC06761a(strA013, 2, strA013);
        A03 = enumC06761a3;
        A02 = new EnumC06761a[]{enumC06761a, enumC06761a2, enumC06761a3};
    }

    public EnumC06761a(String str, int i, String str2) {
        this.A00 = str2;
    }

    public static EnumC06761a A00(String str) {
        for (EnumC06761a enumC06761a : values()) {
            if (enumC06761a.A00.equalsIgnoreCase(str)) {
                return enumC06761a;
            }
        }
        return A03;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{Ascii.CAN, Ascii.ETB, Ascii.DC2, Ascii.ESC, 1, Ascii.SO, Ascii.FF, Ascii.ESC, Ascii.GS, Ascii.US, Ascii.GS, Ascii.SYN, Ascii.ESC, 3, 1, Ascii.FS, Ascii.VT, 10, Ascii.FF, 3, 1, Ascii.SYN, Ascii.DLE, Ascii.DC2, Ascii.DLE, Ascii.ESC, Ascii.SYN, 119, 101, 98, 118, 105, 101, 119, Ascii.DEL, 112, 114, 101, 99, 97, 99, 104, 101};
    }

    public static EnumC06761a valueOf(String str) {
        return (EnumC06761a) Enum.valueOf(EnumC06761a.class, str);
    }

    public static EnumC06761a[] values() {
        return (EnumC06761a[]) A02.clone();
    }
}
