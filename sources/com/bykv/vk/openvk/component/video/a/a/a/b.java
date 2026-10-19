package com.bykv.vk.openvk.component.video.a.a.a;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import com.bytedance.sdk.component.b.a.p;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: MediaDownloadPlayCacheImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements c {
    private File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f400e;
    private RandomAccessFile i;
    private final com.bykv.vk.openvk.component.video.api.c.c j;
    private volatile long a = -2147483648L;
    private final Object b = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f401f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f402g = false;
    private volatile boolean h = false;

    public b(Context context, com.bykv.vk.openvk.component.video.api.c.c cVar) {
        this.f400e = 0L;
        this.i = null;
        this.j = cVar;
        try {
            this.c = com.bykv.vk.openvk.component.video.a.e.b.b(cVar.b(), cVar.n());
            this.f399d = com.bykv.vk.openvk.component.video.a.e.b.c(cVar.b(), cVar.n());
            if (d()) {
                this.i = new RandomAccessFile(this.f399d, "r");
            } else {
                this.i = new RandomAccessFile(this.c, "rw");
            }
            if (d()) {
                return;
            }
            this.f400e = this.c.length();
            a();
        } catch (Throwable unused) {
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "Error using file ", cVar.m(), " as disc cache");
        }
    }

    private boolean d() {
        return this.f399d.exists();
    }

    private long e() {
        return d() ? this.f399d.length() : this.c.length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() throws IOException {
        synchronized (this.b) {
            if (d()) {
                com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "complete: isCompleted ", this.j.m(), this.j.n());
                return;
            }
            try {
            } finally {
            }
            if (this.c.renameTo(this.f399d)) {
                RandomAccessFile randomAccessFile = this.i;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.i = new RandomAccessFile(this.f399d, "rw");
                com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "complete: rename ", this.j.n(), this.j.m());
                return;
            }
            throw new IOException("Error renaming file " + this.c + " to " + this.f399d + " for completion!");
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.a.a.c
    public int a(long j, byte[] bArr, int i, int i2) throws IOException {
        try {
            if (j == this.a) {
                return -1;
            }
            int i3 = 0;
            int i4 = 0;
            while (!this.f402g) {
                synchronized (this.b) {
                    long jE = e();
                    if (j < jE) {
                        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "read:  read " + j + " success");
                        this.i.seek(j);
                        i4 = this.i.read(bArr, i, i2);
                    } else {
                        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "read: wait at ", Long.valueOf(j), "  file size = ", Long.valueOf(jE));
                        i3 += 33;
                        this.b.wait(33L);
                    }
                }
                if (i4 > 0) {
                    return i4;
                }
                if (i3 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th) {
            if (th instanceof IOException) {
                throw th;
            }
            throw new IOException();
        }
    }

    public void a() {
        k.a aVarB = com.bykv.vk.openvk.component.video.api.c.d() != null ? com.bykv.vk.openvk.component.video.api.c.d().b() : new k.a("v_cache");
        long jP = this.j.p();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        aVarB.a(jP, timeUnit).b(this.j.q(), timeUnit).c(this.j.r(), timeUnit);
        k kVarA = aVarB.a();
        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "RANGE, bytes=", Long.valueOf(this.f400e), " file hash=", this.j.n());
        kVarA.a(new m.a().a("RANGE", "bytes=" + this.f400e + "-").a(this.j.m()).a().b()).a(new com.bytedance.sdk.component.b.a.c() { // from class: com.bykv.vk.openvk.component.video.a.a.a.b.1
            @Override // com.bytedance.sdk.component.b.a.c
            public void a(com.bytedance.sdk.component.b.a.b bVar, o oVar) throws IOException {
                p pVarF;
                boolean z;
                if (oVar == null) {
                    b.this.h = false;
                    b bVar2 = b.this;
                    bVar2.a = bVar2.f401f;
                    return;
                }
                InputStream inputStreamC = null;
                try {
                    try {
                        b.this.h = oVar.d();
                        if (b.this.h) {
                            pVarF = oVar.f();
                            try {
                                if (b.this.h && pVarF != null) {
                                    b.this.a = pVarF.a() + b.this.f400e;
                                    inputStreamC = pVarF.c();
                                }
                                if (inputStreamC == null) {
                                    if (inputStreamC != null) {
                                        try {
                                            inputStreamC.close();
                                        } catch (Throwable th) {
                                            th.printStackTrace();
                                            return;
                                        }
                                    }
                                    if (pVarF != null) {
                                        pVarF.close();
                                    }
                                    oVar.close();
                                    if (b.this.h && b.this.c.length() == b.this.a) {
                                        b.this.f();
                                        return;
                                    }
                                    return;
                                }
                                byte[] bArr = new byte[8192];
                                long j = b.this.f400e;
                                long j2 = 0;
                                long j3 = 0;
                                int i = 0;
                                while (true) {
                                    int i2 = inputStreamC.read(bArr, i, 8192 - i);
                                    z = true;
                                    if (i2 == -1) {
                                        break;
                                    }
                                    i += i2;
                                    j3 += (long) i2;
                                    boolean z2 = j3 % PlaybackStateCompat.ACTION_PLAY_FROM_URI == j2 || j3 == b.this.a - b.this.f400e;
                                    com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "Write segment,execAppend =", Boolean.valueOf(z2), " offset=", Integer.valueOf(i), " totalLength = ", Long.valueOf(b.this.a), " saveSize =", Long.valueOf(j3), " startSaved=", Long.valueOf(b.this.f400e), " fileHash=", b.this.j.n(), " url=", b.this.j.m());
                                    if (z2) {
                                        synchronized (b.this.b) {
                                            com.bykv.vk.openvk.component.video.a.e.b.a(b.this.i, bArr, Long.valueOf(j).intValue(), i, b.this.j.n());
                                        }
                                        j += (long) i;
                                        i = 0;
                                    }
                                    j2 = 0;
                                }
                                Object[] objArr = new Object[10];
                                objArr[0] = "Write segment,Write over, startIndex =";
                                objArr[1] = Long.valueOf(b.this.f400e);
                                objArr[2] = " totalLength = ";
                                objArr[3] = Long.valueOf(b.this.a);
                                objArr[4] = " saveSize = ";
                                objArr[5] = Long.valueOf(j3);
                                objArr[6] = " writeEndSegment =";
                                if (j3 != b.this.a - b.this.f400e) {
                                    z = false;
                                }
                                objArr[7] = Boolean.valueOf(z);
                                objArr[8] = " url=";
                                objArr[9] = b.this.j.m();
                                com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", objArr);
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    b.this.h = false;
                                    b bVar3 = b.this;
                                    bVar3.a = bVar3.f401f;
                                    th.printStackTrace();
                                    if (inputStreamC != null) {
                                        inputStreamC.close();
                                    }
                                    if (pVarF != null) {
                                        pVarF.close();
                                    }
                                    oVar.close();
                                    if (b.this.h && b.this.c.length() == b.this.a) {
                                        b.this.f();
                                        return;
                                    }
                                    return;
                                } finally {
                                }
                            }
                        } else {
                            b.this.h = false;
                            b bVar4 = b.this;
                            bVar4.a = bVar4.f401f;
                            pVarF = null;
                        }
                        if (inputStreamC != null) {
                            inputStreamC.close();
                        }
                        if (pVarF != null) {
                            pVarF.close();
                        }
                        oVar.close();
                        if (b.this.h && b.this.c.length() == b.this.a) {
                            b.this.f();
                        }
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    th = th4;
                    pVarF = null;
                }
            }

            @Override // com.bytedance.sdk.component.b.a.c
            public void a(com.bytedance.sdk.component.b.a.b bVar, IOException iOException) {
                b.this.h = false;
                b.this.a = -1L;
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.a.a.a.c
    public void b() {
        try {
            if (!this.f402g) {
                this.i.close();
            }
            File file = this.c;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.f399d;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } finally {
        }
        this.f402g = true;
    }

    @Override // com.bykv.vk.openvk.component.video.a.a.a.c
    public long c() throws IOException {
        if (d()) {
            this.a = this.f399d.length();
        } else {
            synchronized (this.b) {
                int i = 0;
                while (this.a == -2147483648L) {
                    try {
                        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "totalLength: wait");
                        i += 15;
                        this.b.wait(5L);
                        if (i > 20000) {
                            return -1L;
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        throw new IOException("total length InterruptException");
                    }
                }
            }
        }
        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_MediaDLPlay", "totalLength= ", Long.valueOf(this.a));
        return this.a;
    }
}
