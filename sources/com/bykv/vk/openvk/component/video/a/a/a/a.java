package com.bykv.vk.openvk.component.video.a.a.a;

import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: MediaCacheDirImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements com.bykv.vk.openvk.component.video.api.a.b {
    private String a = "video_reward_full";
    private String b = "video_brand";
    private String c = "video_splash";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f395d = "video_default";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f396e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f397f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f398g = null;
    private String h = null;
    private String i = null;

    private static void a(File[] fileArr, int i, Set<String> set) {
        if (i >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i) {
                    List listAsList = Arrays.asList(fileArr);
                    Collections.sort(listAsList, new Comparator<File>() { // from class: com.bykv.vk.openvk.component.video.a.a.a.a.1
                        @Override // java.util.Comparator
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public int compare(File file, File file2) {
                            long jLastModified = file2.lastModified() - file.lastModified();
                            if (jLastModified == 0) {
                                return 0;
                            }
                            return jLastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i < listAsList.size()) {
                        File file = (File) listAsList.get(i);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) listAsList.get(i)).delete();
                        }
                        i++;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private List<com.bykv.vk.openvk.component.video.api.a.a> f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bykv.vk.openvk.component.video.api.a.a(new File(a()).listFiles(), com.bykv.vk.openvk.component.video.a.a.c()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.a.a(new File(b()).listFiles(), com.bykv.vk.openvk.component.video.a.a.b()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.a.a(new File(e()).listFiles(), com.bykv.vk.openvk.component.video.a.a.d()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.a.a(new File(c()).listFiles(), com.bykv.vk.openvk.component.video.a.a.e()));
        return arrayList;
    }

    private Set<String> g() {
        HashSet hashSet = new HashSet();
        for (com.bykv.vk.openvk.component.video.a.a.a aVar : com.bykv.vk.openvk.component.video.a.a.a.a.values()) {
            if (aVar != null && aVar.a() != null) {
                com.bykv.vk.openvk.component.video.api.c.c cVarA = aVar.a();
                hashSet.add(com.bykv.vk.openvk.component.video.a.e.b.b(cVarA.b(), cVarA.n()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.a.e.b.c(cVarA.b(), cVarA.n()).getAbsolutePath());
            }
        }
        for (com.bykv.vk.openvk.component.video.a.a.b.b bVar : com.bykv.vk.openvk.component.video.a.a.b.c.a.values()) {
            if (bVar != null && bVar.a() != null) {
                com.bykv.vk.openvk.component.video.api.c.c cVarA2 = bVar.a();
                hashSet.add(com.bykv.vk.openvk.component.video.a.e.b.b(cVarA2.b(), cVarA2.n()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.a.e.b.c(cVarA2.b(), cVarA2.n()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public String a() {
        if (this.f397f == null) {
            this.f397f = this.f396e + File.separator + this.a;
            File file = new File(this.f397f);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f397f;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public void a(String str) {
        this.f396e = str;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public boolean a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (TextUtils.isEmpty(cVar.b()) || TextUtils.isEmpty(cVar.n())) {
            return false;
        }
        return new File(cVar.b(), cVar.n()).exists();
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public long b(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (TextUtils.isEmpty(cVar.b()) || TextUtils.isEmpty(cVar.n())) {
            return 0L;
        }
        return com.bykv.vk.openvk.component.video.a.e.b.a(cVar.b(), cVar.n());
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public String b() {
        if (this.h == null) {
            this.h = this.f396e + File.separator + this.c;
            File file = new File(this.h);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.h;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public String c() {
        if (this.i == null) {
            this.i = this.f396e + File.separator + this.f395d;
            File file = new File(this.i);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a.b
    public synchronized void d() {
        com.bykv.vk.openvk.component.video.api.f.c.b("Exec clear video cache ");
        com.bykv.vk.openvk.component.video.api.f.c.b(this.f396e);
        List<com.bykv.vk.openvk.component.video.api.a.a> listF = f();
        if (Build.VERSION.SDK_INT >= 23) {
            Set<String> setG = null;
            for (com.bykv.vk.openvk.component.video.api.a.a aVar : listF) {
                File[] fileArrA = aVar.a();
                if (fileArrA != null && fileArrA.length >= aVar.b()) {
                    if (setG == null) {
                        setG = g();
                    }
                    int iB = aVar.b() - 2;
                    if (iB < 0) {
                        iB = 0;
                    }
                    a(aVar.a(), iB, setG);
                }
            }
        }
    }

    public String e() {
        if (this.f398g == null) {
            this.f398g = this.f396e + File.separator + this.b;
            File file = new File(this.f398g);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f398g;
    }
}
