package com.mbridge.msdk.foundation.same.c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.y;
import java.io.File;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: CommonImageLoaderRefactor.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d {
    private final String a;
    private final ThreadPoolExecutor b;
    private final Handler c;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: CommonImageLoaderRefactor.java */
    static final class a {
        private static final d a = new d();
    }

    /* JADX INFO: compiled from: CommonImageLoaderRefactor.java */
    private static final class b implements OnDownloadStateListener<Object> {
        private final Handler a;
        private final ThreadPoolExecutor b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7115d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f7116e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final h f7117f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final c f7118g;

        public b(Handler handler, ThreadPoolExecutor threadPoolExecutor, String str, String str2, String str3, h hVar, c cVar) {
            this.a = handler;
            this.b = threadPoolExecutor;
            this.c = str;
            this.f7115d = str2;
            this.f7116e = str3;
            this.f7117f = hVar;
            this.f7118g = cVar;
        }

        private Bitmap a(Bitmap bitmap, h hVar) {
            if (hVar == null) {
                return bitmap;
            }
            try {
                return hVar.a(bitmap);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("CommonImageLoaderRefactor", "handlerImageTransformation error", e2);
                }
                return bitmap;
            }
        }

        static /* synthetic */ void a(b bVar) {
            if (bVar.f7118g == null) {
                return;
            }
            try {
                Bitmap bitmapD = d.d(bVar.f7115d + bVar.f7116e);
                if (bitmapD == null) {
                    bVar.a("bitmap decode failed");
                } else {
                    final Bitmap bitmapA = bVar.a(bitmapD, bVar.f7117f);
                    if (bitmapA == null) {
                        bVar.a("bitmap transformation failed");
                    } else if (bVar.f7118g != null) {
                        bVar.a.post(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.d.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    b.this.f7118g.onSuccessLoad(bitmapA, b.this.c);
                                } catch (Exception e2) {
                                    if (MBridgeConstans.DEBUG) {
                                        aa.b("CommonImageLoaderRefactor", "callbackForSuccess error", e2);
                                    }
                                }
                            }
                        });
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.a("CommonImageLoaderRefactor", "onDownloadComplete decodeBitmap error = " + e2.getLocalizedMessage());
                }
                bVar.a("bitmap decode failed");
            }
        }

        private void a(final String str) {
            if (this.f7118g == null) {
                return;
            }
            this.a.post(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.d.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        b.this.f7118g.onFailedLoad(b.this.c, str);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.b("CommonImageLoaderRefactor", "callbackForFailed error", e2);
                        }
                    }
                }
            });
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onCancelDownload(DownloadMessage<Object> downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadComplete(DownloadMessage<Object> downloadMessage) {
            if (MBridgeConstans.DEBUG) {
                aa.a("CommonImageLoaderRefactor", "onDownloadComplete imageUrl = " + this.c + " imagePath = " + this.f7115d + this.f7116e);
                File file = null;
                try {
                    file = new File(this.f7115d + this.f7116e);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.b("CommonImageLoaderRefactor", "onDownloadComplete error", e2);
                    }
                }
                if (file != null && file.isFile() && file.exists()) {
                    aa.a("CommonImageLoaderRefactor", "onDownloadComplete file size = " + file.length());
                } else {
                    aa.d("CommonImageLoaderRefactor", "onDownloadComplete file not exist");
                }
            }
            this.b.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.d.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.a(b.this);
                }
            });
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadError(DownloadMessage<Object> downloadMessage, DownloadError downloadError) {
            if (MBridgeConstans.DEBUG) {
                aa.a("CommonImageLoaderRefactor", "onDownloadError imageUrl = " + downloadError.getException().getLocalizedMessage());
            }
            a(downloadError.getException().getLocalizedMessage());
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadStart(DownloadMessage<Object> downloadMessage) {
        }
    }

    private d() {
        this.c = new Handler(Looper.getMainLooper());
        this.a = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_IMG) + File.separator;
        this.b = g.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadRequest<?> a(String str, String str2, h hVar, c cVar) {
        try {
            return MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str2, str, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_IMAGE)).withReadTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).withConnectTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).withWriteTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).withDownloadPriority(DownloadPriority.LOW).withHttpRetryCounter(1).withDirectoryPathInternal(this.a).withDownloadStateListener(new b(this.c, this.b, str2, this.a, str, hVar, cVar)).withProgressStateListener(null).with("do_us_fi_re", Boolean.FALSE.toString()).build();
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            aa.b("CommonImageLoaderRefactor", "createDownloadRequest error", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap d(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inDither = true;
        return BitmapFactory.decodeFile(str, options);
    }

    public final Bitmap a(String str) {
        if (MBridgeConstans.DEBUG) {
            aa.a("CommonImageLoaderRefactor", "getImageBitmapByUrl imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.a + y.d(str);
        File file = new File(str2);
        if (file.isFile() && file.exists()) {
            try {
                return d(str2);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("CommonImageLoaderRefactor", "getImageBitmapByUrl error", e2);
                }
            }
        }
        return null;
    }

    public final void a(final String str, final h hVar, final c cVar) {
        try {
            this.b.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadRequest downloadRequestA = d.this.a(y.d(str), str, hVar, cVar);
                    if (downloadRequestA != null) {
                        downloadRequestA.start();
                        return;
                    }
                    if (MBridgeConstans.DEBUG) {
                        aa.d("CommonImageLoaderRefactor", "createDownloadRequest error");
                    }
                    if (cVar == null) {
                        return;
                    }
                    d.this.c.post(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.d.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            cVar.onFailedLoad("create download request error", str);
                        }
                    });
                }
            });
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.b("CommonImageLoaderRefactor", "loadImage error", e2);
            }
        }
    }

    public final boolean b(String str) {
        if (MBridgeConstans.DEBUG) {
            aa.a("CommonImageLoaderRefactor", "isImageFileExists imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            File file = null;
            try {
                file = new File(this.a + y.d(str));
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.b("CommonImageLoaderRefactor", "isImageFileExists error", e2);
                }
            }
            if (file == null || !file.isFile()) {
                return false;
            }
            return file.exists();
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                aa.b("CommonImageLoaderRefactor", "isImageFileExists error", e3);
            }
            return false;
        }
    }
}
