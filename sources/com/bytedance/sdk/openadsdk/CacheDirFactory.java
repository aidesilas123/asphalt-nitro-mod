package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.a.a.a.a;
import com.bykv.vk.openvk.component.video.api.a.b;
import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.openadsdk.core.o;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class CacheDirFactory {
    public static volatile b MEDIA_CACHE_DIR = null;
    public static String ROOT_DIR = null;
    public static final int SPLASH_USE_INTERNAL_STORAGE = 1;
    private static String a;

    private static b a() {
        if (MEDIA_CACHE_DIR == null) {
            synchronized (CacheDirFactory.class) {
                if (MEDIA_CACHE_DIR == null) {
                    MEDIA_CACHE_DIR = new a();
                    MEDIA_CACHE_DIR.a(getRootDir());
                    MEDIA_CACHE_DIR.d();
                }
            }
        }
        return MEDIA_CACHE_DIR;
    }

    public static int getCacheType() {
        return 1;
    }

    public static String getDiskCacheDirPath(String str) {
        return getRootDir() + File.separator + str;
    }

    public static b getICacheDir(int i) {
        return a();
    }

    public static String getImageCacheDir() {
        if (a == null) {
            a = getDiskCacheDirPath("image");
        }
        return a;
    }

    public static String getRootDir() {
        if (!TextUtils.isEmpty(ROOT_DIR)) {
            return ROOT_DIR;
        }
        File fileA = f.a(o.a(), com.bytedance.sdk.openadsdk.multipro.b.c(), "tt_ad");
        if (fileA.isFile()) {
            fileA.delete();
        }
        if (!fileA.exists()) {
            fileA.mkdirs();
        }
        String absolutePath = fileA.getAbsolutePath();
        ROOT_DIR = absolutePath;
        return absolutePath;
    }
}
