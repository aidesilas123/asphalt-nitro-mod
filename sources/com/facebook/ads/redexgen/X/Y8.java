package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class Y8 extends AbstractC08257f {
    public static byte[] A00;
    public static String[] A01 = {"jrDlnlrK", "iy84zN2ZyMyHjuWhjHotEPEqpiKyPe89", "dhX4OOJDnXlCZP9pL8vYTq2cDSC1Ep0f", "V5wGJKV", "mjidYuf4", "f2fONlBHJxOBrlG7qLTpq6ivaaiBfV2e", "tNB7OhzIAdgb5rZvvS5ZVqcHEeMF5GsI", "2zYeFugNugInNaPrLN78SJaAZY8hyaCl"};
    public static final C7Z A02;
    public static final C7Z A03;
    public static final C7Z A04;
    public static final C7Z A05;
    public static final C7Z A06;
    public static final C7Z A07;
    public static final C7Z A08;
    public static final C7Z A09;
    public static final C7Z A0A;
    public static final C7Z[] A0B;
    public static final String A0C;

    static {
        A04();
        C7Z c7z = new C7Z(0, A00(159, 8, 31), A00(73, 16, 35));
        A04 = c7z;
        C7Z c7z2 = new C7Z(1, A00(207, 8, 2), A00(89, 59, 111));
        A09 = c7z2;
        String strA00 = A00(173, 8, 25);
        String strA002 = A00(4, 7, 49);
        C7Z c7z3 = new C7Z(2, strA00, strA002);
        A05 = c7z3;
        String strA003 = A00(215, 4, 66);
        String strA004 = A00(69, 4, 81);
        C7Z c7z4 = new C7Z(3, strA003, strA004);
        A0A = c7z4;
        String strA005 = A00(203, 4, 55);
        String strA006 = A00(11, 4, 110);
        C7Z c7z5 = new C7Z(4, strA005, strA006);
        A08 = c7z5;
        C7Z c7z6 = new C7Z(5, A00(191, 12, 9), strA006);
        A07 = c7z6;
        C7Z c7z7 = new C7Z(6, A00(181, 10, 19), strA004);
        A06 = c7z7;
        C7Z c7z8 = new C7Z(7, A00(155, 4, 29), strA004);
        A03 = c7z8;
        C7Z c7z9 = new C7Z(8, A00(148, 7, 100), strA002);
        A02 = c7z9;
        C7Z[] c7zArr = {c7z, c7z2, c7z3, c7z4, c7z5, c7z6, c7z7, c7z8, c7z9};
        A0B = c7zArr;
        A0C = AbstractC08257f.A02(A00(167, 6, 109), c7zArr);
    }

    public Y8(C7b c7b) {
        super(c7b);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-102, -73, -102, -71, -92, -87, -81, -96, -94, -96, -83, -22, -35, -39, -28, -93, -107, -100, -107, -109, -92, 112, 122, 112, -106, -94, -97, -99, 112, -75, -58, -75, -66, -60, -61, 112, -89, -104, -107, -94, -107, 112, -11, -25, -18, -25, -27, -10, -62, 5, 17, Ascii.ETB, Ascii.DLE, Ascii.SYN, -54, -52, -53, -62, -24, -12, -15, -17, -62, 7, Ascii.CAN, 7, Ascii.DLE, Ascii.SYN, Ascii.NAK, -49, -64, -45, -49, -95, -110, -91, -95, 109, -99, -97, -106, -102, -114, -97, -90, 109, -104, -110, -90, -19, -34, -15, -19, -71, -21, -34, -33, -34, -21, -34, -25, -36, -34, -20, -71, Ascii.CR, 8, 4, -2, 7, Ascii.FF, -71, -24, -25, -71, -18, -23, -35, -38, -19, -34, -71, -36, -38, -20, -36, -38, -35, -34, -71, -24, -25, -71, -35, -34, -27, -34, -19, -34, -71, -21, -34, -20, -19, -21, -30, -36, -19, -17, 2, 2, -13, -5, -2, 2, -85, -88, -69, -88, -82, -65, -82, -73, -67, -88, -78, -83, -4, Ascii.CR, -4, 5, Ascii.VT, 10, -77, -75, -84, -78, -75, -84, -73, -68, -80, -94, -80, -80, -90, -84, -85, -100, -90, -95, -90, -104, -90, -90, -100, -94, -95, -110, -89, -100, -96, -104, -43, -54, -50, -58, -96, -101, -105, -111, -102, -117, -107, -112, -32, -27, -36, -47};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC08257f
    public final String A06() {
        return A00(167, 6, 109);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC08257f
    public final C7Z[] A0A() {
        return A0B;
    }

    public final Cursor A0B() {
        return A05().rawQuery(A00(42, 27, 120), null);
    }

    public final Cursor A0C() {
        return A05().rawQuery(A0C, null);
    }

    public final Cursor A0D(String str) {
        return A05().rawQuery(A00(15, 27, 38) + A04.A01 + A00(0, 4, 80), new String[]{str});
    }

    public final String A0E(String str, int i, String str2, double d2, double d3, String str3, Map<String, String> map) throws SQLiteException {
        String string = UUID.randomUUID().toString();
        ContentValues contentValues = new ContentValues(9);
        contentValues.put(A04.A01, string);
        contentValues.put(A09.A01, str);
        contentValues.put(A05.A01, Integer.valueOf(i));
        contentValues.put(A0A.A01, str2);
        contentValues.put(A08.A01, Double.valueOf(d2));
        contentValues.put(A07.A01, Double.valueOf(d3));
        contentValues.put(A06.A01, str3);
        contentValues.put(A03.A01, map != null ? new JSONObject(map).toString() : null);
        if (A01[2].charAt(6) == '9') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "s3YvQaCKhotLBtEqHITMzm2bHxiojI5j";
        strArr[5] = "6LuOsEhvTekWWK5Zi4EuC4VUkJbxKkeL";
        contentValues.put(A02.A01, (Integer) 0);
        A05().insertOrThrow(A00(167, 6, 109), null, contentValues);
        return string;
    }

    public final boolean A0F(String str) {
        return A05().delete(A00(167, 6, 109), new StringBuilder().append(A04.A01).append(A00(0, 4, 80)).toString(), new String[]{str}) > 0;
    }
}
