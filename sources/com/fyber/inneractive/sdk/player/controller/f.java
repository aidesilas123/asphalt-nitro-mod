package com.fyber.inneractive.sdk.player.controller;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import com.fyber.inneractive.sdk.player.controller.g;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class f implements TextureView.SurfaceTextureListener {
    public final /* synthetic */ g a;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.InterfaceC0172g interfaceC0172g = f.this.a.f2172d;
            if (interfaceC0172g != null) {
                m mVar = (m) interfaceC0172g;
                mVar.a.f2176d.post(new l(mVar));
            }
        }
    }

    public f(g gVar) {
        this.a = gVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sonSurfaceTextureAvailable", IAlog.a(gVar));
        g gVar2 = this.a;
        boolean z = !surfaceTexture.equals(gVar2.k);
        gVar2.k = surfaceTexture;
        if (gVar2.l == null || z) {
            gVar2.l = new Surface(gVar2.k);
        }
        gVar2.a(gVar2.l);
        g.InterfaceC0172g interfaceC0172g = this.a.f2172d;
        if (interfaceC0172g != null) {
            n nVar = ((m) interfaceC0172g).a;
            nVar.getClass();
            IAlog.a("%sonSurfaceTextureAvailable", IAlog.a(nVar));
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%s onSurfaceTextureDestroyed", IAlog.a(gVar));
        this.a.k();
        this.a.a((Surface) null);
        this.a.o = true;
        g gVar2 = this.a;
        com.fyber.inneractive.sdk.player.enums.b bVar = gVar2.f2173e;
        if (bVar == com.fyber.inneractive.sdk.player.enums.b.Completed || bVar == com.fyber.inneractive.sdk.player.enums.b.Error || bVar == com.fyber.inneractive.sdk.player.enums.b.Idle) {
            IAlog.a("%sReleasing surface texture", IAlog.a(gVar2));
            this.a.k = null;
            return true;
        }
        IAlog.a("%s caching surface texture", IAlog.a(gVar2));
        g gVar3 = this.a;
        gVar3.k = surfaceTexture;
        gVar3.i.post(new a());
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        Surface surface;
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        g.InterfaceC0172g interfaceC0172g = this.a.f2172d;
        if (interfaceC0172g != null && (cVar = ((m) interfaceC0172g).a.a) != null && (gVar = cVar.b) != null) {
            gVar.i.post(new i(gVar));
        }
        g gVar2 = this.a;
        if (!gVar2.o || (surface = gVar2.l) == null) {
            return;
        }
        gVar2.a(surface);
        this.a.o = false;
    }
}
