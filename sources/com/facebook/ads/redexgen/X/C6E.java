package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6E, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C6E extends PX {
    public final Paint A00;
    public final YA A01;
    public final C1094In A02;
    public final AbstractC1233Ob A03;
    public final MU A04;
    public final MI A05;
    public final Q4 A06;

    public C6E(YA ya, boolean z, C1094In c1094In) {
        super(ya);
        this.A04 = new MU() { // from class: com.facebook.ads.redexgen.X.6Y
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass72 anonymousClass72) {
                this.A00.A06.setChecked(true);
            }
        };
        this.A05 = new MI() { // from class: com.facebook.ads.redexgen.X.6X
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MJ mj) {
                this.A00.A06.setChecked(false);
            }
        };
        this.A03 = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.6K
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                this.A00.A06.setChecked(true);
            }
        };
        this.A02 = c1094In;
        this.A01 = ya;
        Q4 q4 = new Q4(ya, z);
        this.A06 = q4;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 23.76d), (int) (((double) displayMetrics.density) * 23.76d));
        layoutParams.addRule(13);
        q4.setLayoutParams(layoutParams);
        q4.setChecked(true);
        q4.setClickable(false);
        Paint paint = new Paint();
        this.A00 = paint;
        paint.setStyle(Paint.Style.FILL);
        if (z) {
            paint.setColor(-1728053248);
        } else {
            paint.setColor(-1);
            paint.setAlpha(204);
        }
        LV.A0M(this, 0);
        addView(q4);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 72.0d), (int) (((double) displayMetrics.density) * 72.0d));
        layoutParams2.addRule(13);
        setLayoutParams(layoutParams2);
        LV.A0G(1004, this);
    }

    @Override // com.facebook.ads.redexgen.X.PX
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A04, this.A05, this.A03);
        }
        setOnClickListener(new Q1(this));
    }

    @Override // com.facebook.ads.redexgen.X.PX
    public final void A08() {
        setOnClickListener(null);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A03, this.A05, this.A04);
        }
        super.A08();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawCircle(getPaddingLeft() + r4, getPaddingTop() + (r0 / 2), Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom()) / 2, this.A00);
        super.onDraw(canvas);
    }
}
