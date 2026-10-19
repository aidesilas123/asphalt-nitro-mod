package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class ME extends LinearLayout {
    public static final int A07 = (int) (C1148Ku.A02 * 15.0f);
    public static final int A08 = (int) (C1148Ku.A02 * 10.0f);
    public static final int A09 = (int) (C1148Ku.A02 * 44.0f);
    public int A00;
    public boolean A01;
    public final ImageView A02;
    public final LinearLayout A03;
    public final TextView A04;
    public final YA A05;
    public final NY A06;

    public ME(YA ya, int i) {
        super(ya);
        this.A01 = false;
        this.A05 = ya;
        ImageView imageView = new ImageView(ya);
        this.A02 = imageView;
        int i2 = A08;
        imageView.setPadding(i2, i2, i2, i2);
        NY ny = new NY(ya);
        this.A06 = ny;
        ny.setProgress(0.0f);
        ny.setPadding(i2, i2, i2, i2);
        this.A04 = new TextView(ya);
        setOrientation(0);
        this.A03 = new LinearLayout(ya);
        this.A00 = i;
        A00();
    }

    private void A00() {
        setToolbarActionMode(this.A00);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        int i = A09;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, i);
        LV.A0X(this.A04, true, 16);
        this.A04.setTextColor(-1);
        this.A04.setVisibility(8);
        this.A03.addView(this.A02, layoutParams2);
        this.A03.addView(this.A06, layoutParams2);
        addView(this.A03, layoutParams);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        addView(this.A04, layoutParams3);
    }

    private void A01() {
        NY ny = this.A06;
        int i = this.A00;
        int i2 = 8;
        ny.setVisibility((i == 2 || i == 6) ? this.A01 ? 4 : 0 : 8);
        ImageView imageView = this.A02;
        int i3 = this.A00;
        if (i3 == 5) {
            i2 = 4;
        } else if (i3 != 2 && i3 != 6) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
    }

    public final void A02(C1M c1m, boolean z, boolean z2) {
        int iA04 = c1m.A04(z);
        this.A06.A02(C07052d.A01(iA04, 77), iA04, 110);
        this.A02.setColorFilter(iA04);
        if (z2) {
            this.A04.setTextColor(C07052d.A01(-1, 110));
        } else {
            this.A04.setTextColor(iA04);
        }
    }

    public final boolean A03() {
        return !this.A04.getText().toString().isEmpty();
    }

    public final boolean A04() {
        int i = this.A00;
        return (i == 2 || i == 4) ? false : true;
    }

    public int getToolbarActionMode() {
        return this.A00;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setProgress(float f2) {
        this.A06.setProgressWithAnimation(f2);
    }

    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A06.setOnClickListener(onClickListener);
    }

    public void setProgressImage(EnumC1157Ld enumC1157Ld) {
        this.A06.setImage(enumC1157Ld);
    }

    public void setProgressImmediate(float f2) {
        this.A06.clearAnimation();
        this.A06.setProgress(f2);
    }

    public void setProgressSpinnerInvisible(boolean z) {
        this.A01 = z;
        A01();
    }

    public void setToolbarActionMode(int i) {
        EnumC1157Ld enumC1157Ld;
        this.A05.A0E().ADA(i);
        this.A00 = i;
        A01();
        setVisibility(0);
        if (Build.VERSION.SDK_INT >= 16) {
            this.A02.setImageAlpha(255);
        }
        ImageView imageView = this.A02;
        int i2 = A08;
        imageView.setPadding(i2, i2, i2, i2);
        switch (i) {
            case 0:
                enumC1157Ld = EnumC1157Ld.CROSS;
                break;
            case 1:
                enumC1157Ld = EnumC1157Ld.SKIP_ARROW;
                break;
            case 2:
            default:
                enumC1157Ld = EnumC1157Ld.CROSS;
                break;
            case 3:
                enumC1157Ld = EnumC1157Ld.MINIMIZE_ARROW;
                break;
            case 4:
                enumC1157Ld = EnumC1157Ld.CROSS;
                this.A02.setVisibility(8);
                setVisibility(8);
                break;
            case 5:
                enumC1157Ld = EnumC1157Ld.CROSS;
                break;
            case 6:
                enumC1157Ld = EnumC1157Ld.CROSS;
                break;
            case 7:
                enumC1157Ld = EnumC1157Ld.CROSS;
                if (Build.VERSION.SDK_INT >= 16) {
                    this.A02.setImageAlpha(110);
                }
                ImageView imageView2 = this.A02;
                int i3 = A07;
                imageView2.setPadding(i3, i3, i3, i3);
                break;
        }
        this.A02.setImageBitmap(C1158Le.A01(enumC1157Ld));
        if (i == 1) {
            LV.A0G(1005, this.A02);
        } else {
            LV.A0G(1002, this.A02);
        }
    }

    public void setToolbarMessage(String str) {
        this.A04.setText(str);
        this.A04.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
    }

    public void setToolbarMessageEnabled(boolean z) {
        this.A04.setVisibility(z ? 0 : 4);
    }
}
