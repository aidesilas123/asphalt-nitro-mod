package com.bykv.vk.openvk.component.video.a.a.b;

import android.content.Context;
import android.os.Build;
import com.bykv.vk.openvk.component.video.api.e.a;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: VideoFileManager.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final ConcurrentHashMap<String, b> a = new ConcurrentHashMap<>();

    public static synchronized void a(Context context, com.bykv.vk.openvk.component.video.api.c.c cVar, a.InterfaceC0093a interfaceC0093a) {
        if (cVar == null) {
            com.bykv.vk.openvk.component.video.api.f.c.b(" url、dir and hash is must property   in VideoInfoModel");
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            ConcurrentHashMap<String, b> concurrentHashMap = a;
            b bVar = concurrentHashMap.get(cVar.n());
            if (bVar == null) {
                bVar = new b(context, cVar);
                concurrentHashMap.put(cVar.n(), bVar);
                com.bykv.vk.openvk.component.video.api.f.c.b("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(cVar.c()), cVar.n());
            }
            bVar.a(interfaceC0093a);
        }
        com.bykv.vk.openvk.component.video.api.f.c.b("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(cVar.c()), cVar.n());
    }

    public static synchronized void a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            b bVarRemove = a.remove(cVar.n());
            if (bVarRemove != null) {
                bVarRemove.a(true);
            }
            com.bykv.vk.openvk.component.video.api.f.c.b("VideoFileManager", "removePreload:  cache size = ", Integer.valueOf(cVar.c()), cVar.n());
        }
    }
}
