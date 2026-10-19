package com.tapjoy;

import android.graphics.Bitmap;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes4.dex */
public class TJImageButton extends ImageButton {
    public Bitmap a;
    public Bitmap b;

    public void setDisableImageBitmap(Bitmap bitmap) {
        this.b = bitmap;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setImageBitmap(z ? this.a : this.b);
    }

    public void setEnabledImageBitmap(Bitmap bitmap) {
        this.a = bitmap;
    }
}
