package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1007Fc {
    public static String[] A08 = {"XC7eQ7mnDigGIQL7dx0KfLpc2FT", "IUrjEkKy3b2jJtDJZ33sGt", "", "4VXLd4NK2UMSrr9tKiehY90A", "S2gwvpBwwRoio7AP3LwECfAaRkk6O4ZY", "9TUF7Ks7YtQxur", "s5iWH5PZ", "Ea283cgdBM89En3yGupwQHUZzzjf5u4Q"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public final List<C1006Fb> A06 = new ArrayList();
    public final List<SpannableString> A07 = new ArrayList();
    public final StringBuilder A05 = new StringBuilder();

    public C1007Fc(int i, int i2) {
        A09(i);
        A0A(i2);
    }

    private final SpannableString A00() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.A05);
        int length = spannableStringBuilder.length();
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        int i4 = -1;
        boolean z = false;
        int i5 = -1;
        for (int i6 = 0; i6 < this.A06.size(); i6++) {
            C1006Fb c1006Fb = this.A06.get(i6);
            boolean z2 = c1006Fb.A02;
            int i7 = c1006Fb.A01;
            if (i7 != 8) {
                z = i7 == 7;
                if (i7 != 7) {
                    i5 = C3A.A0K[i7];
                }
            }
            int i8 = c1006Fb.A00;
            if (A08[1].length() != 22) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[6] = "A7DJ6NHY";
            strArr[5] = "4roHVg72rzpV8d";
            if (i8 != (i6 + 1 < this.A06.size() ? this.A06.get(i6 + 1).A00 : length)) {
                if (i != -1 && !z2) {
                    A02(spannableStringBuilder, i, i8);
                    i = -1;
                } else if (i == -1 && z2) {
                    i = i8;
                }
                if (i2 != -1 && !z) {
                    A01(spannableStringBuilder, i2, i8);
                    i2 = -1;
                } else if (i2 == -1 && z) {
                    i2 = i8;
                }
                if (i5 != i4) {
                    A03(spannableStringBuilder, i3, i8, i4);
                    i4 = i5;
                    i3 = i8;
                }
            }
        }
        if (i != -1 && i != length) {
            A02(spannableStringBuilder, i, length);
        }
        if (i2 != -1 && i2 != length) {
            A01(spannableStringBuilder, i2, length);
        }
        if (i3 != length) {
            A03(spannableStringBuilder, i3, length, i4);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public static void A01(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
    }

    public static void A02(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
    }

    public static void A03(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
        if (i3 == -1) {
            return;
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
    }

    public final int A04() {
        return this.A03;
    }

    public final FV A05() {
        float f2;
        int i;
        int i2;
        int i3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i4 = 0; i4 < this.A07.size(); i4++) {
            spannableStringBuilder.append((CharSequence) this.A07.get(i4));
            spannableStringBuilder.append('\n');
        }
        spannableStringBuilder.append((CharSequence) A00());
        if (A08[2].length() != 4) {
            A08[4] = "XUGi3jQBIuRQftqARNMB36bn2TyuzRos";
            if (spannableStringBuilder.length() == 0) {
                if (A08[1].length() != 22) {
                    A08[1] = "sMaadG1MTySiyP3TGzo1T4";
                    return null;
                }
                A08[1] = "nS4SC9sWxiUu8g9Arai4ZN";
                return null;
            }
            int i5 = this.A02;
            int i6 = this.A04;
            if (A08[7].charAt(3) != 'N') {
                A08[4] = "yDKFp8g0FkQkvFDtr9inWFZi093Wo6Xo";
                int i7 = i5 + i6;
                int length = (32 - i7) - spannableStringBuilder.length();
                int i8 = i7 - length;
                if (this.A00 == 2 && (Math.abs(i8) < 3 || length < 0)) {
                    f2 = 0.5f;
                    i = 1;
                } else if (this.A00 != 2 || i8 <= 0) {
                    f2 = (0.8f * (i7 / 32.0f)) + 0.1f;
                    i = 0;
                } else {
                    int i9 = 32 - length;
                    if (A08[4].charAt(13) == 'W') {
                        throw new RuntimeException();
                    }
                    A08[2] = "dWj1xsuyJgYxC";
                    f2 = (0.8f * (i9 / 32.0f)) + 0.1f;
                    i = 2;
                }
                if (this.A00 == 1 || this.A03 > 7) {
                    i2 = 2;
                    i3 = (this.A03 - 15) - 2;
                } else {
                    i2 = 0;
                    i3 = this.A03;
                }
                return new FV(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f2, i, Float.MIN_VALUE);
            }
        }
        throw new RuntimeException();
    }

    public final void A06() {
        int length = this.A05.length();
        if (length > 0) {
            this.A05.delete(length - 1, length);
            for (int size = this.A06.size() - 1; size >= 0; size--) {
                if (this.A06.get(size).A00 != length) {
                    return;
                }
                r1.A00--;
            }
        }
    }

    public final void A07() {
        this.A07.add(A00());
        this.A05.setLength(0);
        this.A06.clear();
        int iMin = Math.min(this.A01, this.A03);
        while (true) {
            int size = this.A07.size();
            String[] strArr = A08;
            if (strArr[6].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[6] = "4Kk3waKD";
            strArr2[5] = "8nOP5N7C4Kf2hN";
            if (size < iMin) {
                return;
            } else {
                this.A07.remove(0);
            }
        }
    }

    public final void A08(char c) {
        this.A05.append(c);
    }

    public final void A09(int i) {
        this.A00 = i;
        this.A06.clear();
        this.A07.clear();
        this.A05.setLength(0);
        this.A03 = 15;
        this.A02 = 0;
        this.A04 = 0;
    }

    public final void A0A(int i) {
        this.A01 = i;
    }

    public final void A0B(int i) {
        this.A02 = i;
    }

    public final void A0C(int i) {
        this.A03 = i;
    }

    public final void A0D(int i) {
        this.A04 = i;
    }

    public final void A0E(int i, boolean z) {
        this.A06.add(new C1006Fb(i, z, this.A05.length()));
    }

    public final boolean A0F() {
        return this.A06.isEmpty() && this.A07.isEmpty() && this.A05.length() == 0;
    }

    public final String toString() {
        return this.A05.toString();
    }
}
