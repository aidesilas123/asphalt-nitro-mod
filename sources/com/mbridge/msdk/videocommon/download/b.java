package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.videocommon.download.g;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: DownLoadH5SourceListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b implements g.c {
    private static String a = "DownLoadH5SourceListener";
    private ConcurrentMap<String, b> b;
    private k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CopyOnWriteArrayList<g.d> f7598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7599e;

    public b(ConcurrentMap<String, b> concurrentMap, k kVar, g.d dVar, String str) {
        CopyOnWriteArrayList<g.d> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f7598d = copyOnWriteArrayList;
        this.b = concurrentMap;
        this.c = kVar;
        copyOnWriteArrayList.add(dVar);
        this.f7599e = str;
    }

    @Override // com.mbridge.msdk.videocommon.download.g.c
    public final void a() {
    }

    public final void a(g.d dVar) {
        this.f7598d.add(dVar);
    }

    @Override // com.mbridge.msdk.videocommon.download.g.c
    public final void a(String str) {
        ConcurrentMap<String, b> concurrentMap;
        try {
            concurrentMap = this.b;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            try {
                str = e2.getMessage();
            } catch (Throwable th) {
                aa.b(a, th.getMessage(), th);
            }
        }
        if (concurrentMap == null) {
            for (g.d dVar : this.f7598d) {
                if (dVar != null) {
                    dVar.a(this.f7599e, "mResDownloadingMap  is null");
                    this.f7598d.remove(dVar);
                }
            }
            return;
        }
        if (concurrentMap.containsKey(this.f7599e)) {
            this.b.remove(this.f7599e);
        }
        for (g.d dVar2 : this.f7598d) {
            if (dVar2 != null) {
                dVar2.a(this.f7599e, str);
                this.f7598d.remove(dVar2);
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.download.g.c
    public final void a(String str, byte[] bArr, String str2) {
        ConcurrentMap<String, b> concurrentMap;
        String message = "";
        try {
            concurrentMap = this.b;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            try {
                message = e2.getMessage();
            } catch (Throwable th) {
                aa.b(a, th.getMessage(), th);
            }
        }
        if (concurrentMap == null) {
            for (g.d dVar : this.f7598d) {
                if (dVar != null) {
                    dVar.a(str2, "mResDownloadingMap  is null");
                    this.f7598d.remove(dVar);
                }
            }
            return;
        }
        if (concurrentMap.containsKey(str2)) {
            this.b.remove(str2);
        }
        if (bArr == null || bArr.length <= 0) {
            message = "response data is error";
        } else {
            String strA = this.c.a(str2, bArr);
            if (TextUtils.isEmpty(strA)) {
                for (g.d dVar2 : this.f7598d) {
                    if (dVar2 != null) {
                        dVar2.a(str2, "", false);
                        this.f7598d.remove(dVar2);
                    }
                }
                return;
            }
            message = "data save failed:" + strA;
        }
        for (g.d dVar3 : this.f7598d) {
            if (dVar3 != null) {
                dVar3.a(str2, message);
            }
        }
    }
}
