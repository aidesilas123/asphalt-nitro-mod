package com.applovin.exoplayer2.l;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(17)
public final class j implements SurfaceTexture.OnFrameAvailableListener, Runnable {
    private static final int[] abU = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};
    private final int[] abV;

    @Nullable
    private final b abW;

    @Nullable
    private EGLDisplay abX;

    @Nullable
    private EGLContext abY;

    @Nullable
    private EGLSurface abZ;

    @Nullable
    private SurfaceTexture aca;
    private final Handler jS;

    public static final class a extends RuntimeException {
        private a(String str) {
            super(str);
        }
    }

    public interface b {
        void oU();
    }

    public j(Handler handler) {
        this(handler, null);
    }

    public j(Handler handler, @Nullable b bVar) {
        this.jS = handler;
        this.abW = bVar;
        this.abV = new int[1];
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, abU, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!zEglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            throw new a(ai.a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfigArr[0];
    }

    private static EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eGLContextEglCreateContext != null) {
            return eGLContextEglCreateContext;
        }
        throw new a("eglCreateContext failed");
    }

    private static EGLSurface a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        if (i == 1) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eGLSurfaceEglCreatePbufferSurface == null) {
                throw new a("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContext)) {
            return eGLSurfaceEglCreatePbufferSurface;
        }
        throw new a("eglMakeCurrent failed");
    }

    private static void g(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        n.oX();
    }

    private void oS() {
        b bVar = this.abW;
        if (bVar != null) {
            bVar.oU();
        }
    }

    private static EGLDisplay oT() {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == null) {
            throw new a("eglGetDisplay failed");
        }
        int[] iArr = new int[2];
        if (EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            return eGLDisplayEglGetDisplay;
        }
        throw new a("eglInitialize failed");
    }

    public void fm(int i) {
        EGLDisplay eGLDisplayOT = oT();
        this.abX = eGLDisplayOT;
        EGLConfig eGLConfigA = a(eGLDisplayOT);
        EGLContext eGLContextA = a(this.abX, eGLConfigA, i);
        this.abY = eGLContextA;
        this.abZ = a(this.abX, eGLConfigA, eGLContextA, i);
        g(this.abV);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.abV[0]);
        this.aca = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public SurfaceTexture oR() {
        return (SurfaceTexture) com.applovin.exoplayer2.l.a.checkNotNull(this.aca);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.jS.post(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void release() {
        this.jS.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.aca;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.abV, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.abX;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.abX;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.abZ;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.abX, this.abZ);
            }
            EGLContext eGLContext = this.abY;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.abX, eGLContext);
            }
            if (ai.acV >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.abX;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.abX);
            }
            this.abX = null;
            this.abY = null;
            this.abZ = null;
            this.aca = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        oS();
        SurfaceTexture surfaceTexture = this.aca;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
