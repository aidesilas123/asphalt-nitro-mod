package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.t9;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.96, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass96 extends FrameLayout implements InterfaceC1174Lu, SV {
    public static byte[] A0I;
    public static String[] A0J = {"Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A", t9.f6640e, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z", "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82", "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra", "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN", "oNlgPu", "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"};
    public C5H A00;
    public C5J A01;
    public InterfaceC1249Or A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final AbstractC1566aS A06;
    public final YA A07;
    public final InterfaceC1086If A08;
    public final C1094In A09;
    public final LI A0A;
    public final LN A0B;
    public final InterfaceC1173Lt A0C;
    public final MM A0D;
    public final OZ A0E;
    public final C1239Oh A0F;
    public final AbstractC1284Qa A0G;
    public final C1285Qb A0H;

    static {
        A0D();
    }

    public AnonymousClass96(YA ya, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt, AbstractC1566aS abstractC1566aS, MM mm, int i) {
        int i2;
        super(ya);
        this.A00 = new C1344Si(this);
        C1343Sh c1343Sh = new C1343Sh(this);
        this.A0G = c1343Sh;
        this.A03 = true;
        this.A07 = ya;
        this.A08 = interfaceC1086If;
        this.A0C = interfaceC1173Lt;
        this.A06 = abstractC1566aS;
        this.A0D = mm;
        C1239Oh c1239OhA02 = C1240Oi.A02(abstractC1566aS.A0R());
        if (c1239OhA02 != null) {
            this.A0F = c1239OhA02;
            this.A04 = true;
        } else {
            this.A0F = new C1239Oh(ya, abstractC1566aS, interfaceC1086If, i);
            this.A04 = false;
        }
        C1094In c1094InA0K = this.A0F.A0K();
        this.A09 = c1094InA0K;
        this.A0B = this.A0F.A0L();
        this.A0F.A0c(new C1342Sg(this));
        LV.A0G(1003, this.A0F.A0O());
        if (abstractC1566aS.A0e()) {
            i2 = 0;
            OZ oz = new OZ(ya, interfaceC1086If, abstractC1566aS, new C6Q(ya), c1094InA0K, interfaceC1173Lt, mm, new C1341Sf(this));
            this.A0E = oz;
            oz.A0N();
            this.A0F.A0O().setOnTouchListener(new OV(this));
            addView(oz, new FrameLayout.LayoutParams(-1, -1));
        } else {
            i2 = 0;
            this.A0E = null;
        }
        ViewGroup mediaView = getMediaView();
        C1285Qb c1285Qb = new C1285Qb(mediaView, 1, new WeakReference(c1343Sh), ya);
        this.A0H = c1285Qb;
        c1285Qb.A0W(abstractC1566aS.A0C());
        c1285Qb.A0X(abstractC1566aS.A0D());
        this.A0F.A0e(c1285Qb);
        LI li = new LI(this);
        this.A0A = li;
        li.A05(LH.A03);
        setBackgroundColor(i2);
        if (IP.A1X(ya)) {
            ya.A0A().AGC(mediaView, abstractC1566aS.A11(), false, false, true);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            boolean zA17 = abstractC1566aS.A17();
            String strA0B = A0B(68, 18, 1);
            String strA0B2 = A0B(36, 16, 21);
            String strA0B3 = A0B(52, 16, 9);
            String strA0B4 = A0B(26, 10, 122);
            if (zA17) {
                jSONObject.put(strA0B4, true);
                jSONObject.put(strA0B3, 2);
                jSONObject.put(strA0B2, i2);
                jSONObject.put(strA0B, abstractC1566aS.A0I());
            } else if (C1133Kd.A05(abstractC1566aS.A0N())) {
                jSONObject.put(strA0B4, true);
                jSONObject.put(strA0B3, 2);
                jSONObject.put(strA0B2, 1);
                jSONObject.put(strA0B, abstractC1566aS.A0I());
            }
            this.A0F.A0j(jSONObject);
        } catch (JSONException unused) {
            this.A0F.A0M().A04(C08417x.A15, A0B(0, 26, 58));
        }
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0C() {
        P3 p3A0B = new P1(this.A07, this.A06.A0v().A0E(), this.A06.A0z()).A08(this.A06.A0u().A01()).A0B();
        addView(p3A0B, new FrameLayout.LayoutParams(-1, -1));
        p3A0B.A04(new C1339Sd(this));
    }

    public static void A0D() {
        A0I = new byte[]{-88, -43, -43, -46, -43, -125, -58, -43, -56, -60, -41, -52, -47, -54, -125, -58, -46, -47, -55, -52, -54, -125, -83, -74, -78, -79, 6, Ascii.VT, 4, Ascii.FF, 17, 8, 7, 2, 4, 7, -95, -90, -97, -89, -84, -93, -94, -99, -97, -94, -99, -89, -84, -94, -93, -74, -107, -102, -109, -101, -96, -105, -106, -111, -109, -106, -111, -90, -95, -90, -109, -98, -115, -110, -117, -109, -104, -113, -114, -119, -98, -109, -105, -113, -119, -99, -102, -113, -104, -98, -90, -81, -84, -90, -82, -94, -74, -78, -72, -75, -90, -88, Ascii.EM, Ascii.ETB, 9, Ascii.SYN, 7, Ascii.DLE, Ascii.CR, 7, Ascii.SI};
    }

    private final void A0E() {
        this.A0F.A0d(this);
        if (this.A04) {
            this.A07.A0E().A5D();
            if (this.A0F.A0k()) {
                AFn();
                YA ya = this.A07;
                if (A0J[6].length() != 6) {
                    throw new RuntimeException();
                }
                A0J[5] = "8j5uXfZ95rl8UwGJAIvPTgfy7qu4v9pG";
                if (IP.A1X(ya)) {
                    this.A07.A0A().AB1();
                }
            }
        } else {
            this.A07.A0E().A5C();
            this.A0F.A0X();
        }
        addView(this.A0F.A0O(), new FrameLayout.LayoutParams(-1, -1));
        this.A0C.A3Q(this, new RelativeLayout.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT < 19 || !this.A06.A0f()) {
            return;
        }
        this.A0A.A05(LH.A04);
    }

    private void A0F(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NW nw = new NW(this.A07, this.A0D.A6M(), this.A0H, this.A0B, this.A08, this.A06.A0x(), this.A0C);
        HashMap map = new HashMap();
        map.put(A0B(86, 12, 26), A0B(98, 9, 123));
        nw.A08(this.A06.A11(), str, map);
    }

    private ViewGroup getMediaView() {
        OZ oz = this.A0E;
        return oz != null ? oz : this.A0F.A0O();
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A8I() {
        A0F(this.A06.A0v().A0F().A05());
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A8J(String str) {
        A0F(str);
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A8N() {
        this.A0C.A3z(this.A0D.A5o());
        new PU(this.A07, this.A0D, this.A06.A0S(), this.A0C).A05();
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A96() {
        new Handler(Looper.getMainLooper()).post(new C1340Se(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        C1239Oh.A0B().incrementAndGet();
        c5j.A0N(this.A00);
        this.A01 = c5j;
        A0E();
        if (this.A06.A0v().A0P()) {
            A0C();
        } else {
            this.A0F.A0W();
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ABR() {
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ABV() {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void AC9(boolean z) {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0R(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0S(z);
        }
        if (z) {
            this.A0F.A0Q();
        } else {
            this.A0F.A0T();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0T(z);
        }
        boolean z2 = this.A03;
        if (A0J[1].length() == 11) {
            throw new RuntimeException();
        }
        A0J[5] = "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN";
        if (z2) {
            this.A03 = false;
        } else if (z) {
            this.A0F.A0P();
        } else {
            this.A0F.A0Y();
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ACx() {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ADS(boolean z) {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0U(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ADU(boolean z) {
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0V(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void ADh(String str) {
        String strA12 = this.A06.A12(str);
        if (strA12 == null) {
            return;
        }
        KZ.A0L(new KZ(), this.A07, C1132Kc.A00(strA12), this.A06.A11());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void AFn() {
        if (this.A05) {
            return;
        }
        this.A0H.A0U();
        this.A05 = true;
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void close() {
        C5J c5j = this.A01;
        if (c5j == null) {
            return;
        }
        c5j.finish(4);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public String getCurrentClientToken() {
        return this.A06.A11();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        if (IP.A1X(this.A07)) {
            this.A07.A0A().AFz(getMediaView());
        }
        OZ oz = this.A0E;
        if (oz != null) {
            oz.A0O();
        }
        this.A0A.A03();
        this.A08.A9J(this.A06.A11(), new NL().A02(this.A0B).A03(this.A0H).A05());
        this.A00 = null;
        this.A02 = null;
        this.A01 = null;
        C1240Oi.A04(this.A06.A0R());
        C1239Oh.A0B().decrementAndGet();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1173Lt interfaceC1173Lt) {
    }

    public void setRtfActionsJavascriptListener(InterfaceC1249Or interfaceC1249Or) {
        this.A02 = interfaceC1249Or;
    }
}
