package com.bykv.vk.openvk.preload.falconx.loader;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.f.b;
import com.bykv.vk.openvk.preload.geckox.g.c;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: GeckoResLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ILoader {
    public b a;
    public AtomicBoolean b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file == null) {
            throw new RuntimeException("resRootDir == null");
        }
        this.a = new b(context, str, file);
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final boolean exist(String str) throws Exception {
        if (this.b.get()) {
            throw new RuntimeException("released!");
        }
        b bVar = this.a;
        if (bVar.b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.f.a aVarA = bVar.a(str.trim());
        return aVarA.a(aVarA.b).b(com.bykv.vk.openvk.preload.geckox.f.a.a(aVarA.b, str));
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final Map<String, Long> getChannelVersion() {
        return this.a.a();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final InputStream getInputStream(String str) throws Exception {
        if (this.b.get()) {
            throw new RuntimeException("released!");
        }
        com.bykv.vk.openvk.preload.geckox.h.b.a("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        b bVar = this.a;
        if (bVar.b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.f.a aVarA = bVar.a(str.trim());
        return aVarA.a(aVarA.b).a(com.bykv.vk.openvk.preload.geckox.f.a.a(aVarA.b, str));
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final String getResRootDir() {
        return this.a.c;
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final void release() throws Exception {
        if (this.b.getAndSet(true)) {
            return;
        }
        b bVar = this.a;
        if (bVar.b.getAndSet(true)) {
            return;
        }
        com.bykv.vk.openvk.preload.geckox.h.b.a("Loader", "release version res loader");
        synchronized (bVar.a) {
            for (com.bykv.vk.openvk.preload.geckox.f.a aVar : bVar.a.values()) {
                if (!aVar.f588e.getAndSet(true)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(aVar.a);
                    String str = File.separator;
                    sb.append(str);
                    sb.append(aVar.b);
                    sb.append(str);
                    sb.append("select.lock");
                    com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb.toString());
                    com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-file-lock", "channel version loader clean");
                    try {
                        if (aVar.c != null) {
                            c.b(aVar.c.getAbsolutePath() + str + "using.lock");
                            bVarA.a();
                            com.bykv.vk.openvk.preload.geckox.a.c.a(aVar.a + str + aVar.b);
                        }
                    } finally {
                        bVarA.a();
                    }
                }
            }
            bVar.a.clear();
        }
    }
}
