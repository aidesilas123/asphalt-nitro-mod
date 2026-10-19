package com.fyber.inneractive.sdk.network;

import android.graphics.Bitmap;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class m0 extends f0<a> {
    public final String r;

    public static class a {
        public Bitmap a = null;
        public String b = null;

        public a(Bitmap bitmap, String str) {
        }
    }

    public m0(w<a> wVar, String str, com.fyber.inneractive.sdk.config.global.s sVar) {
        super(wVar, x.a().b(), sVar);
        this.r = str;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.fyber.inneractive.sdk.network.m0$a] */
    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        boolean z;
        b0 b0Var = new b0();
        ?? aVar = new a(null, null);
        try {
            InputStream inputStream = jVar.c;
            if (inputStream != null) {
                Bitmap bitmapA = com.fyber.inneractive.sdk.util.d0.a(inputStream, a(map));
                if (bitmapA != null) {
                    int width = bitmapA.getWidth();
                    int height = bitmapA.getHeight();
                    int i2 = width * height;
                    int[] iArr = new int[i2];
                    bitmapA.getPixels(iArr, 0, width, 0, 0, width, height);
                    int i3 = -1;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i2) {
                            z = false;
                            break;
                        }
                        int i5 = iArr[i4];
                        if (i4 == 0) {
                            i3 = i5;
                        } else if (i5 != i3) {
                            z = true;
                            break;
                        }
                        i4++;
                    }
                    if (z) {
                        aVar.a = bitmapA;
                        IAlog.a("SimpleImageLoader: Got a valid bitmap %s", this.r);
                    } else {
                        IAlog.a("SimpleImageLoader: Got an invalid bitmap", new Object[0]);
                        aVar.b = "Got an invalid bitmap";
                    }
                } else {
                    IAlog.a("SimpleImageLoader: Got an invalid bitmap", new Object[0]);
                    aVar.b = "Got an invalid bitmap";
                }
            }
        } catch (Exception e2) {
            IAlog.c("SimpleImageLoader: Exception on load image %s %s", e2.getMessage(), e2.toString());
            aVar.b = e2.getMessage();
        } catch (OutOfMemoryError e3) {
            IAlog.c("SimpleImageLoader: OutOfMemoryError on load image %s", e3.getMessage());
            Bitmap bitmap = aVar.a;
            if (bitmap != null) {
                bitmap.recycle();
            }
            aVar.b = e3.getMessage();
        }
        b0Var.a = aVar;
        return b0Var;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return this.r;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.LOW;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.GET;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return 0;
    }
}
