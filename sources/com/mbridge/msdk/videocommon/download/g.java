package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import android.webkit.URLUtil;
import androidx.work.WorkRequest;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.videocommon.download.f;
import com.mbridge.msdk.videocommon.download.h;
import java.net.URL;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: H5DownLoadManager.java */
/* JADX INFO: loaded from: classes4.dex */
public class g {
    private static g c;
    private CopyOnWriteArrayList<String> a;
    private ConcurrentMap<String, com.mbridge.msdk.videocommon.download.b> b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k f7606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f7607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7608f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f7609g = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
    private final String h = "down_type";

    /* JADX INFO: compiled from: H5DownLoadManager.java */
    public interface a {
        void a(String str, String str2);

        void a(String str, String str2, boolean z);
    }

    /* JADX INFO: compiled from: H5DownLoadManager.java */
    public interface b extends a {
    }

    /* JADX INFO: compiled from: H5DownLoadManager.java */
    public interface c {
        void a();

        void a(String str);

        void a(String str, byte[] bArr, String str2);
    }

    /* JADX INFO: compiled from: H5DownLoadManager.java */
    public interface d extends a {
    }

    private g() {
        this.f7608f = false;
        try {
            this.f7606d = k.a();
            this.f7607e = h.a.a;
            this.a = new CopyOnWriteArrayList<>();
            this.b = new ConcurrentHashMap();
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB != null) {
                this.f7608f = eVarB.i(1);
            }
        } catch (Throwable th) {
            aa.b("H5DownLoadManager", th.getMessage(), th);
        }
    }

    public static synchronized g a() {
        if (c == null) {
            c = new g();
        }
        return c;
    }

    public final String a(String str) {
        k kVar = this.f7606d;
        if (kVar != null) {
            return kVar.a(str);
        }
        return null;
    }

    public final void a(final String str, final a aVar) {
        if (!this.f7608f) {
            try {
                aa.d("H5DownLoadManager", "download url:" + str);
                if (this.a.contains(str)) {
                    return;
                }
                this.a.add(str);
                f.a.a.a(new com.mbridge.msdk.foundation.same.e.a() { // from class: com.mbridge.msdk.videocommon.download.g.2
                    @Override // com.mbridge.msdk.foundation.same.e.a
                    public final void a() {
                        if (TextUtils.isEmpty(g.this.f7607e.b(str))) {
                            e.a(str, new c() { // from class: com.mbridge.msdk.videocommon.download.g.2.1
                                @Override // com.mbridge.msdk.videocommon.download.g.c
                                public final void a() {
                                }

                                @Override // com.mbridge.msdk.videocommon.download.g.c
                                public final void a(String str2) {
                                    try {
                                        g.this.a.remove(str);
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        a aVar2 = aVar;
                                        if (aVar2 != null) {
                                            aVar2.a(str, str2);
                                        }
                                    } catch (Exception e2) {
                                        if (MBridgeConstans.DEBUG) {
                                            e2.printStackTrace();
                                        }
                                        AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                        a aVar3 = aVar;
                                        if (aVar3 != null) {
                                            aVar3.a(str, str2);
                                        }
                                    }
                                }

                                @Override // com.mbridge.msdk.videocommon.download.g.c
                                public final void a(String str2, byte[] bArr, String str3) {
                                    try {
                                        g.this.a.remove(str3);
                                        if (bArr == null || bArr.length <= 0) {
                                            return;
                                        }
                                        if (g.this.f7607e.a(str3, bArr)) {
                                            a aVar2 = aVar;
                                            if (aVar2 != null) {
                                                aVar2.a(str3, "", false);
                                                return;
                                            }
                                            return;
                                        }
                                        a aVar3 = aVar;
                                        if (aVar3 != null) {
                                            aVar3.a(str3, "save file failed");
                                        }
                                    } catch (Exception e2) {
                                        if (MBridgeConstans.DEBUG) {
                                            e2.printStackTrace();
                                        }
                                        a aVar4 = aVar;
                                        if (aVar4 != null) {
                                            aVar4.a(str3, e2.getMessage());
                                        }
                                    }
                                }
                            }, true);
                            return;
                        }
                        g.this.a.remove(str);
                        a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.a(str, "", true);
                        }
                    }

                    @Override // com.mbridge.msdk.foundation.same.e.a
                    public final void b() {
                    }
                });
                return;
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                    return;
                }
                return;
            }
        }
        if (TextUtils.isEmpty(str)) {
            if (aVar != null) {
                aVar.a("zip url is null", str);
                return;
            }
            return;
        }
        try {
            new URL(str);
            String str2 = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_HTML) + "/";
            String md5 = SameMD5.getMD5(al.b(str));
            MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, md5 + ".html", 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_HTML)).withReadTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).withConnectTimeout(20000L).withDownloadPriority(DownloadPriority.HIGH).withHttpRetryCounter(1).withDirectoryPathInternal(str2).withDownloadStateListener(new OnDownloadStateListener() { // from class: com.mbridge.msdk.videocommon.download.g.3
                @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
                public final void onCancelDownload(DownloadMessage downloadMessage) {
                }

                @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
                public final void onDownloadComplete(DownloadMessage downloadMessage) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(str, "", false);
                    }
                }

                @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
                public final void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(str, downloadError.getException().getMessage());
                    }
                }

                @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
                public final void onDownloadStart(DownloadMessage downloadMessage) {
                }
            }).build().start();
        } catch (Exception unused) {
            if (aVar != null) {
                aVar.a("zip url is unlawful", str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.util.Map<java.lang.String, java.lang.String> r20, java.lang.String r21, com.mbridge.msdk.videocommon.download.g.a r22) {
        /*
            Method dump skipped, instruction units count: 511
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.g.a(java.util.Map, java.lang.String, com.mbridge.msdk.videocommon.download.g$a):void");
    }

    public final String b(String str) {
        try {
            if (Patterns.WEB_URL.matcher(str).matches() || URLUtil.isValidUrl(str)) {
                Uri uri = Uri.parse(str);
                String path = uri.getPath();
                if (TextUtils.isEmpty(path) || !TextUtils.isEmpty(uri.getQueryParameter("urlDebug"))) {
                    return str;
                }
                if (path.toLowerCase().endsWith(".zip")) {
                    return a(str);
                }
                h hVar = this.f7607e;
                return hVar != null ? hVar.a(str) : str;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str;
    }
}
