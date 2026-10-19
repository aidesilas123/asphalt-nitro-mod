package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ls, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1172Ls extends LinearLayout {
    public static int A00 = (int) (C1148Ku.A02 * 56.0f);

    public AbstractC1172Ls(Context context) {
        super(context);
    }

    public abstract void A04();

    public abstract void A05();

    public abstract void A06(C1M c1m, boolean z);

    public abstract boolean A07();

    public abstract View getDetailsContainer();

    public abstract int getToolbarActionMode();

    public abstract int getToolbarHeight();

    public abstract InterfaceC1171Lr getToolbarListener();

    public abstract void setAdReportingVisible(boolean z);

    public abstract void setCTAClickListener(View.OnClickListener onClickListener);

    public abstract void setCTAClickListener(T3 t3);

    public abstract void setFullscreen(boolean z);

    public abstract void setPageDetails(C1X c1x, String str, int i, C06791d c06791d);

    public abstract void setPageDetailsVisible(boolean z);

    public abstract void setProgress(float f2);

    public abstract void setProgressClickListener(View.OnClickListener onClickListener);

    public abstract void setProgressImage(EnumC1157Ld enumC1157Ld);

    public abstract void setProgressImmediate(float f2);

    public abstract void setProgressSpinnerInvisible(boolean z);

    public abstract void setToolbarActionMessage(String str);

    public abstract void setToolbarActionMode(int i);

    public abstract void setToolbarListener(InterfaceC1171Lr interfaceC1171Lr);
}
