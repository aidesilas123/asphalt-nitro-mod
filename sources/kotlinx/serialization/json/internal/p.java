package kotlinx.serialization.json.internal;

/* JADX INFO: loaded from: classes5.dex */
public /* synthetic */ class p {
    public static /* synthetic */ String a(long j, int i) {
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        if (i < 2 || i > 36) {
            i = 10;
        }
        int i2 = 64;
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= iNumberOfTrailingZeros;
            } while (j != 0);
        } else {
            long jA = (i & 1) == 0 ? (j >>> 1) / ((long) (i >>> 1)) : kotlin.text.l.a(j, i);
            long j2 = i;
            i2 = 63;
            cArr[63] = Character.forDigit((int) (j - (jA * j2)), i);
            while (jA > 0) {
                i2--;
                cArr[i2] = Character.forDigit((int) (jA % j2), i);
                jA /= j2;
            }
        }
        return new String(cArr, i2, 64 - i2);
    }
}
