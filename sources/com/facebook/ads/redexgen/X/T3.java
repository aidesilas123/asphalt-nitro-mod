package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class T3 extends C1206Na implements View.OnClickListener {
    public static byte[] A0D;
    public static String[] A0E = {"idQnrwKrPQs0c3zYYHT6WTvW1aXoRMqQ", "Gekt1WHQiHnIJqxdwB9j8FzDtIJy1cfJ", "sF2V", "CdtBVDHmuEaNC9R8", "jtmNaJ8NDkAfiILRFeCM3WK", "aXO2Ks7stxeTyHMnCxwSATKtkmhK3bmt", "xmLEl9t0StR", ""};
    public static final int A0F;
    public int A00;
    public int A01;
    public Bitmap A02;
    public Paint A03;
    public Rect A04;
    public YA A05;
    public C1143Kn A06;
    public T5 A07;
    public String A08;
    public String A09;
    public boolean A0A;
    public final NW A0B;
    public final Map<String, String> A0C;

    static {
        A07();
        A0F = (int) (C1148Ku.A02 * 24.0f);
    }

    public T3(YA ya, String str, C1M c1m, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt, C1285Qb c1285Qb, LN ln, C1R c1r) {
        this(ya, str, c1m, false, interfaceC1086If, interfaceC1173Lt, c1285Qb, ln, c1r);
    }

    public T3(YA ya, String str, C1M c1m, boolean z, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt, C1285Qb c1285Qb, LN ln, C1R c1r) {
        super(ya, c1m);
        this.A0C = new HashMap();
        this.A05 = ya;
        this.A0A = z;
        this.A0B = new NW(ya, str, c1285Qb, ln, interfaceC1086If, c1r, interfaceC1173Lt);
        setOnClickListener(this);
        LV.A0G(1001, this);
    }

    public static Bitmap A03(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A0E[2].length() != 4) {
                throw new RuntimeException();
            }
            A0E[3] = "DG";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    private void A05() {
        String str;
        if (!this.A0A || (str = this.A09) == null) {
            return;
        }
        this.A02 = A03(C1158Le.A03(this.A05, str.contains(A04(12, 12, 61)) ? EnumC1157Ld.MESSENGER : EnumC1157Ld.WHATSAPP));
        this.A03 = new Paint();
        int i = A0F;
        setPadding(i, 0, i, 0);
    }

    private void A06() {
        C1143Kn c1143Kn = this.A06;
        if (c1143Kn != null) {
            c1143Kn.A07();
        }
        T5 t5 = this.A07;
        if (t5 != null) {
            t5.A04();
        }
    }

    public static void A07() {
        A0D = new byte[]{3, Ascii.FF, 9, 3, Ascii.VT, 63, 19, Ascii.SI, Ascii.NAK, Ascii.DC2, 3, 5, 8, Ascii.FF, 67, 3, Ascii.VT, Ascii.GS, Ascii.GS, Ascii.VT, 0, 9, Ascii.VT, Ascii.FS, Ascii.DEL, 121, 111, 120, 105, 102, 99, 105, 97};
    }

    public static boolean A08(AbstractC1566aS abstractC1566aS) {
        return ((long) abstractC1566aS.A0s()) > 0 && abstractC1566aS.A0q() >= 0;
    }

    public final void A09(String str) {
        if (TextUtils.isEmpty(this.A08) || TextUtils.isEmpty(this.A09)) {
            return;
        }
        A06();
        this.A0C.put(A04(0, 12, 51), str);
        this.A0B.A08(this.A08, this.A09, this.A0C);
    }

    public final boolean A0A(AbstractC1566aS abstractC1566aS, AbstractC1172Ls abstractC1172Ls) {
        if (this.A06 != null || !A08(abstractC1566aS) || abstractC1566aS.A10().A01() == null || abstractC1566aS.A10().A00() == null) {
            return false;
        }
        this.A07 = new T5(abstractC1566aS.A0q(), abstractC1566aS.A0s(), abstractC1566aS.A0r(), abstractC1566aS.A10().A01(), abstractC1566aS.A10().A00(), abstractC1172Ls, this);
        C1143Kn c1143Kn = new C1143Kn(abstractC1566aS.A0s(), this.A07);
        this.A06 = c1143Kn;
        c1143Kn.A08();
        return true;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            A09(A04(24, 9, 89));
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        A06();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.A02 != null) {
            this.A04 = new Rect(0, 0, this.A02.getWidth(), this.A02.getHeight());
            this.A01 = this.A02.getWidth();
            this.A00 = 12;
            canvas.save();
            canvas.translate((r1 + 12) / 2, 0.0f);
        }
        super.onDraw(canvas);
        if (this.A02 != null) {
            int width = (int) ((((getWidth() / 2.0f) - ((getPaint().measureText((String) getText()) + 10.0f) / 2.0f)) - this.A01) - this.A00);
            int height = (getHeight() / 2) - (this.A01 / 2);
            int i = this.A01;
            canvas.drawBitmap(this.A02, this.A04, new Rect(width, height, width + i, i + height), this.A03);
            canvas.restore();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            A06();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            return;
        }
        A06();
    }

    public void setCta(C1N c1n, String str, Map<String, String> map) {
        setCta(c1n, str, map, null);
    }

    public void setCta(C1N c1n, String str, Map<String, String> map, NV nv) {
        this.A08 = str;
        this.A09 = c1n.A05();
        this.A0C.putAll(map);
        this.A0B.A07(nv);
        String strA04 = c1n.A04();
        if (TextUtils.isEmpty(strA04) || TextUtils.isEmpty(this.A09)) {
            setVisibility(8);
        } else {
            setText(strA04);
            A05();
        }
    }

    public void setIsInAppBrowser(boolean z) {
        this.A0B.A09(z);
    }
}
