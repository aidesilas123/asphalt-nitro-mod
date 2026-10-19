package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.LruCache;
import com.facebook.share.internal.ShareConstants;
import com.json.d1;
import com.json.o2;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

/* JADX INFO: compiled from: ImageLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\n0\rJ\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/vungle/ads/internal/util/ImageLoader;", "", "()V", "ioExecutor", "Ljava/util/concurrent/Executor;", "lruCache", "Landroid/util/LruCache;", "", "Landroid/graphics/Bitmap;", "displayImage", "", ShareConstants.MEDIA_URI, "onImageLoaded", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "bitmap", o2.a.f6463e, "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class ImageLoader {
    private static final String FILE_SCHEME = "file://";
    private Executor ioExecutor;
    private final LruCache<String, Bitmap> lruCache = new a(((int) (Runtime.getRuntime().maxMemory() / ((long) 1024))) / 8);

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = ImageLoader.class.getSimpleName();
    private static final ImageLoader instance = new ImageLoader();

    /* JADX INFO: compiled from: ImageLoader.kt */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0014¨\u0006\b"}, d2 = {"com/vungle/ads/internal/util/ImageLoader$1", "Landroid/util/LruCache;", "", "Landroid/graphics/Bitmap;", "sizeOf", "", "key", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends LruCache<String, Bitmap> {
        a(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public int sizeOf(String key, Bitmap value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.getByteCount() / 1024;
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.util.ImageLoader$b, reason: from kotlin metadata */
    /* JADX INFO: compiled from: ImageLoader.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/util/ImageLoader$Companion;", "", "()V", "FILE_SCHEME", "", "TAG", "kotlin.jvm.PlatformType", d1.o, "Lcom/vungle/ads/internal/util/ImageLoader;", "getInstance", "()Lcom/vungle/ads/internal/util/ImageLoader;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final ImageLoader getInstance() {
            return ImageLoader.instance;
        }
    }

    private ImageLoader() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: displayImage$lambda-0, reason: not valid java name */
    public static final void m1166displayImage$lambda0(String str, ImageLoader this$0, Function1 onImageLoaded) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onImageLoaded, "$onImageLoaded");
        if (StringsKt__StringsJVMKt.startsWith$default(str, "file://", false, 2, null)) {
            Bitmap bitmap = this$0.lruCache.get(str);
            if (bitmap != null && !bitmap.isRecycled()) {
                onImageLoaded.invoke(bitmap);
                return;
            }
            String strSubstring = str.substring(7);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(strSubstring);
            if (bitmapDecodeFile == null) {
                Log.w(TAG, "decode bitmap failed.");
            } else {
                this$0.lruCache.put(str, bitmapDecodeFile);
                onImageLoaded.invoke(bitmapDecodeFile);
            }
        }
    }

    public final void displayImage(final String str, final Function1<? super Bitmap, v> onImageLoaded) {
        Intrinsics.checkNotNullParameter(onImageLoaded, "onImageLoaded");
        if (this.ioExecutor == null) {
            Log.w(TAG, "ImageLoader not initialized.");
            return;
        }
        if (str == null || str.length() == 0) {
            Log.w(TAG, "the uri is required.");
            return;
        }
        Executor executor = this.ioExecutor;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.c
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.m1166displayImage$lambda0(str, this, onImageLoaded);
                }
            });
        }
    }

    public final void init(Executor ioExecutor) {
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        this.ioExecutor = ioExecutor;
    }
}
