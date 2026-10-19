package com.mbridge.msdk.foundation.same.c;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.l;
import java.io.File;

/* JADX INFO: compiled from: CommonImageTask.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e extends com.mbridge.msdk.foundation.same.e.a {
    private String a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7121g;
    private a h;
    private boolean i;

    /* JADX INFO: compiled from: CommonImageTask.java */
    public interface a {
        void a(String str, String str2);

        void b(String str, String str2);
    }

    public e(String str, String str2, String str3) {
        this.f7121g = false;
        this.i = false;
        this.a = str;
        this.f7119e = str2;
        this.f7120f = str3;
    }

    public e(String str, String str2, String str3, h hVar) {
        this.f7121g = false;
        this.i = false;
        this.a = str;
        this.f7119e = str2;
        this.f7120f = str3;
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        a aVar = this.h;
        if (aVar != null) {
            aVar.b(str, str2);
        }
    }

    private void e() {
        try {
            File file = new File(this.f7120f);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            com.mbridge.msdk.foundation.same.net.h.b.downloadFile(file, this.f7119e, new com.mbridge.msdk.foundation.same.net.f<Void>() { // from class: com.mbridge.msdk.foundation.same.c.e.1
                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onError(final com.mbridge.msdk.foundation.same.net.b.a aVar) {
                    Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.e.1.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            e eVar = e.this;
                            eVar.a(eVar.f7119e, "load image from http faild because http return code: " + aVar.a + ".image url is " + e.this.f7119e);
                        }
                    };
                    if (e.this.i) {
                        com.mbridge.msdk.foundation.same.f.b.f().execute(runnable);
                    } else {
                        runnable.run();
                    }
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onFinish() {
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onProgressChange(long j, long j2) {
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onSuccess(l lVar) {
                    Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.e.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String unused = e.this.f7120f;
                            e.this.c();
                        }
                    };
                    if (e.this.i) {
                        com.mbridge.msdk.foundation.same.f.b.f().execute(runnable);
                    } else {
                        runnable.run();
                    }
                }
            });
        } catch (Exception e2) {
            a(this.f7119e, e2.getMessage());
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        } catch (OutOfMemoryError e3) {
            a(this.f7119e, e3.getMessage());
        }
    }

    @Override // com.mbridge.msdk.foundation.same.e.a
    public final void a() {
        if (this.f7121g) {
            e();
            return;
        }
        if (TextUtils.isEmpty(this.f7120f)) {
            a(this.f7119e, "save path is null.");
            return;
        }
        File file = new File(this.f7120f);
        if (!file.exists() || file.length() <= 0) {
            e();
        } else {
            c();
        }
    }

    public final void a(a aVar) {
        this.h = aVar;
    }

    public final void a(boolean z) {
        this.f7121g = z;
    }

    @Override // com.mbridge.msdk.foundation.same.e.a
    public final void b() {
    }

    protected final void c() {
        if (new File(this.f7120f).exists()) {
            String str = this.f7119e;
            String str2 = this.f7120f;
            a aVar = this.h;
            if (aVar != null) {
                aVar.a(str, str2);
                return;
            }
            return;
        }
        a(this.f7119e, "load image faild.because file[" + this.f7120f + "] is not exist!");
    }
}
