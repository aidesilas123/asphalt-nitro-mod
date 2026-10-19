package com.bytedance.sdk.openadsdk.component.reward.a;

import android.R;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;

/* JADX INFO: compiled from: RewardFullDislikeManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final a a;
    private TTAdDislikeDialog b;
    private TTAdDislikeToast c;

    public c(a aVar) {
        this.a = aVar;
    }

    private void b(final com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        if (this.b == null) {
            a aVar = this.a;
            TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(aVar.V, aVar.a);
            this.b = tTAdDislikeDialog;
            tTAdDislikeDialog.setCallback(new TTAdDislikeDialog.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.c.1
                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                public void a(int i, FilterWord filterWord) {
                    if (c.this.a.w.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    c.this.a.w.set(true);
                    c.this.c();
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                public void a(View view) {
                    c.this.a.v.set(true);
                    bVar.q();
                    if (c.this.a.G.b()) {
                        c.this.a.G.o();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                public void b(View view) {
                    c.this.a.v.set(false);
                    c.this.a.G.a(bVar);
                    if (c.this.a.G.d()) {
                        c.this.a.G.n();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                public void c(View view) {
                }
            });
            ((FrameLayout) this.a.V.findViewById(R.id.content)).addView(this.b);
        }
        if (this.c == null) {
            this.c = new TTAdDislikeToast(this.a.V);
            ((FrameLayout) this.a.V.findViewById(R.id.content)).addView(this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.c.a(TTAdDislikeToast.getDislikeSendTip());
    }

    public void a() {
        TTAdDislikeToast tTAdDislikeToast = this.c;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.b();
        }
    }

    public void a(com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        if (this.a.V.isFinishing()) {
            return;
        }
        if (this.a.w.get()) {
            this.c.a(TTAdDislikeToast.getDislikeTip());
        } else {
            b(bVar);
            this.b.a();
        }
    }

    public void b() {
        TTAdDislikeToast tTAdDislikeToast = this.c;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.c();
        }
    }
}
