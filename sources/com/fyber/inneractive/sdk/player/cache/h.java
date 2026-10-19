package com.fyber.inneractive.sdk.player.cache;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.webkit.MimeTypeMap;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.network.t;
import com.fyber.inneractive.sdk.player.cache.b;
import com.fyber.inneractive.sdk.player.cache.c;
import com.fyber.inneractive.sdk.player.cache.d;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.j0;
import com.fyber.inneractive.sdk.util.q;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class h implements j0 {
    public com.fyber.inneractive.sdk.player.cache.c b;
    public c.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.cache.b f2157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.cache.a f2159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i f2160g;
    public f h;
    public Handler j;
    public String l;
    public InterfaceC0171h q;
    public final s r;
    public String a = "MediaDownloader-" + hashCode();
    public final Object k = new Object();
    public volatile boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public String p = null;
    public HandlerThread i = new HandlerThread(String.format("MediaDownloader-%s-A", a()));

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            i iVar = hVar.f2160g;
            if (iVar != null) {
                ((d.a) iVar).a(hVar, hVar.f2159f, null);
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ Exception a;

        public b(Exception exc) {
            this.a = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            i iVar = hVar.f2160g;
            if (iVar != null) {
                ((d.a) iVar).a(hVar, hVar.f2159f, this.a);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.a(false);
        }
    }

    public static /* synthetic */ class d {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[r.d.values().length];
            a = iArr;
            try {
                iArr[r.d.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[r.d.EXTRACTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[r.d.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class e extends Exception {
        public e(String str) {
            super(str);
        }
    }

    public class f extends Thread {
        public AtomicBoolean a;
        public InputStream b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2161d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2162e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f2163f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c.C0170c f2164g;
        public int h;
        public int i;
        public int j;
        public int k;

        public f(String str, int i) {
            super(str);
            this.a = new AtomicBoolean(false);
            this.c = false;
            this.f2161d = false;
            this.f2162e = -1L;
            this.f2163f = 0L;
            this.h = i;
            this.i = h.this.r != null ? ((r) h.this.r.a(r.class)).e() : 10;
            this.j = h.this.r != null ? ((r) h.this.r.a(r.class)).f() : 500;
            this.k = h.this.r != null ? ((r) h.this.r.a(r.class)).h() : 25;
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x010a  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x01b0 A[EDGE_INSN: B:77:0x01b0->B:74:0x01b0 BREAK  A[LOOP:0: B:43:0x0101->B:73:0x01ad], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.net.HttpURLConnection a(java.io.OutputStream r20, java.net.URL r21, java.nio.ByteBuffer r22, long r23, int r25) throws java.io.IOException, com.fyber.inneractive.sdk.player.cache.h.e {
            /*
                Method dump skipped, instruction units count: 468
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.cache.h.f.a(java.io.OutputStream, java.net.URL, java.nio.ByteBuffer, long, int):java.net.HttpURLConnection");
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            OutputStream outputStreamA;
            HttpURLConnection httpURLConnectionA;
            URL url;
            int i;
            Handler handler;
            h hVar = h.this;
            String str = hVar.a;
            hVar.a();
            ByteBuffer byteBufferB = com.fyber.inneractive.sdk.util.d.b.b();
            try {
                try {
                    url = new URL(h.this.f2158e);
                    h hVar2 = h.this;
                    String str2 = hVar2.a;
                    hVar2.a();
                    h hVar3 = h.this;
                    c.C0170c c0170cA = hVar3.b.a(hVar3.a());
                    this.f2164g = c0170cA;
                    outputStreamA = c0170cA.a(0);
                    try {
                        i = this.i - 1;
                        httpURLConnectionA = null;
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnectionA = null;
                    }
                } catch (Throwable unused) {
                }
            } catch (Throwable th2) {
                th = th2;
                outputStreamA = null;
                httpURLConnectionA = null;
            }
            while (i > 0) {
                try {
                    if (!this.a.compareAndSet(false, false)) {
                        break;
                    }
                    if (httpURLConnectionA != null) {
                        try {
                            httpURLConnectionA.disconnect();
                        } catch (Throwable unused2) {
                        }
                    }
                    int i2 = i - 1;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        httpURLConnectionA = a(outputStreamA, url, byteBufferB, this.f2162e, this.h);
                    } catch (g e2) {
                        throw e2;
                    } catch (Throwable unused3) {
                    }
                    m.a(this.b);
                    String str3 = h.this.a;
                    h.this.a();
                    if (this.f2162e >= this.f2163f) {
                        i = 0;
                    } else {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        long j = this.j;
                        if (jCurrentTimeMillis2 < j) {
                            Thread.sleep(j - (System.currentTimeMillis() - jCurrentTimeMillis));
                        }
                        i = i2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        IAlog.a("%s | mDownloadRunnable exception raised during download", th, h.this.a);
                        t.a("mDownloadRunnable exception raised during download", th.getMessage(), null, null);
                        try {
                            this.f2164g.a();
                        } catch (Exception unused4) {
                        }
                        Handler handler2 = h.this.j;
                        if (handler2 != null) {
                            handler2.sendMessage(handler2.obtainMessage(1, th));
                        }
                        m.a(outputStreamA);
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        com.fyber.inneractive.sdk.util.d.b.a.offer(byteBufferB);
                    } catch (Throwable th4) {
                        m.a(outputStreamA);
                        if (httpURLConnectionA != null) {
                            try {
                                httpURLConnectionA.disconnect();
                            } catch (Throwable unused5) {
                            }
                        }
                        com.fyber.inneractive.sdk.util.d.b.a.offer(byteBufferB);
                        throw th4;
                    }
                }
                com.fyber.inneractive.sdk.util.d.b.a.offer(byteBufferB);
            }
            synchronized (h.this.k) {
                if (this.f2163f > this.f2162e || this.a.compareAndSet(true, true)) {
                    this.f2164g.a();
                    h hVar4 = h.this;
                    hVar4.b.d(hVar4.a());
                    h hVar5 = h.this;
                    String str4 = hVar5.a;
                    hVar5.a();
                } else {
                    h hVar6 = h.this;
                    String str5 = hVar6.a;
                    hVar6.a();
                    m.a(outputStreamA);
                    h hVar7 = h.this;
                    com.fyber.inneractive.sdk.player.cache.a aVar = hVar7.f2159f;
                    if (aVar != null) {
                        synchronized (aVar.f2140d) {
                            c.C0170c c0170c = this.f2164g;
                            if (c0170c.c) {
                                com.fyber.inneractive.sdk.player.cache.c.a(com.fyber.inneractive.sdk.player.cache.c.this, c0170c, false);
                                com.fyber.inneractive.sdk.player.cache.c.this.d(c0170c.a.a);
                            } else {
                                com.fyber.inneractive.sdk.player.cache.c.a(com.fyber.inneractive.sdk.player.cache.c.this, c0170c, true);
                            }
                            com.fyber.inneractive.sdk.player.cache.c cVar = h.this.b;
                            synchronized (cVar) {
                                cVar.a();
                                cVar.f();
                                cVar.i.flush();
                            }
                            h hVar8 = h.this;
                            hVar8.f2159f.a = hVar8.b.a(hVar8.a(), 0);
                        }
                        h.this.f2159f.c = false;
                    } else {
                        String strA = hVar7.a();
                        h hVar9 = h.this;
                        hVar7.f2159f = new com.fyber.inneractive.sdk.player.cache.a(strA, hVar9.f2158e, hVar9.b.a(hVar9.a(), 0), true, h.this.l);
                    }
                }
            }
            h.this.o = false;
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            if (this.a.compareAndSet(false, false) && (handler = h.this.j) != null && this.f2162e >= this.f2163f) {
                handler.sendEmptyMessage(2);
            }
            m.a(outputStreamA);
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            com.fyber.inneractive.sdk.util.d.b.a.offer(byteBufferB);
        }
    }

    public static class g extends e {
        public g(String str) {
            super(str);
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.cache.h$h, reason: collision with other inner class name */
    public interface InterfaceC0171h {
    }

    public interface i {
    }

    public h(com.fyber.inneractive.sdk.player.cache.c cVar, String str, com.fyber.inneractive.sdk.player.cache.b bVar, int i2, s sVar) {
        this.b = cVar;
        this.f2158e = str;
        this.l = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str).toLowerCase(Locale.US));
        this.f2157d = bVar;
        this.r = sVar;
        this.h = new f(String.format("MediaDownloader-%s-A", a()), i2);
    }

    public static void b(h hVar, boolean z) {
        com.fyber.inneractive.sdk.player.cache.g gVar = new com.fyber.inneractive.sdk.player.cache.g(hVar);
        Handler handler = hVar.j;
        if (handler != null) {
            if (z) {
                handler.postAtFrontOfQueue(gVar);
            } else {
                handler.postDelayed(gVar, 4L);
            }
        }
    }

    public static /* synthetic */ boolean c(h hVar, boolean z) {
        hVar.getClass();
        return z;
    }

    public String a() {
        String strReplaceAll = "";
        if (this.p == null) {
            String str = this.f2158e;
            try {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
                    messageDigest.update(str.getBytes());
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (byte b2 : bArrDigest) {
                        stringBuffer.append(Integer.toHexString((b2 & 255) | 256).substring(1));
                    }
                    strReplaceAll = stringBuffer.toString();
                } catch (NoSuchAlgorithmException unused) {
                    strReplaceAll = str.replaceAll("\\W+", "");
                }
            } catch (NullPointerException unused2) {
            } catch (NoSuchAlgorithmException unused3) {
                MessageDigest messageDigest2 = MessageDigest.getInstance(SameMD5.TAG);
                messageDigest2.update(str.getBytes());
                byte[] bArrDigest2 = messageDigest2.digest();
                StringBuffer stringBuffer2 = new StringBuffer();
                for (byte b3 : bArrDigest2) {
                    stringBuffer2.append(Integer.toHexString((b3 & 255) | 256).substring(1));
                }
                strReplaceAll = stringBuffer2.toString();
            }
            this.p = strReplaceAll;
        }
        return this.p;
    }

    public final void a(com.fyber.inneractive.sdk.player.cache.a aVar) {
        InterfaceC0171h interfaceC0171h;
        if (aVar == null || (interfaceC0171h = this.q) == null) {
            return;
        }
        File fileA = aVar.a();
        File file = ((com.fyber.inneractive.sdk.util.f) interfaceC0171h).a;
        if ((file == null || fileA == null || !file.getAbsolutePath().equals(fileA.getAbsolutePath())) ? false : true) {
            return;
        }
        InterfaceC0171h interfaceC0171h2 = this.q;
        File fileA2 = aVar.a();
        com.fyber.inneractive.sdk.util.f fVar = (com.fyber.inneractive.sdk.util.f) interfaceC0171h2;
        fVar.getClass();
        System.currentTimeMillis();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                try {
                    mediaMetadataRetriever.setDataSource(fileA2.getPath());
                    mediaMetadataRetriever.extractMetadata(8192);
                    Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(1L);
                    fVar.b = frameAtTime;
                    if (frameAtTime != null && frameAtTime.getWidth() > 0 && fVar.b.getHeight() > 0) {
                        fVar.a = fileA2;
                    }
                    mediaMetadataRetriever.release();
                } catch (Throwable th) {
                    try {
                        mediaMetadataRetriever.release();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (Exception e2) {
                IAlog.a("Failed getting frame from video file%s", q.b(e2));
                mediaMetadataRetriever.release();
            }
        } catch (Throwable unused2) {
        }
        System.currentTimeMillis();
    }

    public final void a(Exception exc) {
        com.fyber.inneractive.sdk.util.m.b.post(new b(exc));
    }

    public final void a(boolean z) {
        f fVar = this.h;
        if (fVar != null) {
            fVar.a.compareAndSet(false, true);
            this.h = null;
        }
        HandlerThread handlerThread = this.i;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        this.j = null;
        if (z) {
            try {
                this.b.d(a());
            } catch (IOException e2) {
                IAlog.a("failed to remove cache key", e2, new Object[0]);
            }
        }
    }

    public final void b() {
        com.fyber.inneractive.sdk.util.m.b.post(new a());
    }

    @Override // com.fyber.inneractive.sdk.util.j0
    public void handleMessage(Message message) {
        if (message.what == 4 && !this.f2159f.f2142f) {
            synchronized (this.k) {
                a();
                b.a aVarA = this.f2157d.a(this.f2159f, this.l);
                if (aVarA == b.a.INVALID) {
                    a(new e("Failed cache validation"));
                    a(true);
                } else if (aVarA == b.a.PARTIAL_CANNOT_VALIDATE) {
                    this.m = true;
                } else {
                    this.f2159f.f2142f = true;
                    a(this.f2159f);
                    com.fyber.inneractive.sdk.player.cache.a aVar = this.f2159f;
                    aVar.f2141e.putAll(this.f2157d.a);
                    b();
                }
            }
            return;
        }
        int i2 = message.what;
        if (i2 == 1) {
            Object obj = message.obj;
            if (obj instanceof Exception) {
                a((Exception) obj);
            } else {
                a(new e("download failed"));
            }
            a(false);
            return;
        }
        if (i2 == 2) {
            if (this.m) {
                synchronized (this.k) {
                    a();
                    if (this.f2157d.a(this.f2159f, this.l) == b.a.INVALID) {
                        a(new e("Failed cache validation after downloading complete file"));
                        a(true);
                    } else {
                        a(this.f2159f);
                        com.fyber.inneractive.sdk.player.cache.a aVar2 = this.f2159f;
                        aVar2.f2141e.putAll(this.f2157d.a);
                        b();
                    }
                }
            } else {
                com.fyber.inneractive.sdk.util.m.b.post(new c());
            }
            a();
        }
    }
}
