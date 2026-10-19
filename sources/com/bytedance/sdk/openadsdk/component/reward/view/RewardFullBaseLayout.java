package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class RewardFullBaseLayout extends PAGFrameLayout {
    public RewardFullBaseLayout(Context context) {
        super(context);
    }

    private void a(View view, ViewGroup viewGroup) {
        if (view != null) {
            viewGroup.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        bVar.a(this);
        RFEndCardBackUpLayout rFEndCardBackUpLayoutH = bVar.h();
        if (rFEndCardBackUpLayoutH != null) {
            addView(rFEndCardBackUpLayoutH, new FrameLayout.LayoutParams(-1, -1));
        }
        a(bVar.i(), this);
        a(bVar.j(), this);
    }
}
