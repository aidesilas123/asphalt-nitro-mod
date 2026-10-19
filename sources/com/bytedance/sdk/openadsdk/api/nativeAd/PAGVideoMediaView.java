package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.c;

/* JADX INFO: loaded from: classes2.dex */
public class PAGVideoMediaView extends PAGMediaView implements a.InterfaceC0131a {
    private NativeVideoTsView b;
    private final com.bytedance.sdk.openadsdk.apiImpl.feed.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f1150d;

    public PAGVideoMediaView(Context context, @Nullable View view, @Nullable com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar) {
        super(context);
        a(view);
        this.c = aVar;
    }

    private void a() {
        NativeVideoTsView nativeVideoTsView = this.b;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.n();
        }
    }

    private void a(View view) {
        if (view instanceof NativeVideoTsView) {
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) view;
            this.b = nativeVideoTsView;
            addView(nativeVideoTsView, -1, -1);
        }
    }

    private boolean b() {
        NativeVideoTsView nativeVideoTsView = this.b;
        if (nativeVideoTsView != null) {
            return nativeVideoTsView.l();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void close() {
        NativeVideoTsView nativeVideoTsView = this.b;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.o();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a.InterfaceC0131a
    public long getVideoProgress() {
        NativeVideoTsView nativeVideoTsView = this.b;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0L;
        }
        return this.b.getNativeVideoController().e();
    }

    public void handleInterruptVideo() {
        if (b()) {
            return;
        }
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        c.a(this, this.f1150d);
    }

    public void setMaterialMeta(q qVar) {
        this.f1150d = qVar;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        if (onClickListener instanceof a) {
            ((a) onClickListener).a((a.InterfaceC0131a) this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void setVideoAdListener(final PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar = this.c;
        if (aVar == null) {
            return;
        }
        aVar.a(new PAGVideoAdListener() { // from class: com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView.1
            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdComplete() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPaused() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPlay() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoError() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }
        });
    }
}
