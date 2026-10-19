package com.bykv.vk.openvk.component.video.a.d;

import com.bykv.vk.openvk.component.video.a.d.c;

/* JADX INFO: compiled from: AbstractMediaPlayer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements c {
    protected boolean a = false;
    private c.e b;
    private c.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c.a f457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c.f f458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c.g f459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c.InterfaceC0090c f460g;
    private c.d h;

    public void a() {
        this.b = null;
        this.f457d = null;
        this.c = null;
        this.f458e = null;
        this.f459f = null;
        this.f460g = null;
        this.h = null;
    }

    protected final void a(int i) {
        try {
            c.a aVar = this.f457d;
            if (aVar != null) {
                aVar.a(this, i);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    protected final void a(int i, int i2, int i3, int i4) {
        try {
            c.g gVar = this.f459f;
            if (gVar != null) {
                gVar.a(this, i, i2, i3, i4);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.a aVar) {
        this.f457d = aVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.b bVar) {
        this.c = bVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.InterfaceC0090c interfaceC0090c) {
        this.f460g = interfaceC0090c;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.d dVar) {
        this.h = dVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.e eVar) {
        this.b = eVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.f fVar) {
        this.f458e = fVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public final void a(c.g gVar) {
        this.f459f = gVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c
    public void a(boolean z) {
        this.a = z;
    }

    protected final boolean a(int i, int i2) {
        try {
            c.InterfaceC0090c interfaceC0090c = this.f460g;
            if (interfaceC0090c != null) {
                return interfaceC0090c.a(this, i, i2);
            }
            return false;
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    protected final void b() {
        try {
            c.e eVar = this.b;
            if (eVar != null) {
                eVar.b(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    protected final boolean b(int i, int i2) {
        try {
            c.d dVar = this.h;
            if (dVar != null) {
                return dVar.b(this, i, i2);
            }
            return false;
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    protected final void c() {
        try {
            c.b bVar = this.c;
            if (bVar != null) {
                bVar.a(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    protected final void d() {
        try {
            c.f fVar = this.f458e;
            if (fVar != null) {
                fVar.c(this);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }
}
