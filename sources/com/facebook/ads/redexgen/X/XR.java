package com.facebook.ads.redexgen.X;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XR implements IL, AR, FZ, DH, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01 = {"nMHZhEZSp5EcTMzj890UQSIKsf7nOssk", "WLzxKTE2vNTMCpqDs", "SfczCGFglH", "X5aT15p3N3rGxVL5g", "GbnJfxrb9aQYK7s9S1Y8QTSWgx7P8ZxV", "tLWa3XxeFvyx8wOT4", "wILb6N7ReXeeP8cmU", "dyBLf42uqj"};
    public final /* synthetic */ C0961Di A00;

    public XR(C0961Di c0961Di) {
        this.A00 = c0961Di;
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAZ(String str, long j, long j2) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((AR) it.next()).AAZ(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAa(C0914Au c0914Au) {
        for (AR ar : this.A00.A0I) {
            String[] strArr = A01;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[4] = "5uZ3F86UAJ67QZD2oUJwcWpEFJTFqeup";
            ar.AAa(c0914Au);
        }
        this.A00.A06 = null;
        this.A00.A09 = null;
        this.A00.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAb(C0914Au c0914Au) {
        this.A00.A09 = c0914Au;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((AR) it.next()).AAb(c0914Au);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAc(Format format) {
        this.A00.A06 = format;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((AR) it.next()).AAc(format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAd(int i) {
        this.A00.A01 = i;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((AR) it.next()).AAd(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAe(int i, long j, long j2) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((AR) it.next()).AAe(i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FZ
    public final void AB0(List<FV> list) {
        this.A00.A0C = list;
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((FZ) it.next()).AB0(list);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ABD(int i, long j) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((IL) it.next()).ABD(i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.DH
    public final void AC8(Metadata metadata) {
        Iterator it = this.A00.A0J.iterator();
        while (it.hasNext()) {
            ((DH) it.next()).AC8(metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ACi(Surface surface) {
        if (this.A00.A03 == surface) {
            Iterator it = this.A00.A0M.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        Iterator it2 = this.A00.A0L.iterator();
        while (it2.hasNext()) {
            ((IL) it2.next()).ACi(surface);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADK(String str, long j, long j2) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((IL) it.next()).ADK(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADL(C0914Au c0914Au) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((IL) it.next()).ADL(c0914Au);
        }
        this.A00.A07 = null;
        String[] strArr = A01;
        if (strArr[1].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A01[0] = "zG8NefRqMKYqbgzRufdCrC4W5rqrDhRZ";
        this.A00.A0A = null;
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADM(C0914Au c0914Au) {
        this.A00.A0A = c0914Au;
        Iterator it = this.A00.A0L.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[0].charAt(5) == '7') {
                throw new RuntimeException();
            }
            A01[4] = "B3QwduSxUwudXX0SLqqw26pCzLpqq2sU";
            if (!zHasNext) {
                return;
            } else {
                ((IL) it.next()).ADM(c0914Au);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADQ(Format format) {
        this.A00.A07 = format;
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((IL) it.next()).ADQ(format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADV(int i, int i2, int i3, float f2) {
        Iterator it = this.A00.A0M.iterator();
        while (it.hasNext()) {
            ((IC) it.next()).ADV(i, i2, i3, f2);
        }
        Iterator it2 = this.A00.A0L.iterator();
        while (true) {
            boolean zHasNext = it2.hasNext();
            String[] strArr = A01;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[4] = "2vUTxC8fdDWhhRkArIujhTo4qLvFXYNt";
            if (!zHasNext) {
                return;
            } else {
                ((IL) it2.next()).ADV(i, i2, i3, f2);
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.A00.A0G(new Surface(surfaceTexture), true);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.A00.A0G(null, true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.A00.A0G(surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.A00.A0G(null, false);
    }
}
