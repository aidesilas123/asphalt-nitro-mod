package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1347Sl extends AbstractC1227Nv {
    public static byte[] A0l;
    public static String[] A0m = {"E7d9V", "HfiTPdnQE6JsOHdYoOA4lRNnbQ3", "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8", "hoWzaZbN7yXesQFa", "a3ZYa3", "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z", "MYJwByDzw5bCUSkxw6qgTJ7WJbI", "X3l5ZIwYV4"};
    public static final int A0n;
    public static final int A0o;
    public static final int A0p;
    public static final int A0q;
    public static final int A0r;
    public static final int A0s;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public Handler A09;
    public View A0A;
    public InputMethodManager A0B;
    public LinearLayout A0C;
    public LinearLayout A0D;
    public RelativeLayout A0E;
    public TextView A0F;
    public AbstractC1566aS A0G;
    public C1202Mw A0H;
    public C1203Mx A0I;
    public TJ A0J;
    public T3 A0K;
    public C1231Nz A0L;
    public OL A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public final Handler A0b;
    public final View A0c;
    public final AbstractC06570g A0d;
    public final C1094In A0e;
    public final InterfaceC1211Nf A0f;
    public final C1212Ng A0g;
    public final C1108Jb A0h;
    public final Runnable A0i;
    public final Runnable A0j;
    public final Set<String> A0k;

    static {
        A0W();
        A0q = (int) (C1148Ku.A02 * 26.0f);
        A0n = (int) (C1148Ku.A02 * 4.0f);
        A0s = (int) (C1148Ku.A02 * 8.0f);
        A0o = (int) (C1148Ku.A02 * 24.0f);
        A0p = C07052d.A01(-1, 77);
        A0r = (int) (C1148Ku.A02 * 12.0f);
    }

    public C1347Sl(C1231Nz c1231Nz) {
        super(c1231Nz, true);
        this.A0X = false;
        this.A02 = -1;
        this.A0Y = false;
        this.A03 = 0;
        this.A0N = false;
        this.A0U = false;
        this.A0W = false;
        this.A0V = false;
        this.A0Z = false;
        this.A0R = false;
        this.A0T = false;
        this.A0S = false;
        this.A0Q = false;
        this.A08 = 0;
        this.A01 = 0;
        this.A0j = new OD(this);
        this.A0a = false;
        this.A0P = false;
        this.A0k = new HashSet();
        this.A0b = new Handler(Looper.getMainLooper());
        this.A0i = new Runnable() { // from class: com.facebook.ads.redexgen.X.O8
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A15();
            }
        };
        this.A09 = new Handler(Looper.getMainLooper());
        this.A0B = (InputMethodManager) c1231Nz.A05().getSystemService(A0J(25, 12, 127));
        this.A0L = c1231Nz;
        this.A0G = c1231Nz.A04();
        this.A0e = new C1094In(c1231Nz.A04().A11(), c1231Nz.A06());
        C1108Jb c1108JbA0A = this.A0L.A0A();
        this.A0h = c1108JbA0A;
        if (c1108JbA0A != null) {
            LV.A0K(c1108JbA0A);
        }
        View viewA03 = this.A0L.A03();
        this.A0c = viewA03;
        this.A0d = C06580h.A01(c1231Nz.A05(), c1231Nz.A06(), c1231Nz.A04().A11(), C1132Kc.A00(c1231Nz.A04().A0v().A0F().A05()), new HashMap(), false, true, this.A0G.A0x());
        C1221Np.A00(c1231Nz.A05(), this, c1231Nz.A04().A0v().A0D().A07());
        setupLayoutConfiguration(false);
        A0S();
        A0O();
        postDelayed(new C1350So(this), 1000L);
        A0V();
        C1349Sn c1349Sn = new C1349Sn(this);
        this.A0f = c1349Sn;
        RX rx = this.A0L.A02() instanceof RX ? (RX) this.A0L.A02() : null;
        this.A0g = new C1212Ng(c1231Nz, this.A0G, rx, this.A0L.A09(), c1349Sn, this.A0F, this.A0M, c1108JbA0A, viewA03);
        if (rx != null && IP.A19(getAdContextWrapper())) {
            NO.A00(rx.getVideoImplView(), IP.A1A(getAdContextWrapper()), new OE(this));
        } else if (rx == null && this.A0A != null && IP.A17(getAdContextWrapper())) {
            NO.A00(this.A0A, IP.A18(getAdContextWrapper()), new OF(this));
        }
        this.A0E = null;
        this.A0K = null;
    }

    public C1347Sl(C1231Nz c1231Nz, boolean z) {
        this(c1231Nz);
        this.A0X = z;
        AbstractC1566aS abstractC1566aSA04 = c1231Nz.A04();
        this.A0Y = this.A0X && abstractC1566aSA04.A0m();
        if (this.A0X) {
            int iA0E = abstractC1566aSA04.A0E();
            this.A02 = iA0E;
            if (iA0E == 0) {
                A15();
            } else if (iA0E > 0 && iA0E <= 10000) {
                this.A0b.postDelayed(this.A0i, iA0E);
            }
            this.A0a = KZ.A0J(c1231Nz.A05(), abstractC1566aSA04.A11());
            String strA0T = abstractC1566aSA04.A0T();
            if (TextUtils.isEmpty(strA0T)) {
                return;
            }
            for (String str : strA0T.split(A0J(0, 1, 39))) {
                this.A0k.add(str);
            }
        }
    }

    public static /* synthetic */ int A03(C1347Sl c1347Sl) {
        int i = c1347Sl.A01;
        c1347Sl.A01 = i + 1;
        return i;
    }

    public static /* synthetic */ int A05(C1347Sl c1347Sl) {
        int i = c1347Sl.A08;
        c1347Sl.A08 = i + 1;
        return i;
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0l, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0K() {
        LV.A0J(this.A0D);
        LinearLayout linearLayout = new LinearLayout(this.A0L.A05());
        this.A0D = linearLayout;
        LV.A0R(linearLayout, getAdContextWrapper());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0N ? this.A04 / 4 : this.A04 / 5);
        layoutParams.addRule(12);
        this.A0D.setLayoutParams(layoutParams);
        addView(this.A0D, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A0L, reason: merged with bridge method [inline-methods] */
    public void A15() {
        A0c(((FH) this.A0d).A0G().toString());
        A0f(true);
    }

    private void A0M() {
        LP.A00(new Runnable() { // from class: com.facebook.ads.redexgen.X.O7
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A14();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N() {
        if (this.A0G.A0j() && this.A0P) {
            this.A0P = false;
            A0d(A0J(37, 18, 2));
        }
    }

    private void A0O() {
        LV.A0J(this.A0C);
        LinearLayout linearLayout = new LinearLayout(this.A0L.A05());
        this.A0C = linearLayout;
        linearLayout.setOrientation(1);
        LV.A0K(this.A0C);
        A0T();
        this.A0C.setBackgroundColor(-1);
        addView(this.A0C);
    }

    private void A0P() {
        View view = this.A0c;
        if (view != null) {
            LV.A0J(view);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC1227Nv.A08, AbstractC1227Nv.A08);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC1227Nv.A07, this.A07, AbstractC1227Nv.A07, AbstractC1227Nv.A07);
            addView(this.A0c, layoutParams);
        }
    }

    private void A0Q() {
        C1108Jb c1108Jb = this.A0h;
        if (c1108Jb != null) {
            LV.A0J(c1108Jb);
            C1108Jb c1108Jb2 = this.A0h;
            int i = A0r;
            c1108Jb2.setPadding(i, i, i, i);
            this.A0h.A06(-1, A0p);
            this.A0h.setTranslationY(0.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0q);
            layoutParams.addRule(12);
            addView(this.A0h, layoutParams);
        }
    }

    private void A0R() {
        AbstractC1172Ls abstractC1172LsA08 = this.A0L.A08();
        if (abstractC1172LsA08 == null) {
            return;
        }
        abstractC1172LsA08.setPageDetailsVisible((this.A0O || abstractC1172LsA08.A07()) ? false : true);
    }

    private void A0S() {
        this.A0A = this.A0L.A02();
        if (this.A0G.A0j()) {
            this.A0A.setOnClickListener(new OG(this));
        }
        LV.A0J(this.A0A);
        LV.A0K(this.A0A);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        addView(this.A0A, 1, layoutParams);
        TextView textView = new TextView(this.A0L.A05());
        this.A0F = textView;
        LV.A0K(textView);
        this.A0F.setGravity(17);
        this.A0F.setTextColor(getColors().A05(true));
        this.A0F.setEllipsize(TextUtils.TruncateAt.END);
        this.A0F.setMaxLines(2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        int i = A0s;
        layoutParams2.setMargins(i, i / 2, i, this.A0h == null ? i : A0q);
        addView(this.A0F, layoutParams2);
        LV.A0K(this.A0F);
        C1231Nz c1231Nz = this.A0L;
        OL ol = new OL(c1231Nz, c1231Nz.A04().A0v().A0F().A04(), getColors(), new C1348Sm(this));
        this.A0M = ol;
        ol.setAutoClickTime(this.A0L.A04(), this.A0L.A08());
        LV.A0G(1001, this.A0M);
        addView(this.A0M);
        A0U();
        A0K();
        if (IP.A0z(this.A0L.A05())) {
            this.A0D.setOnClickListener(new OH(this));
            if (this.A0L.A08() != null) {
                this.A0L.A08().setCTAClickListener(new OI(this));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0T() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A05);
        if (A18()) {
            layoutParams.setMargins(0, this.A05 / 5, 0, 0);
            layoutParams.addRule(12);
            String[] strArr = A0m;
            if (strArr[7].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[7] = "mOqhFUC5R4";
            strArr2[4] = "x2rQdK";
            this.A0C.setLayoutParams(layoutParams);
        } else {
            layoutParams.setMargins(0, this.A05 + 1, 0, 0);
        }
        this.A0C.setTranslationY(0.0f);
        this.A0C.setLayoutParams(layoutParams);
    }

    private void A0U() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.A0N ? this.A04 / 4 : this.A04 / 5);
        layoutParams.addRule(14);
        layoutParams.addRule(2, this.A0F.getId());
        layoutParams.setMargins(0, 0, 0, 0);
        this.A0M.setLayoutParams(layoutParams);
        if (!this.A0Y || this.A0K == null) {
            return;
        }
        boolean z = this.A0N;
        if (A0m[5].charAt(10) == 'N') {
            throw new RuntimeException();
        }
        A0m[2] = "dOHlU7mObztTib9yLp7cTgFqT8sjFKca";
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(14);
        int i = A0o;
        layoutParams2.setMargins(i, 0, i, i);
        this.A0K.setUpButtonColors(getContext().getResources().getConfiguration().orientation == 1 ? this.A0L.A04().A0u().A01() : this.A0L.A04().A0u().A00());
        if (this.A0N) {
            this.A0K.setPadding(i, 0, i, 0);
        }
        this.A0K.setLayoutParams(layoutParams2);
    }

    private void A0V() {
        A0Q();
        A0P();
        A0R();
    }

    public static void A0W() {
        A0l = new byte[]{125, 10, 5, 0, 10, 2, 54, Ascii.SUB, 6, Ascii.FS, Ascii.ESC, 10, Ascii.FF, Ascii.VT, 9, Ascii.CAN, 62, Ascii.CR, Ascii.ESC, 36, 9, 5, Ascii.VT, 4, Ascii.CAN, 108, 107, 117, 112, 113, 90, 104, 96, 113, 109, 106, 97, Ascii.CR, Ascii.VT, Ascii.GS, 10, Ascii.ESC, Ascii.DC4, 17, Ascii.ESC, 19, 39, Ascii.RS, 17, Ascii.DC4, Ascii.FF, Ascii.GS, 10, Ascii.GS, Ascii.FS, 102, 120, Ascii.DEL, 117, 126, 102, 2, Ascii.ESC, Ascii.FS, 42, Ascii.SYN, 1, Ascii.DC4, 42, Ascii.ETB, 0, 1, 1, Ascii.SUB, Ascii.ESC, Ascii.DEL, 102, 97, 87, Ascii.DEL, 109, 106, 87, 97, 102, 123, 124, 105, 100, 100, 87, 106, 125, 124, 124, 103, 102, 10};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0c(String str) {
        if (this.A0Y) {
            LV.A0J(this.A0E);
            LV.A0J(this.A0K);
        }
        LV.A0J(this.A0J);
        C1352Sq c1352Sq = new C1352Sq(this);
        if (this.A0L.A05().A0D() == null) {
            this.A0L.A05().A0E().A8U();
        }
        TJ tj = (IQ.A02(this.A0L.A05()) || this.A0L.A05().A0D() == null) ? new TJ(this.A0L.A05(), c1352Sq) : new TJ(this.A0L.A05(), this.A0L.A05().A0D(), c1352Sq);
        this.A0J = tj;
        if (this.A0X) {
            tj.setInterceptRedirectRequest(new N4() { // from class: com.facebook.ads.redexgen.X.St
                @Override // com.facebook.ads.redexgen.X.N4
                public final boolean A91(String str2) {
                    return this.A00.A19(str2);
                }
            });
        }
        if (this.A0G.A0l() && Build.VERSION.SDK_INT > 16) {
            this.A0J.addJavascriptInterface(new C1223Nr(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.O5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A16(view);
                }
            }, this.A0J, new InterfaceC1222Nq() { // from class: com.facebook.ads.redexgen.X.Ss
                @Override // com.facebook.ads.redexgen.X.InterfaceC1222Nq
                public final void AAq() {
                    this.A00.A12();
                }
            }), C1223Nr.A01());
        }
        this.A0J.setOnTouchListener(new OA(this));
        setUpBrowserControls(this.A0J);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 0.9f;
        if (this.A0Y || this.A0G.A0l()) {
            T3 t3 = new T3(this.A0L.A05(), this.A0L.A04().A0K(), this.A0L.A00() == 1 ? this.A0L.A04().A0u().A01() : this.A0L.A04().A0u().A00(), this.A0L.A04().A0v().A0F().A06(), this.A0L.A06(), this.A0L.A09(), this.A0L.A0B(), this.A0L.A07(), this.A0L.A04().A0x());
            this.A0K = t3;
            t3.setCta(this.A0L.A04().A0v().A0F(), this.A0L.A04().A11(), new HashMap());
        }
        if (!this.A0Y || this.A0K == null) {
            this.A0C.addView(this.A0J, layoutParams);
        } else {
            this.A0E = new RelativeLayout(getContext());
            this.A0E.addView(this.A0J, new RelativeLayout.LayoutParams(-1, -1));
            LV.A0K(this.A0K);
            this.A0K.setRoundedCornersEnabled(A00());
            this.A0K.setViewShowsOverMedia(A0D());
            this.A0K.setUpButtonColors(getContext().getResources().getConfiguration().orientation == 1 ? this.A0L.A04().A0u().A01() : this.A0L.A04().A0u().A00());
            if (this.A0N) {
                T3 t32 = this.A0K;
                int i = A0o;
                t32.setPadding(i, 0, i, 0);
            }
            this.A0K.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.O6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A17(view);
                }
            });
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.A0N ? -2 : -1, -2);
            layoutParams2.addRule(12);
            layoutParams2.addRule(14);
            int i2 = A0o;
            layoutParams2.setMargins(i2, 0, i2, i2);
            this.A0E.addView(this.A0K, layoutParams2);
            this.A0C.addView(this.A0E, layoutParams);
        }
        this.A0J.loadUrl(str);
    }

    private void A0d(String str) {
        Map<String, String> mapA05 = new NL().A03(null).A02(null).A05();
        mapA05.put(A0J(1, 12, 19), str);
        this.A0e.A04(EnumC1093Im.A0J, mapA05);
        getAdEventManager().A9V(this.A0G.A11(), mapA05);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0e(String str) {
        if (this.A0G.A0s() <= 0) {
            if (this.A0G.A0i()) {
                A0N();
            }
        } else {
            if (this.A0G.A18() && this.A0Q) {
                return;
            }
            this.A0Q = true;
            A0d(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0f(boolean z) {
        this.A0O = z;
        if (this.A0X && z) {
            this.A0b.removeCallbacks(this.A0i);
        }
        ObjectAnimator objectAnimatorOfFloat = null;
        if (z) {
            this.A01 = 0;
            this.A08 = 0;
            this.A0R = false;
            this.A0S = false;
            this.A0T = false;
            this.A0Q = false;
        } else {
            this.A09.removeCallbacksAndMessages(null);
        }
        postDelayed(new C1351Sp(this, z), 250L);
        String strA0J = A0J(97, 1, 9);
        if (z) {
            OL ol = this.A0M;
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(ol, strA0J, ol.getY(), this.A05 / 5);
        }
        LinearLayout linearLayout = this.A0C;
        float[] fArr = new float[2];
        fArr[0] = linearLayout.getY();
        int i = this.A05;
        if (z) {
            i /= 5;
        }
        fArr[1] = i;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(linearLayout, strA0J, fArr);
        objectAnimatorOfFloat2.setDuration(500L);
        View view = this.A0A;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, strA0J, view.getY(), 0.0f);
        objectAnimatorOfFloat3.setDuration(500L);
        int[] iArr = new int[2];
        iArr[0] = this.A0A.getHeight();
        int i2 = this.A05;
        if (z) {
            i2 /= 5;
        }
        iArr[1] = i2;
        ValueAnimator duration = ValueAnimator.ofInt(iArr).setDuration(500L);
        duration.addUpdateListener(new OB(this));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, duration);
        if (objectAnimatorOfFloat != null) {
            objectAnimatorOfFloat.setDuration(500L);
            Animator[] animatorArr = {objectAnimatorOfFloat};
            String[] strArr = A0m;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[6] = "3HcTndNMKO02itZ1YB9OuMlfPHE";
            strArr2[1] = "rUq8gYLqYGWwvrPw2H7I5hxcdAd";
            animatorSet.playTogether(animatorArr);
        }
        animatorSet.addListener(new OC(this, z));
        animatorSet.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0g(boolean r8) {
        /*
            r7 = this;
            r7.setupLayoutConfiguration(r8)
            android.view.View r0 = r7.A0A
            com.facebook.ads.redexgen.X.LV.A0J(r0)
            android.view.View r0 = r7.A0A
            if (r0 != 0) goto L17
            com.facebook.ads.redexgen.X.Nz r0 = r7.A0L
            android.view.View r0 = r0.A02()
            r7.A0A = r0
            com.facebook.ads.redexgen.X.LV.A0K(r0)
        L17:
            boolean r3 = r7.A0O
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1347Sl.A0m
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lb5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1347Sl.A0m
            java.lang.String r1 = "FZuJEB1DgE"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "ioAK5D"
            r0 = 4
            r2[r0] = r1
            r4 = -1
            if (r3 == 0) goto L60
            int r0 = r7.A05
            int r0 = r0 / 5
            android.widget.RelativeLayout$LayoutParams r2 = new android.widget.RelativeLayout$LayoutParams
            r2.<init>(r4, r0)
            r0 = 14
            r2.addRule(r0)
            r0 = 10
            r2.addRule(r0)
        L4d:
            android.view.View r1 = r7.A0A
            r0 = 0
            r1.setTranslationY(r0)
            android.view.View r1 = r7.A0A
            r0 = 1
            r7.addView(r1, r0, r2)
            r7.A0K()
            r7.A0U()
            return
        L60:
            r3 = -2
            android.widget.RelativeLayout$LayoutParams r2 = new android.widget.RelativeLayout$LayoutParams
            r2.<init>(r4, r3)
            com.facebook.ads.redexgen.X.YA r0 = r7.getAdContextWrapper()
            boolean r0 = com.facebook.ads.redexgen.X.IP.A17(r0)
            if (r0 == 0) goto La2
            android.content.res.Resources r6 = r7.getResources()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1347Sl.A0m
            r0 = 2
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 108(0x6c, float:1.51E-43)
            if (r1 == r0) goto Lab
            java.lang.String[] r5 = com.facebook.ads.redexgen.X.C1347Sl.A0m
            java.lang.String r1 = "pPe40HbQyCL07tY4s4c8j3Lf22g"
            r0 = 6
            r5[r0] = r1
            java.lang.String r1 = "FpZU0oL4KOaHbXLVjTxOhAl2PJv"
            r0 = 1
            r5[r0] = r1
            android.content.res.Configuration r0 = r6.getConfiguration()
            int r1 = r0.orientation
            r0 = 2
            if (r1 != r0) goto La2
        L97:
            android.view.View r0 = r7.A0A
            boolean r0 = r0 instanceof com.facebook.ads.redexgen.X.RX
            if (r0 != 0) goto La2
            android.widget.RelativeLayout$LayoutParams r2 = new android.widget.RelativeLayout$LayoutParams
            r2.<init>(r3, r4)
        La2:
            r0 = 13
            r2.addRule(r0)
            r7.A0O()
            goto L4d
        Lab:
            android.content.res.Configuration r0 = r6.getConfiguration()
            int r1 = r0.orientation
            r0 = 2
            if (r1 != r0) goto La2
            goto L97
        Lb5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1347Sl.A0g(boolean):void");
    }

    private boolean A0h() {
        if (this.A0G.A0v().A0D().A0A()) {
            boolean z = this.A0V;
            String[] strArr = A0m;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[7] = "WvW0Ef6T7c";
            strArr2[4] = "9KXIlI";
            if (z && !this.A0Z && !this.A0W) {
                return true;
            }
        }
        return false;
    }

    private void setUpBrowserControls(TJ tj) {
        LV.A0J(this.A0H);
        C1202Mw c1202Mw = new C1202Mw(this.A0L.A05(), tj);
        this.A0H = c1202Mw;
        tj.setBrowserNavigationListener(c1202Mw.getBrowserNavigationListener());
        LV.A0K(this.A0H);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 0.1f;
        this.A0H.setListener(new C1353Sr(this));
        this.A0H.setOnTouchListener(new O9(this));
        this.A0C.addView(this.A0H, layoutParams);
        LV.A0J(this.A0I);
        this.A0I = new C1203Mx(this.A0L.A05(), null, R.attr.progressBarStyleHorizontal);
        this.A0C.addView(this.A0I, new LinearLayout.LayoutParams(-1, A0n));
    }

    private void setupLayoutConfiguration(boolean z) {
        this.A0N = getResources().getConfiguration().orientation == 2;
        this.A07 = this.A0L.A08() == null ? 0 : this.A0L.A08().getToolbarHeight();
        this.A0O = z;
        this.A04 = Resources.getSystem().getDisplayMetrics().heightPixels;
        this.A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
        Point point = new Point();
        WindowManager windowManager = (WindowManager) getAdContextWrapper().getSystemService(A0J(55, 6, 107));
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                point.y = currentWindowMetrics.getBounds().bottom - currentWindowMetrics.getBounds().top;
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                if (Build.VERSION.SDK_INT >= 17) {
                    defaultDisplay.getRealSize(point);
                } else {
                    try {
                        Integer num = (Integer) Display.class.getMethod(A0J(13, 12, 22), new Class[0]).invoke(defaultDisplay, new Object[0]);
                        point.y = num != null ? num.intValue() : 0;
                    } catch (Exception unused) {
                    }
                }
            }
        }
        this.A05 = point.y > 0 ? point.y : this.A04;
        this.A03 = this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0u() {
        if (this.A0X) {
            this.A0b.removeCallbacks(this.A0i);
        }
        super.A0u();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0v() {
        AbstractC1172Ls abstractC1172LsA08 = this.A0L.A08();
        if (abstractC1172LsA08 != null) {
            abstractC1172LsA08.setPageDetailsVisible((A18() || abstractC1172LsA08.A07()) ? false : true);
        }
        this.A0V = false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0w() {
        if (this.A0L.A08() != null) {
            AbstractC1172Ls abstractC1172LsA08 = this.A0L.A08();
            String[] strArr = A0m;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[3] = "MMiJw7TNUivh7iTB";
            strArr2[0] = "GEB80";
            abstractC1172LsA08.setPageDetailsVisible(false);
        }
        this.A0V = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0x() {
        this.A0W = false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0y() {
        this.A0W = this.A0G.A0v().A0D().A03() > 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        super.A0z(c1d, str, d2, bundle);
        String strA05 = c1d.A0E().A05();
        if (strA05 == null || strA05.trim().length() == 0) {
            LV.A0N(this.A0D, 8);
            if (IP.A0z(this.A0L.A05())) {
                this.A0D.setClickable(false);
            }
        } else {
            this.A0F.setText(strA05);
            if (IP.A0z(this.A0L.A05())) {
                LinearLayout linearLayout = this.A0D;
                String[] strArr = A0m;
                if (strArr[3].length() != strArr[0].length()) {
                    A0m[2] = "Tti1ERh3982vMPWOgwyCGNbTUdK6PILe";
                    linearLayout.setClickable(true);
                } else {
                    A0m[2] = "fnWnWSkw0ES4UX172ZpEF9XfJQ6oKenC";
                    linearLayout.setClickable(true);
                }
            }
        }
        if (d2 > 0.0d) {
            this.A03 = (int) (((double) this.A06) / d2);
        }
        boolean z = this.A0N;
        String[] strArr2 = A0m;
        if (strArr2[6].length() != strArr2[1].length()) {
            throw new RuntimeException();
        }
        A0m[2] = "7Lq3s7aOnX5NGbRVe2GBF9HLZ2EE6fpE";
        this.A03 = z ? this.A04 : this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A10() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A11(boolean z) {
        if (A18()) {
            A0f(false);
            return true;
        }
        if (!A0h()) {
            return false;
        }
        this.A0g.A07(this);
        return true;
    }

    public final /* synthetic */ void A12() {
        this.A0L.A05().A0E().A9t();
    }

    public final /* synthetic */ void A13() {
        if (this.A0K != null) {
            if (this.A0a) {
                if (A0m[2].charAt(2) == 'l') {
                    throw new RuntimeException();
                }
                A0m[5] = "pGBCzqXwIkLG48GrIEt64qcHW3Hm9O6f";
                A0f(false);
            }
            this.A0L.A05().A0E().A9s();
            this.A0K.A09(A0J(61, 14, 15));
        }
    }

    public final /* synthetic */ void A14() {
        if (this.A0K != null) {
            boolean z = this.A0a;
            String[] strArr = A0m;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[3] = "tCgjPTcwsN2cZ99v";
            strArr2[0] = "Ilqrg";
            if (z) {
                A0f(false);
            }
            this.A0L.A05().A0E().A9w();
            this.A0K.A09(A0J(75, 22, 114));
        }
    }

    public final /* synthetic */ void A16(View view) {
        A0M();
    }

    public final /* synthetic */ void A17(View view) {
        LP.A00(new Runnable() { // from class: com.facebook.ads.redexgen.X.O4
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A13();
            }
        });
    }

    public final boolean A18() {
        return this.A0O;
    }

    public final /* synthetic */ boolean A19(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.A0k.isEmpty()) {
            return true;
        }
        Iterator<String> it = this.A0k.iterator();
        while (it.hasNext()) {
            boolean zContains = str.contains(it.next());
            if (A0m[2].charAt(2) == 'l') {
                throw new RuntimeException();
            }
            A0m[5] = "Sf20Awxc2HRh1lAKHxXJmSVrTf5ojylw";
            if (!zContains) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public int getCloseButtonStyle() {
        if (A18()) {
            return 3;
        }
        if (this.A0W) {
            return 2;
        }
        if (this.A0G.A0v().A0D().A0A()) {
            return 1;
        }
        if (!this.A0V) {
            return super.getCloseButtonStyle();
        }
        if (A0m[5].charAt(10) == 'N') {
            throw new RuntimeException();
        }
        String[] strArr = A0m;
        strArr[6] = "NhzVRhgvHrOwM64xV2PIAOEbNcq";
        strArr[1] = "xEzMNY3CkayGfsMDFyAKLsf22gx";
        return 4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A0g(A18());
        A0V();
        setupLayoutConfiguration(A18());
        A0T();
    }
}
