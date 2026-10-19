package com.bykv.vk.openvk.component.video.a.d;

import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;

/* JADX INFO: compiled from: IMediaPlayer.java */
/* JADX INFO: loaded from: classes.dex */
public interface c {

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface a {
        void a(c cVar, int i);
    }

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface b {
        void a(c cVar);
    }

    /* JADX INFO: renamed from: com.bykv.vk.openvk.component.video.a.d.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface InterfaceC0090c {
        boolean a(c cVar, int i, int i2);
    }

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface d {
        boolean b(c cVar, int i, int i2);
    }

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface e {
        void b(c cVar);
    }

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface f {
        void c(c cVar);
    }

    /* JADX INFO: compiled from: IMediaPlayer.java */
    public interface g {
        void a(c cVar, int i, int i2, int i3, int i4);
    }

    void a(long j, int i) throws Throwable;

    void a(Surface surface) throws Throwable;

    void a(SurfaceHolder surfaceHolder) throws Throwable;

    void a(a aVar);

    void a(b bVar);

    void a(InterfaceC0090c interfaceC0090c);

    void a(d dVar);

    void a(e eVar);

    void a(f fVar);

    void a(g gVar);

    void a(com.bykv.vk.openvk.component.video.api.b bVar) throws Throwable;

    void a(com.bykv.vk.openvk.component.video.api.c.c cVar);

    void a(FileDescriptor fileDescriptor) throws Throwable;

    void a(String str) throws Throwable;

    void a(boolean z);

    void b(boolean z) throws Throwable;

    void c(boolean z) throws Throwable;

    void d(boolean z) throws Throwable;

    void e() throws Throwable;

    void f() throws Throwable;

    void g() throws Throwable;

    void h();

    long i() throws Throwable;

    long j() throws Throwable;

    void k() throws Throwable;

    void l() throws Throwable;

    int m();

    int n();
}
