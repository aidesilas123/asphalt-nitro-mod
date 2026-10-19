package com.bykv.vk.openvk.component.video.a.a;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.a.a.a.b;
import com.bykv.vk.openvk.component.video.a.a.a.c;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: SdkMediaDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends MediaDataSource {
    public static final ConcurrentHashMap<String, a> a = new ConcurrentHashMap<>();
    private final c b;
    private long c = -2147483648L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f393d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bykv.vk.openvk.component.video.api.c.c f394e;

    public a(Context context, com.bykv.vk.openvk.component.video.api.c.c cVar) {
        this.f393d = context;
        this.f394e = cVar;
        this.b = new b(context, cVar);
    }

    public static a a(Context context, com.bykv.vk.openvk.component.video.api.c.c cVar) {
        a aVar = new a(context, cVar);
        a.put(cVar.n(), aVar);
        return aVar;
    }

    public com.bykv.vk.openvk.component.video.api.c.c a() {
        return this.f394e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.bykv.vk.openvk.component.video.api.f.c.b("SdkMediaDataSource", "close: ", this.f394e.m());
        c cVar = this.b;
        if (cVar != null) {
            cVar.b();
        }
        a.remove(this.f394e.n());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.c == -2147483648L) {
            if (this.f393d == null || TextUtils.isEmpty(this.f394e.m())) {
                return -1L;
            }
            this.c = this.b.c();
            com.bykv.vk.openvk.component.video.api.f.c.b("SdkMediaDataSource", "getSize: " + this.c);
        }
        return this.c;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        int iA = this.b.a(j, bArr, i, i2);
        com.bykv.vk.openvk.component.video.api.f.c.b("SdkMediaDataSource", "readAt: position = " + j + "  buffer.length =" + bArr.length + "  offset = " + i + " size =" + iA + "  current = " + Thread.currentThread());
        return iA;
    }
}
