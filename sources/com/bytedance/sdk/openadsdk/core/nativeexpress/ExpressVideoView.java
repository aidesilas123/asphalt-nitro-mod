package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {
    private boolean p;

    public ExpressVideoView(@NonNull Context context, @NonNull q qVar, String str, com.bytedance.sdk.openadsdk.b.g gVar) {
        super(context, qVar, false, str, false, false, gVar);
        this.p = false;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void q() {
        ad.a((View) this.f1712g, 0);
        ad.a((View) this.h, 0);
        ad.a((View) this.j, 8);
    }

    private void r() {
        g();
        RelativeLayout relativeLayout = this.f1712g;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            } else {
                com.bytedance.sdk.openadsdk.k.c.a().a(this.a.K().j(), this.a.K().c(), this.a.K().b(), this.h, this.a);
            }
        }
        q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    protected void a(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    protected void b() {
        if (!this.f1710e || !p.b(this.l)) {
            this.f1709d = false;
        }
        super.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    protected void c() {
        if (this.p) {
            super.c();
        }
    }

    public void d() {
        ImageView imageView = this.j;
        if (imageView != null) {
            ad.a((View) imageView, 8);
        }
    }

    protected void e() {
        g();
        ad.a((View) this.f1712g, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.i;
        if (imageView != null && imageView.getVisibility() == 0) {
            ad.e(this.f1712g);
        }
        c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        ImageView imageView = this.i;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowFocusChanged(z);
        } else {
            r();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        ImageView imageView = this.i;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            r();
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.p = z;
    }

    public void setShouldCheckNetChange(boolean z) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.e(z);
        }
    }

    public void setShowAdInteractionView(boolean z) {
        com.bykv.vk.openvk.component.video.api.d.b bVarM;
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar == null || (bVarM = cVar.m()) == null) {
            return;
        }
        bVarM.a(z);
    }
}
