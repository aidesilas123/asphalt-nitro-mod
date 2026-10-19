package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.imagelib.Picasso;

/* JADX INFO: compiled from: ImageViewAction.java */
/* JADX INFO: loaded from: classes4.dex */
class m extends a<ImageView> {
    e m;

    m(Picasso picasso, ImageView imageView, s sVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, e eVar, boolean z) {
        super(picasso, imageView, sVar, i, i2, i3, drawable, str, obj, z);
        this.m = eVar;
    }

    @Override // com.squareup.imagelib.a
    void a() {
        super.a();
        if (this.m != null) {
            this.m = null;
        }
    }

    @Override // com.squareup.imagelib.a
    public void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.c.get();
        if (imageView == null) {
            return;
        }
        Picasso picasso = this.a;
        q.c(imageView, picasso.f7732g, bitmap, loadedFrom, this.f7740d, picasso.o);
        e eVar = this.m;
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    @Override // com.squareup.imagelib.a
    public void c() {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView == null) {
            return;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        int i = this.f7743g;
        if (i != 0) {
            imageView.setImageResource(i);
        } else {
            Drawable drawable2 = this.h;
            if (drawable2 != null) {
                imageView.setImageDrawable(drawable2);
            }
        }
        e eVar = this.m;
        if (eVar != null) {
            eVar.onError();
        }
    }
}
