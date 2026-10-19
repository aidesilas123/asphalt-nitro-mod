package com.bykv.vk.openvk.preload.geckox.f;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: VersionedResLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final Map<String, a> a = new HashMap();
    public AtomicBoolean b = new AtomicBoolean(false);
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f590d;

    public b(Context context, String str, File file) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        this.f590d = str;
        if (file != null) {
            this.c = new File(file, str).getAbsolutePath();
            return;
        }
        this.c = new File(context.getFilesDir(), "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
    }

    public final a a(String str) {
        a aVar;
        int iIndexOf = str.indexOf("/");
        if (iIndexOf == -1) {
            new RuntimeException("channel：".concat(str));
        }
        String strSubstring = str.substring(0, iIndexOf);
        synchronized (this.a) {
            aVar = this.a.get(strSubstring);
            if (aVar == null) {
                aVar = new a(this.c, strSubstring);
                this.a.put(strSubstring, aVar);
            }
        }
        return aVar;
    }

    public final Map<String, Long> a() {
        HashMap map = new HashMap();
        synchronized (this.a) {
            Collection<a> collectionValues = this.a.values();
            if (collectionValues == null) {
                return map;
            }
            for (a aVar : collectionValues) {
                map.put(aVar.b, aVar.f587d);
            }
            return map;
        }
    }
}
