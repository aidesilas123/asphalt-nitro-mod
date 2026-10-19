package com.bykv.vk.openvk.preload.geckox.a.a;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FIFOCachePolicy.java */
/* JADX INFO: loaded from: classes.dex */
final class e extends b {
    e() {
    }

    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a() {
        List arrayList;
        Iterator<String> it = this.f564f.iterator();
        while (it.hasNext()) {
            File file = new File(this.f563e, it.next());
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                arrayList = (fileArrListFiles == null || fileArrListFiles.length <= 0) ? new ArrayList() : Arrays.asList(fileArrListFiles);
                if (arrayList != null && arrayList.size() > 0) {
                    Collections.sort(arrayList, new Comparator<File>() { // from class: com.bykv.vk.openvk.preload.geckox.utils.c.1
                        @Override // java.util.Comparator
                        public final /* synthetic */ int compare(File file2, File file3) {
                            return Long.compare(file2.lastModified(), file3.lastModified());
                        }
                    });
                }
            } else {
                arrayList = null;
            }
            if (arrayList != null && arrayList.size() > this.f562d.a) {
                for (File file2 : arrayList.subList(0, arrayList.size() - this.f562d.a)) {
                    com.bykv.vk.openvk.preload.geckox.a.c.b(file2.getAbsolutePath());
                    if (this.f562d.c != null) {
                        file2.getName();
                    }
                }
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a(a aVar, File file, List<String> list) {
        super.a(aVar, file, list);
    }
}
