package com.bykv.vk.openvk.preload.geckox.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.j;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LoadLocalChannelVersionInterceptorMulti.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends com.bykv.vk.openvk.preload.b.d<String, Map<String, List<Pair<String, Long>>>> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private File f586g;
    private List<String> h;

    @Override // com.bykv.vk.openvk.preload.b.d
    public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.b.b<Map<String, List<Pair<String, Long>>>> bVar, String str) throws Throwable {
        Long lA;
        com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "get local channel version:", str);
        HashMap map = new HashMap();
        for (String str2 : this.h) {
            File file = new File(this.f586g, str2);
            String[] list = file.list();
            ArrayList arrayList = new ArrayList();
            if (list != null && list.length > 0) {
                for (String str3 : list) {
                    File file2 = new File(file, str3);
                    if (file2.isDirectory() && (lA = j.a(file2)) != null) {
                        arrayList.add(new Pair<>(str3, lA));
                    }
                }
            }
            map.put(str2, arrayList);
        }
        return bVar.a(map);
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        this.f586g = (File) objArr[0];
        this.h = (List) objArr[1];
    }
}
