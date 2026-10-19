package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9G, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C9G extends AbstractC1346Sk {
    public MC A00;
    public ON A01;
    public PE A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public RelativeLayout A06;
    public S0 A07;
    public final YA A08;
    public final AbstractC1233Ob A09;
    public final MU A0A;
    public final MI A0B;
    public final MA A0C;
    public final KK A0D;
    public final String A0E;
    public final Paint A0F;
    public final Path A0G;
    public final RectF A0H;
    public final C1231Nz A0I;
    public static String[] A0J = {"dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS", "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk", "3nDu3mubCrSGPsHb", "SUxuavEQD34fwSKO8hxc7w", "hmAyL1Y1BI3zOyZEMNvfuG", "1nycCDmAbpyAo4RWRzHJ2ixoeiRT", "fh6VcnyoMwgZMcb2oBIx6", "bmD"};
    public static final int A0L = (int) (C1148Ku.A02 * 0.0f);
    public static final int A0M = (int) (C1148Ku.A02 * 9.0f);
    public static final int A0K = (int) (C1148Ku.A02 * 9.0f);

    public C9G(C1231Nz c1231Nz, boolean z, String str, S0 s0) {
        super(c1231Nz, z);
        this.A0G = new Path();
        this.A0H = new RectF();
        this.A0D = new KK() { // from class: com.facebook.ads.redexgen.X.9h
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C1141Kl c1141Kl) {
                if (this.A00.getVideoView() != null) {
                    this.A00.A07.A0P().setVolume(this.A00.getVideoView().getVolume());
                }
            }
        };
        this.A09 = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.9g
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                this.A00.A03();
                Object tag = this.A00.getTag(-1593835536);
                if (tag != null) {
                    this.A00.A07.A0N().ADJ(((Integer) tag).intValue());
                }
            }
        };
        this.A0B = new MI() { // from class: com.facebook.ads.redexgen.X.9L
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MJ mj) {
                this.A00.A02();
                this.A00.A07.A0O().ADT(this.A00);
            }
        };
        this.A0A = new MU() { // from class: com.facebook.ads.redexgen.X.9J
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass72 anonymousClass72) {
                this.A00.A03();
                this.A00.A07.A0O().ADR(this.A00);
            }
        };
        this.A0C = new MA() { // from class: com.facebook.ads.redexgen.X.9I
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MD md) {
                this.A00.A05 = true;
                this.A00.A04();
            }
        };
        this.A0I = c1231Nz;
        this.A07 = s0;
        this.A0E = str;
        YA yaA05 = c1231Nz.A05();
        this.A08 = yaA05;
        setGravity(17);
        int i = A0L;
        setPadding(i, 0, i, i);
        LV.A0M(this, 0);
        setUpView(yaA05);
        Paint paint = new Paint();
        this.A0F = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setStyle(Paint.Style.FILL);
        paint.setAlpha(16);
        paint.setAntiAlias(true);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        if (this.A0I.A0A() == null || this.A02 == null) {
            return;
        }
        this.A0I.A0A().A9D(this.A02.getSimpleVideoView());
        if (IP.A1n(getContext())) {
            this.A0I.A0A().A07(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        if (this.A0I.A0A() != null) {
            this.A0I.A0A().A05();
            if (this.A02 != null) {
                this.A0I.A0A().AG0(this.A02.getSimpleVideoView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        if (this.A01 == null) {
            return;
        }
        if (!A17() || !this.A05) {
            boolean zA17 = A17();
            String[] strArr = A0J;
            if (strArr[3].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[3] = "whWH7G9NZGoicUCMK8TGye";
            strArr2[4] = "jQqQ2QRGHP0rmsCqitHuog";
            if (zA17 || !this.A04) {
                return;
            }
        }
        this.A01.AAY();
    }

    private void A05(View view) {
        RelativeLayout.LayoutParams layoutParams;
        if (view == null || (layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.addRule(13, -1);
        view.setLayoutParams(layoutParams);
    }

    public static void A06(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        LV.A0K(view);
    }

    private void setUpView(YA ya) {
        setUpImageView(ya);
        setUpVideoView(ya);
        setUpMediaContainer(ya);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A0D() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A10() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
    public final void A13() {
        PE pe;
        if (!A17() || (pe = this.A02) == null) {
            return;
        }
        pe.A01();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
    public final void A14() {
        if (A17()) {
            A15();
            PE pe = this.A02;
            if (pe != null) {
                pe.A05(EnumC1267Pj.A02);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
    public final void A15() {
        PE pe;
        float volume = this.A07.A0P().getVolume();
        if (!A17() || (pe = this.A02) == null || volume == pe.getVolume()) {
            return;
        }
        this.A02.setVolume(volume);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
    public final boolean A16() {
        PE pe;
        return A17() && (pe = this.A02) != null && pe.A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
    public final boolean A17() {
        return this.A03;
    }

    public final void A18(Map<String, String> map) {
        PE pe = this.A02;
        if (pe != null) {
            pe.A02();
            if (A17()) {
                this.A02.A04(getAdEventManager(), this.A0E, map);
            }
        }
    }

    public final PE getVideoView() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A0G.reset();
        this.A0H.set(0.0f, 0.0f, getWidth(), getHeight());
        boolean z = getResources().getConfiguration().orientation == 1;
        int i = z ? A0K : 0;
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.drawPath(this.A0G, this.A0F);
        this.A0H.set(A0L, 0.0f, getWidth() - r3, getHeight() - r3);
        if (z) {
            i = A0M;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.clipPath(this.A0G);
        super.onDraw(canvas);
    }

    public void setCTAInfo(C1N c1n, Map<String, String> map) {
        getCtaButton().setCta(c1n, this.A0E, map);
    }

    public void setImageUrl(String str) {
        MC mc = this.A00;
        if (mc != null) {
            mc.setVisibility(0);
            new T8(this.A00, this.A08).A04().A06(new T0(this)).A07(str);
        }
        PE pe = this.A02;
        if (pe != null) {
            pe.setVisibility(8);
        }
    }

    public void setIsVideo(boolean z) {
        this.A03 = z;
    }

    public void setOnAssetsLoadedListener(ON on) {
        this.A01 = on;
    }

    public void setUpImageView(YA ya) {
        this.A00 = new MC(ya);
        if (IP.A17(ya)) {
            NO.A00(this.A00, IP.A18(ya), new ViewOnClickListenerC1207Nb(this));
        }
        A06(this.A00);
    }

    public void setUpMediaContainer(YA ya) {
        RelativeLayout relativeLayout = new RelativeLayout(ya);
        this.A06 = relativeLayout;
        A06(relativeLayout);
        MC mc = this.A00;
        if (mc != null) {
            this.A06.addView(mc);
            A05(this.A00);
        }
        PE pe = this.A02;
        if (pe != null) {
            this.A06.addView(pe);
            A05(this.A02);
        }
        addView(this.A06);
    }

    public void setUpVideoView(YA ya) {
        this.A02 = new PE(ya, new C1094In(this.A0E, getAdEventManager()));
        if (IP.A19(ya)) {
            NO.A00(this.A02, IP.A1A(ya), new ViewOnClickListenerC1208Nc(this));
        }
        A06(this.A02);
    }

    public void setVideoPlaceholderUrl(String str) {
        PE pe = this.A02;
        if (pe != null) {
            pe.setPlaceholderUrl(str);
        }
    }

    public void setVideoUrl(String str) {
        MC mc = this.A00;
        if (mc != null) {
            if (A0J[5].length() == 10) {
                throw new RuntimeException();
            }
            A0J[2] = "s54OOOYMcUndmM7F";
            mc.setVisibility(8);
        }
        PE pe = this.A02;
        if (pe != null) {
            pe.setVisibility(0);
            this.A02.setVideoURI(str);
            this.A02.A03(this.A0D);
            this.A02.A03(this.A09);
            this.A02.A03(this.A0B);
            this.A02.A03(this.A0A);
            this.A02.A03(this.A0C);
        }
    }
}
