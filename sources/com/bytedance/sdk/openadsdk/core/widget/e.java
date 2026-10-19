package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.layout.TTVideoTrafficTipsLayout;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: compiled from: VideoTrafficTipLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private View a;
    private TextView b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.video.nativevideo.a f1764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f1765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1766f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bykv.vk.openvk.component.video.api.c.b f1767g;
    private ViewGroup h;

    /* JADX INFO: compiled from: VideoTrafficTipLayout.java */
    public enum a {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    /* JADX INFO: compiled from: VideoTrafficTipLayout.java */
    public interface b {
        boolean j();

        void k();
    }

    private ViewGroup.LayoutParams a(ViewGroup viewGroup) {
        if (viewGroup instanceof RelativeLayout) {
            return new RelativeLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof LinearLayout) {
            return new LinearLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof FrameLayout) {
            return new FrameLayout.LayoutParams(-1, -1);
        }
        return null;
    }

    private void a(Context context, View view, boolean z) {
        ViewGroup.LayoutParams layoutParamsA;
        if (context == null || view == null || this.a != null || (layoutParamsA = a(this.h)) == null) {
            return;
        }
        TTVideoTrafficTipsLayout tTVideoTrafficTipsLayout = new TTVideoTrafficTipsLayout(context);
        this.a = tTVideoTrafficTipsLayout;
        tTVideoTrafficTipsLayout.setLayoutParams(layoutParamsA);
        this.h.addView(this.a);
        this.b = (TextView) this.a.findViewById(i.bb);
        View viewFindViewById = this.a.findViewById(i.bc);
        if (z) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.e.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    e.this.c();
                    if (e.this.f1764d != null) {
                        e.this.f1764d.a(a.START_VIDEO, (String) null);
                    }
                }
            });
        } else {
            viewFindViewById.setOnClickListener(null);
            viewFindViewById.setClickable(false);
        }
    }

    private void a(com.bykv.vk.openvk.component.video.api.c.b bVar, boolean z) {
        View view;
        String str;
        View view2;
        if (bVar == null || (view = this.a) == null || this.c == null || view.getVisibility() == 0) {
            return;
        }
        b bVar2 = this.f1765e;
        if (bVar2 != null) {
            bVar2.k();
        }
        double dCeil = Math.ceil((bVar.e() * 1.0d) / 1048576.0d);
        if (z) {
            str = String.format(s.a(this.c, "tt_video_without_wifi_tips"), Float.valueOf(Double.valueOf(dCeil).floatValue()));
        } else {
            str = s.a(this.c, "tt_video_without_wifi_tips") + s.a(this.c, "tt_video_bytesize");
        }
        ad.a(this.a, 0);
        ad.a(this.b, str);
        Log.i("VideoTrafficTipLayout", "showTrafficTipCover: ");
        if (!ad.d(this.a) || (view2 = this.a) == null) {
            return;
        }
        view2.bringToFront();
        Log.i("VideoTrafficTipLayout", "showTrafficTipCover: bringToFront");
    }

    private boolean a(int i) {
        b bVar;
        if (a() || this.f1766f) {
            return true;
        }
        if (this.f1764d != null && (bVar = this.f1765e) != null) {
            if (bVar.j()) {
                this.f1764d.e(null, null);
            }
            this.f1764d.a(a.PAUSE_VIDEO, (String) null);
        }
        a(this.f1767g, true);
        return false;
    }

    private void b() {
        this.f1767g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.c == null) {
            return;
        }
        d();
    }

    private void d() {
        View view = this.a;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void a(Context context, ViewGroup viewGroup) {
        if (context == null || !(viewGroup instanceof ViewGroup)) {
            return;
        }
        this.h = viewGroup;
        this.c = o.a().getApplicationContext();
    }

    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.a aVar, b bVar) {
        this.f1765e = bVar;
        this.f1764d = aVar;
    }

    public void a(boolean z) {
        if (z) {
            b();
        }
        d();
    }

    public boolean a() {
        View view = this.a;
        return view != null && view.getVisibility() == 0;
    }

    public boolean a(int i, com.bykv.vk.openvk.component.video.api.c.b bVar, boolean z) {
        Context context = this.c;
        if (context == null || bVar == null) {
            return true;
        }
        a(context, this.h, z);
        this.f1767g = bVar;
        if (i == 1 || i == 2) {
            return a(i);
        }
        return true;
    }
}
