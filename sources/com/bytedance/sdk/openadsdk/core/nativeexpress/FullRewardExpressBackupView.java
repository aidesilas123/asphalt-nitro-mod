package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class FullRewardExpressBackupView extends BackupView {
    private FrameLayout a;
    private NativeExpressView m;
    private FrameLayout n;

    public FullRewardExpressBackupView(@NonNull Context context) {
        super(context);
        this.b = context;
    }

    private void b() {
        this.f1617g = ad.b(this.b, this.m.getExpectExpressWidth());
        this.h = ad.b(this.b, this.m.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f1617g, this.h);
        }
        layoutParams.width = this.f1617g;
        layoutParams.height = this.h;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        this.c.B();
        c();
    }

    private void c() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this.b);
        this.a = pAGFrameLayout;
        addView(pAGFrameLayout, new FrameLayout.LayoutParams(-1, -1));
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(this.b);
        this.n = pAGFrameLayout2;
        this.a.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        this.n.removeAllViews();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(View view, int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
        NativeExpressView nativeExpressView = this.m;
        if (nativeExpressView != null) {
            nativeExpressView.a(view, i, mVar);
        }
    }

    public void a(q qVar, NativeExpressView nativeExpressView) {
        com.bytedance.sdk.component.utils.l.b("FullRewardExpressBackupView", "show backup view");
        if (qVar == null) {
            return;
        }
        setBackgroundColor(-1);
        this.c = qVar;
        this.m = nativeExpressView;
        if (qVar.aS() == 7) {
            this.f1616f = "rewarded_video";
        } else {
            this.f1616f = "fullscreen_interstitial_ad";
        }
        b();
        this.m.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public View getBackupContainerBackgroundView() {
        return this.a;
    }

    public FrameLayout getVideoContainer() {
        return this.n;
    }
}
