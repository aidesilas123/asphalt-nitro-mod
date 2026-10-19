package com.bytedance.sdk.openadsdk.core.g;

import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.o;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ViewabilitySessionManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    final Set<Pair<View, FriendlyObstructionPurpose>> a = new HashSet();
    private g b;

    private f() {
        e.a(o.a());
    }

    public static f a() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        g gVar = this.b;
        if (gVar != null) {
            try {
                gVar.b(i);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        g gVar = this.b;
        try {
            if (gVar == null) {
                if (view == null || friendlyObstructionPurpose == null) {
                    return;
                }
                this.a.add(new Pair<>(view, friendlyObstructionPurpose));
                return;
            }
            if (view != null && friendlyObstructionPurpose != null) {
                gVar.a(view, friendlyObstructionPurpose);
            }
            if (this.a.size() > 0) {
                gVar.a(this.a);
                this.a.clear();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, Set<j> set) {
        try {
            if (this.b == null) {
                this.b = h.a(view, set);
            }
        } catch (Throwable th) {
            l.d("createVideoSession failed : " + th);
            HashMap map = new HashMap();
            map.put("scene", "createVideoSession");
            map.put("message", th.getMessage());
            e.a(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(WebView webView) {
        try {
            if (this.b == null) {
                this.b = h.a(webView);
            }
        } catch (Throwable th) {
            l.d("createWebViewSession failed : " + th);
            HashMap map = new HashMap();
            map.put("scene", "createWebViewSession");
            map.put("message", th.getMessage());
            e.a(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        g gVar = this.b;
        if (gVar != null) {
            try {
                gVar.a(z);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, float f2) {
        if (this.b != null) {
            try {
                a((View) null, (FriendlyObstructionPurpose) null);
                this.b.a(z, f2);
            } catch (Throwable unused) {
            }
        }
    }

    private Handler e() {
        return com.bytedance.sdk.component.utils.h.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.b != null) {
            try {
                a((View) null, (FriendlyObstructionPurpose) null);
                this.b.b();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        g gVar = this.b;
        if (gVar != null) {
            try {
                gVar.d();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        g gVar = this.b;
        if (gVar != null) {
            try {
                gVar.c();
            } catch (Throwable unused) {
            }
        }
    }

    @UiThread
    public void a(final int i) {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(i);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.3
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(i);
                }
            });
        }
    }

    @UiThread
    public void a(final long j, final boolean z) {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(j, z);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.10
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(j, z);
                }
            });
        }
    }

    @UiThread
    public void a(@Nullable final View view, @Nullable final FriendlyObstructionPurpose friendlyObstructionPurpose) {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(view, friendlyObstructionPurpose);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.9
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(view, friendlyObstructionPurpose);
                }
            });
        }
    }

    public void a(final View view, final Set<j> set) {
        if (this.b != null) {
            return;
        }
        if (view == null || set == null) {
            l.c("video view or view ability Vendors is null");
        } else if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(view, set);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.4
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(view, (Set<j>) set);
                }
            });
        }
    }

    @UiThread
    public void a(final WebView webView) {
        if (webView == null || this.b != null) {
            return;
        }
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(webView);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.1
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(webView);
                }
            });
        }
    }

    @UiThread
    public void a(final boolean z) {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(z);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.2
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(z);
                }
            });
        }
    }

    @UiThread
    public void a(final boolean z, final float f2) {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            b(z, f2);
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.6
                @Override // java.lang.Runnable
                public void run() {
                    f.this.b(z, f2);
                }
            });
        }
    }

    @UiThread
    public void b() {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            f();
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.5
                @Override // java.lang.Runnable
                public void run() {
                    f.this.f();
                }
            });
        }
    }

    public void b(long j, boolean z) {
        g gVar = this.b;
        if (gVar != null) {
            try {
                gVar.a(j / 1000.0f, z);
            } catch (Throwable unused) {
            }
        }
    }

    @UiThread
    public void c() {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            g();
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.7
                @Override // java.lang.Runnable
                public void run() {
                    f.this.g();
                }
            });
        }
    }

    @UiThread
    public void d() {
        if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
            h();
        } else {
            e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.f.8
                @Override // java.lang.Runnable
                public void run() {
                    f.this.h();
                }
            });
        }
    }
}
