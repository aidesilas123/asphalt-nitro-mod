package com.facebook.ads.internal.view;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.redexgen.X.AbstractC1172Ls;
import com.facebook.ads.redexgen.X.C06791d;
import com.facebook.ads.redexgen.X.C1094In;
import com.facebook.ads.redexgen.X.C1148Ku;
import com.facebook.ads.redexgen.X.C1170Lq;
import com.facebook.ads.redexgen.X.C1225Nt;
import com.facebook.ads.redexgen.X.C1M;
import com.facebook.ads.redexgen.X.C1X;
import com.facebook.ads.redexgen.X.EnumC1157Ld;
import com.facebook.ads.redexgen.X.InterfaceC1171Lr;
import com.facebook.ads.redexgen.X.InterfaceC1173Lt;
import com.facebook.ads.redexgen.X.LV;
import com.facebook.ads.redexgen.X.ME;
import com.facebook.ads.redexgen.X.PB;
import com.facebook.ads.redexgen.X.T3;
import com.facebook.ads.redexgen.X.ViewOnClickListenerC1178Ly;
import com.facebook.ads.redexgen.X.YA;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class FullScreenAdToolbar extends AbstractC1172Ls {
    public static byte[] A09;
    public static String[] A0A = {"elaUgpg", "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38", "j2Hg99bd5kkvFLrtwtqoGvtE7T", "FtK0h2Y990QReQxCoMrwn7Y", "09p430KvfvIa5D7TMMbG57be7BWhVuc0", "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc", "MQsbPX4", "ODYsITK"};
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public C1170Lq A00;
    public InterfaceC1171Lr A01;
    public InterfaceC1171Lr A02;
    public boolean A03;
    public final RelativeLayout A04;
    public final C1094In A05;
    public final InterfaceC1173Lt A06;
    public final ME A07;
    public final PB A08;

    static {
        A03();
        int i = (int) (C1148Ku.A02 * 10.0f);
        A0B = i;
        int i2 = (int) (C1148Ku.A02 * 16.0f);
        A0F = i2;
        A0D = i2 - i;
        A0E = (i2 * 2) - i;
        A0C = (int) (C1148Ku.A02 * 4.0f);
    }

    public FullScreenAdToolbar(YA ya, InterfaceC1173Lt interfaceC1173Lt, C1094In c1094In, int i) {
        super(ya);
        this.A01 = null;
        this.A03 = true;
        this.A06 = interfaceC1173Lt;
        this.A05 = c1094In;
        setGravity(16);
        ME me = new ME(ya, i);
        this.A07 = me;
        me.setContentDescription(A02(0, 8, 50));
        me.setActionClickListener(new ViewOnClickListenerC1178Ly(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i2 = A0D;
        layoutParams.setMargins(i2, i2, A0E, i2);
        addView(me, layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(ya);
        this.A04 = relativeLayout;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        PB pb = new PB(ya);
        this.A08 = pb;
        LV.A0G(1006, pb);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        pb.setLayoutParams(layoutParams3);
        relativeLayout.addView(pb);
        addView(relativeLayout, layoutParams2);
    }

    public FullScreenAdToolbar(YA ya, InterfaceC1173Lt interfaceC1173Lt, C1094In c1094In, int i, int i2) {
        this(ya, interfaceC1173Lt, c1094In, i);
        A09(ya, i2);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A09 = new byte[]{-26, Ascii.SI, Ascii.DC2, Ascii.SYN, 8, -61, -28, 7, 56, 75, 86, 85, 88, 90, 6, 39, 74, 77, 72, 72, 69, 59, 58, 75};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public final void A04() {
        InterfaceC1171Lr interfaceC1171Lr = this.A01;
        if (interfaceC1171Lr != null) {
            this.A02 = interfaceC1171Lr;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public final void A05() {
        this.A01 = getToolbarListener();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public final void A06(C1M c1m, boolean z) {
        boolean z2 = this.A03;
        int iA04 = c1m.A04(z2);
        this.A08.A02(c1m.A0A(z2), iA04);
        this.A00.setIconColors(iA04);
        this.A00.setContentDescription(A02(8, 9, 117));
        this.A07.A02(c1m, z2, z);
        if (!z2) {
            LV.A0M(this, 0);
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
        gradientDrawable.setCornerRadius(0.0f);
        LV.A0S(this, gradientDrawable);
        LV.A0Q(this.A00, 0, ViewCompat.MEASURED_STATE_MASK, A0C);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public final boolean A07() {
        return this.A07.A03();
    }

    public final void A08(C1X c1x, String str, int i) {
        this.A07.setInitialUnskippableSeconds(i);
        C1170Lq c1170Lq = this.A00;
        if (c1170Lq != null) {
            c1170Lq.setAdDetails(c1x, str, this.A05, this.A06);
        }
    }

    public final void A09(YA ya, int i) {
        C1170Lq c1170Lq = this.A00;
        if (c1170Lq != null) {
            LV.A0J(c1170Lq);
            this.A00.removeAllViews();
        }
        this.A00 = new C1170Lq(ya, i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        int i2 = A0F;
        layoutParams.setMargins(0, i2 / 2, i2 / 2, i2 / 2);
        addView(this.A00, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public View getDetailsContainer() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public int getToolbarActionMode() {
        return this.A07.getToolbarActionMode();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public int getToolbarHeight() {
        return AbstractC1172Ls.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public InterfaceC1171Lr getToolbarListener() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setAdReportingVisible(boolean z) {
        this.A00.setVisibility(z ? 0 : 8);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setCTAClickListener(View.OnClickListener onClickListener) {
        this.A08.setOnClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setCTAClickListener(T3 t3) {
        this.A08.setOnClickListener(C1225Nt.A03(t3, A02(17, 7, 104)));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setFullscreen(boolean z) {
        this.A03 = z;
    }

    public void setOnlyPageDetails(C1X c1x) {
        if (c1x != null) {
            this.A08.setPageDetails(c1x);
        } else {
            this.A08.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setPageDetails(C1X c1x, String str, int i, C06791d c06791d) {
        this.A07.setInitialUnskippableSeconds(i);
        this.A08.setPageDetails(c1x);
        C1170Lq c1170Lq = this.A00;
        if (c1170Lq != null) {
            c1170Lq.setAdDetails(c1x, str, this.A05, this.A06);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setPageDetailsVisible(boolean z) {
        this.A04.removeAllViews();
        if (z) {
            RelativeLayout relativeLayout = this.A04;
            PB pb = this.A08;
            if (A0A[4].charAt(4) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[2] = "uYrc95dj4mq6YR3RipRhNZPjST";
            strArr[3] = "ufyXPPKrvmASdIniU0CJIS9";
            relativeLayout.addView(pb);
        }
        ME me = this.A07;
        String[] strArr2 = A0A;
        if (strArr2[2].length() == strArr2[3].length()) {
            me.setToolbarMessageEnabled(!z);
        } else {
            A0A[1] = "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq";
            me.setToolbarMessageEnabled(!z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setProgress(float f2) {
        this.A07.setProgress(f2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A07.setProgressClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setProgressImage(EnumC1157Ld enumC1157Ld) {
        this.A07.setProgressImage(enumC1157Ld);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setProgressImmediate(float f2) {
        this.A07.setProgressImmediate(f2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setProgressSpinnerInvisible(boolean z) {
        this.A07.setProgressSpinnerInvisible(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setToolbarActionMessage(String str) {
        this.A07.setToolbarMessage(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setToolbarActionMode(int i) {
        this.A07.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1172Ls
    public void setToolbarListener(InterfaceC1171Lr interfaceC1171Lr) {
        this.A02 = interfaceC1171Lr;
    }
}
