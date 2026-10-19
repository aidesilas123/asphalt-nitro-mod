package com.applovin.exoplayer2.i.h;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    private final y Tg;
    private final boolean Th;
    private final int Ti;
    private final int Tj;
    private final String Tk;
    private final float Tl;
    private final int Tm;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        this.Tg = new y();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.Ti = 0;
            this.Tj = -1;
            this.Tk = C.SANS_SERIF_NAME;
            this.Th = false;
            this.Tl = 0.85f;
            this.Tm = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.Ti = bArr[24];
        this.Tj = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.Tk = "Serif".equals(ai.t(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i = bArr[25] * Ascii.DC4;
        this.Tm = i;
        boolean z = (bArr[0] & 32) != 0;
        this.Th = z;
        if (z) {
            this.Tl = ai.a(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.Tl = 0.85f;
        }
    }

    private static void X(boolean z) throws h {
        if (!z) {
            throw new h("Unexpected subtitle format.");
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, String str, int i, int i2) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, 16711713);
        }
    }

    private void a(y yVar, SpannableStringBuilder spannableStringBuilder) throws h {
        int length;
        X(yVar.pj() >= 12);
        int iPp = yVar.pp();
        int iPp2 = yVar.pp();
        yVar.fz(2);
        int iPo = yVar.po();
        yVar.fz(1);
        int iPx = yVar.px();
        if (iPp2 > spannableStringBuilder.length()) {
            q.h("Tx3gDecoder", "Truncating styl end (" + iPp2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            length = spannableStringBuilder.length();
        } else {
            length = iPp2;
        }
        if (iPp < length) {
            int i = length;
            a(spannableStringBuilder, iPo, this.Ti, iPp, i, 0);
            b(spannableStringBuilder, iPx, this.Tj, iPp, i, 0);
            return;
        }
        q.h("Tx3gDecoder", "Ignoring styl with start (" + iPp + ") >= end (" + length + ").");
    }

    private static String ag(y yVar) throws h {
        char cPn;
        X(yVar.pj() >= 2);
        int iPp = yVar.pp();
        return iPp == 0 ? "" : (yVar.pj() < 2 || !((cPn = yVar.pn()) == 65279 || cPn == 65534)) ? yVar.b(iPp, Charsets.UTF_8) : yVar.b(iPp, Charsets.UTF_16);
    }

    private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f c(byte[] bArr, int i, boolean z) throws h {
        this.Tg.l(bArr, i);
        String strAg = ag(this.Tg);
        if (strAg.isEmpty()) {
            return b.Tn;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strAg);
        a(spannableStringBuilder, this.Ti, 0, 0, spannableStringBuilder.length(), 16711680);
        b(spannableStringBuilder, this.Tj, -1, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder, this.Tk, 0, spannableStringBuilder.length());
        float fA = this.Tl;
        while (this.Tg.pj() >= 8) {
            int iIl = this.Tg.il();
            int iPx = this.Tg.px();
            int iPx2 = this.Tg.px();
            if (iPx2 == 1937013100) {
                X(this.Tg.pj() >= 2);
                int iPp = this.Tg.pp();
                for (int i2 = 0; i2 < iPp; i2++) {
                    a(this.Tg, spannableStringBuilder);
                }
            } else if (iPx2 == 1952608120 && this.Th) {
                X(this.Tg.pj() >= 2);
                fA = ai.a(this.Tg.pp() / this.Tm, 0.0f, 0.95f);
            }
            this.Tg.fx(iIl + iPx);
        }
        return new b(new a.C0041a().m(spannableStringBuilder).b(fA, 0).ef(0).lU());
    }
}
