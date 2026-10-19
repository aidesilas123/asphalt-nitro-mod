package com.mbridge.msdk.video.signal.a;

import android.app.Activity;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.video.signal.c;

/* JADX INFO: compiled from: DefaultJSCommon.java */
/* JADX INFO: loaded from: classes4.dex */
public class c implements com.mbridge.msdk.video.signal.c {
    protected String i;
    protected com.mbridge.msdk.videocommon.d.c j;
    protected com.mbridge.msdk.click.a k;
    protected boolean a = false;
    protected boolean b = false;
    protected int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f7564d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f7565e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f7566f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f7567g = 1;
    protected int h = -1;
    public c.a l = new a();
    protected int m = 2;

    /* JADX INFO: compiled from: DefaultJSCommon.java */
    public static class a implements c.a {
        @Override // com.mbridge.msdk.video.signal.c.a
        public void a() {
            aa.a("DefaultJSCommon", "onInitSuccess");
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public void a(int i, String str) {
            aa.a("DefaultJSCommon", "onH5Error,code:" + i + "，msg:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public void a(boolean z) {
            aa.a("DefaultJSCommon", "onStartInstall");
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public void b() {
            aa.a("DefaultJSCommon", "videoLocationReady");
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
            aa.a("DefaultJSCommon", "onDismissLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
            aa.a("DefaultJSCommon", "onDownloadFinish,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i) {
            aa.a("DefaultJSCommon", "onDownloadProgress,progress:" + i);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
            aa.a("DefaultJSCommon", "onDownloadStart,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            aa.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            aa.a("DefaultJSCommon", "onInterceptDefaultLoadingDialog");
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            aa.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
            aa.a("DefaultJSCommon", "onShowLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            aa.a("DefaultJSCommon", "onStartRedirection,campaign:" + campaign + ",url:" + str);
        }
    }

    /* JADX INFO: compiled from: DefaultJSCommon.java */
    public static class b implements c.a {
        private com.mbridge.msdk.video.signal.c a;
        private c.a b;

        public b(com.mbridge.msdk.video.signal.c cVar, c.a aVar) {
            this.a = cVar;
            this.b = aVar;
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public final void a() {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a();
            }
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public final void a(int i, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(i, str);
            }
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public final void a(boolean z) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(z);
            }
        }

        @Override // com.mbridge.msdk.video.signal.c.a
        public final void b() {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.b();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final void onDismissLoading(Campaign campaign) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onDismissLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final void onDownloadFinish(Campaign campaign) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onDownloadFinish(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final void onDownloadProgress(int i) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onDownloadProgress(i);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final void onDownloadStart(Campaign campaign) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onDownloadStart(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public final void onFinishRedirection(Campaign campaign, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onFinishRedirection(campaign, str);
            }
            com.mbridge.msdk.video.signal.c cVar = this.a;
            if (cVar != null) {
                cVar.d();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final boolean onInterceptDefaultLoadingDialog() {
            c.a aVar = this.b;
            return aVar != null && aVar.onInterceptDefaultLoadingDialog();
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public final void onRedirectionFailed(Campaign campaign, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onRedirectionFailed(campaign, str);
            }
            com.mbridge.msdk.video.signal.c cVar = this.a;
            if (cVar != null) {
                cVar.d();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public final void onShowLoading(Campaign campaign) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onShowLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public final void onStartRedirection(Campaign campaign, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.onStartRedirection(campaign, str);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final int a() {
        return this.f7566f;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void a(int i) {
        this.m = i;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void a(int i, String str) {
        aa.a("DefaultJSCommon", "statistics,type:" + i + ",json:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void a(Activity activity) {
        aa.a("DefaultJSCommon", "setActivity ");
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void a(c.a aVar) {
        aa.a("DefaultJSCommon", "setTrackingListener:" + aVar);
        this.l = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void a(com.mbridge.msdk.videocommon.d.c cVar) {
        aa.a("DefaultJSCommon", "setSetting:" + cVar);
        this.j = cVar;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void a(String str) {
        aa.a("DefaultJSCommon", "setUnitId:" + str);
        this.i = str;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void a(boolean z) {
        aa.a("DefaultJSCommon", "setIsShowingTransparent:" + z);
        this.b = z;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void b(int i) {
        this.f7564d = i;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void b(String str) {
        aa.a("DefaultJSCommon", "setNotchArea");
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void b(boolean z) {
        this.a = z;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final boolean b() {
        return this.a;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public String c() {
        aa.a("DefaultJSCommon", o2.a.f6463e);
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void c(int i) {
        this.c = i;
    }

    @Override // com.mbridge.msdk.video.signal.d
    public void click(int i, String str) {
        aa.a("DefaultJSCommon", "click:type" + i + ",pt:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void d() {
        aa.a("DefaultJSCommon", "finish");
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void d(int i) {
        this.f7565e = i;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void e() {
        aa.a("DefaultJSCommon", "release");
        com.mbridge.msdk.click.a aVar = this.k;
        if (aVar != null) {
            aVar.a(false);
            this.k.a((NativeListener.NativeTrackingListener) null);
            this.k.a();
        }
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void e(int i) {
        this.f7566f = i;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public void f() {
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void f(int i) {
        this.h = i;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final int g() {
        return this.h;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public String g(int i) {
        aa.a("DefaultJSCommon", "getSDKInfo");
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final int h() {
        aa.a("DefaultJSCommon", "getAlertDialogRole " + this.f7567g);
        return this.f7567g;
    }

    @Override // com.mbridge.msdk.video.signal.c
    public final void h(int i) {
        aa.a("DefaultJSCommon", "setAlertDialogRole " + i);
        this.f7567g = i;
    }

    @Override // com.mbridge.msdk.video.signal.d
    public void handlerH5Exception(int i, String str) {
        aa.a("DefaultJSCommon", "handlerH5Exception,code=" + i + ",msg:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.c
    public String i() {
        aa.a("DefaultJSCommon", "getNotchArea");
        return null;
    }

    public final int j() {
        if (this.c == 0 && this.b) {
            this.c = 1;
        }
        return this.c;
    }

    public final int k() {
        if (this.f7564d == 0 && this.b) {
            this.f7564d = 1;
        }
        return this.f7564d;
    }

    public final int l() {
        if (this.f7565e == 0 && this.b) {
            this.f7565e = 1;
        }
        return this.f7565e;
    }

    public final boolean m() {
        return this.b;
    }
}
