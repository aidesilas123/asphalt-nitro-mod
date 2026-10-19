package com.tapjoy;

import android.content.Context;
import android.os.Handler;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.tapjoy.internal.g3;

/* JADX INFO: loaded from: classes4.dex */
public class TJCloseButton extends ImageButton {
    public boolean a;
    public boolean b;

    public enum ClosePosition {
        TOP_LEFT(new int[]{10, 9}),
        TOP_CENTER(new int[]{10, 14}),
        TOP_RIGHT(new int[]{10, 11}),
        CENTER(new int[]{13}),
        BOTTOM_LEFT(new int[]{12, 9}),
        BOTTOM_CENTER(new int[]{12, 14}),
        BOTTOM_RIGHT(new int[]{12, 11});

        public final RelativeLayout.LayoutParams i = new RelativeLayout.LayoutParams((int) (((double) TapjoyConnectCore.getDeviceScreenDensityScale()) * 75.0d), (int) (((double) TapjoyConnectCore.getDeviceScreenDensityScale()) * 75.0d));

        ClosePosition(int[] iArr) {
            for (int i : iArr) {
                this.i.addRule(i);
            }
            int deviceScreenDensityScale = (int) (TapjoyConnectCore.getDeviceScreenDensityScale() * (-10.0f));
            this.i.setMargins(0, deviceScreenDensityScale, deviceScreenDensityScale, 0);
        }

        public final RelativeLayout.LayoutParams e() {
            return this.i;
        }
    }

    public TJCloseButton(Context context) {
        this(context, ClosePosition.TOP_RIGHT);
    }

    public TJCloseButton(Context context, ClosePosition closePosition) {
        super(context);
        this.a = true;
        setImageBitmap(TapjoyIcons.getCloseCircularImage(new e0(getContext()).b()));
        setScaleType(ImageView.ScaleType.FIT_XY);
        setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
        setLayoutParams(closePosition.e());
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        setAlpha(0.0f);
        setVisibility(0);
        this.b = true;
        setClickable(false);
        new Handler().postDelayed(new g3(this), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    public void setClickableRequested(boolean z) {
        this.a = z;
        if (this.b) {
            return;
        }
        setClickable(z);
    }
}
