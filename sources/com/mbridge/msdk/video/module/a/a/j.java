package com.mbridge.msdk.video.module.a.a;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.z;

/* JADX INFO: compiled from: RoundedImageLoaderListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class j extends e {
    private int a;

    public j(ImageView imageView, int i) {
        super(imageView);
        this.a = i;
    }

    @Override // com.mbridge.msdk.video.module.a.a.e, com.mbridge.msdk.foundation.same.c.c
    public final void onSuccessLoad(Bitmap bitmap, String str) {
        Bitmap bitmapA;
        if (bitmap == null) {
            return;
        }
        try {
            if (this.b == null || bitmap.isRecycled() || (bitmapA = z.a(bitmap, 1, this.a)) == null) {
                return;
            }
            this.b.setImageBitmap(bitmapA);
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }
}
