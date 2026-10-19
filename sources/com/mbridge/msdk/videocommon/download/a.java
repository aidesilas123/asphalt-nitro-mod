package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.p;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadProgress;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.DownloadStatus;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.OnProgressStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.download.utils.Objects;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.y;
import java.io.File;
import java.io.Serializable;
import java.net.URL;
import java.net.URLEncoder;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: CampaignDownLoadTask.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements Serializable {
    private int A;
    private boolean B;
    private int C;
    private File D;
    private int F;
    private int G;
    private int H;
    private boolean I;
    private com.mbridge.msdk.c.h J;
    private com.mbridge.msdk.videocommon.d.c K;
    private com.mbridge.msdk.c.h L;
    private String Q;
    private boolean a;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7594d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f7596f;
    private com.mbridge.msdk.videocommon.listener.a h;
    private com.mbridge.msdk.videocommon.listener.a i;
    private CampaignEx j;
    private String k;
    private Context l;
    private long m;
    private String n;
    private String o;
    private long p;
    private String q;
    private long s;
    private p v;
    private String x;
    private DownloadRequest y;
    private DownloadRequest z;
    private boolean b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7595e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CopyOnWriteArrayList<d> f7597g = new CopyOnWriteArrayList<>();
    private boolean r = false;
    private int t = 100;
    private boolean u = false;
    private boolean w = false;
    private int E = 1;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private OnDownloadStateListener R = new OnDownloadStateListener() { // from class: com.mbridge.msdk.videocommon.download.a.1
        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadComplete(DownloadMessage downloadMessage) {
            try {
                if (a.this.v == null) {
                    a.this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                }
                a.this.v.a(a.this.n, a.this.p, 5);
                String str = "";
                if (downloadMessage != null) {
                    try {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    } catch (Throwable th) {
                        aa.d("CampaignDownLoadTask", th.getMessage());
                    }
                }
                a aVar = a.this;
                aVar.a(aVar.p, false, str);
                a aVar2 = a.this;
                String strF = aVar2.f(aVar2.A == 100 ? 3 : 1);
                if (TextUtils.isEmpty(strF)) {
                    return;
                }
                a.this.c(strF);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CampaignDownLoadTask", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            try {
                if (a.this.z == null || a.this.z.getStatus() == DownloadStatus.CANCELLED) {
                    return;
                }
                String message = "Video Download Error";
                if (downloadError != null && downloadError.getException() != null) {
                    message = downloadError.getException().getMessage();
                }
                a.this.u();
                a.this.a(3, message, "");
                a.this.a(message);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CampaignDownLoadTask", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadStart(DownloadMessage downloadMessage) {
            try {
                a.this.f7596f = 1;
                if (a.this.v == null) {
                    a.this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                }
                a.this.v.a(a.this.j, a.this.m, a.this.q, a.this.f7596f);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CampaignDownLoadTask", e2.getMessage());
                }
            }
        }
    };
    private OnProgressStateListener S = new OnProgressStateListener() { // from class: com.mbridge.msdk.videocommon.download.a.2
        @Override // com.mbridge.msdk.foundation.download.OnProgressStateListener
        public final void onProgress(DownloadMessage downloadMessage, DownloadProgress downloadProgress) {
            try {
                a.this.p = downloadProgress.getCurrent();
                a.this.m = downloadProgress.getTotal();
                a.this.A = downloadProgress.getCurrentDownloadRate();
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CampaignDownLoadTask", e2.getMessage());
                }
            }
            if (MBridgeConstans.DEBUG) {
                aa.d("CampaignDownLoadTask", "name：" + a.this.j.getAppName() + " Rate : " + downloadProgress.getCurrentDownloadRate() + " ReadyRate & cdRate: " + a.this.t + " - " + a.this.f7594d + " total & current: " + downloadProgress.getTotal() + " - " + downloadProgress.getCurrent());
            }
        }
    };
    private OnDownloadStateListener T = new OnDownloadStateListener() { // from class: com.mbridge.msdk.videocommon.download.a.3
        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadComplete(DownloadMessage downloadMessage) {
            Throwable th;
            String str;
            try {
                aa.d("CampaignDownLoadTask", "onDownloadComplete callback : " + a.this.p + "    " + a.this.m);
                if (a.this.v == null) {
                    a.this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                }
                a.this.v.a(a.this.n, a.this.p, 5);
                String str2 = "";
                if (downloadMessage != null) {
                    try {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    } catch (Throwable th2) {
                        th = th2;
                        str = "";
                    }
                    try {
                        aa.d("CampaignDownLoadTask", str);
                        str2 = str;
                        str = str2;
                    } catch (Throwable th3) {
                        th = th3;
                        aa.d("CampaignDownLoadTask", th.getMessage());
                    }
                } else {
                    str = str2;
                }
                a aVar = a.this;
                aVar.a(aVar.p, true, str);
                String strF = a.this.f(3);
                if (TextUtils.isEmpty(strF)) {
                    return;
                }
                a.this.c(strF);
            } catch (Exception e2) {
                aa.d("CampaignDownLoadTask", e2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            if (a.this.y == null || a.this.y.getStatus() == DownloadStatus.CANCELLED) {
                return;
            }
            String message = (downloadError == null || downloadError.getException() == null) ? "Video Download Error" : downloadError.getException().getMessage();
            a.this.u();
            a.this.a(3, message, "");
            a.this.a(message);
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public final void onDownloadStart(DownloadMessage downloadMessage) {
            a.this.f7596f = 1;
            if (a.this.v == null) {
                a.this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
            }
            a.this.v.a(a.this.j, a.this.m, a.this.q, a.this.f7596f);
        }
    };
    private OnProgressStateListener U = new OnProgressStateListener() { // from class: com.mbridge.msdk.videocommon.download.a.4
        @Override // com.mbridge.msdk.foundation.download.OnProgressStateListener
        public final void onProgress(DownloadMessage downloadMessage, DownloadProgress downloadProgress) {
            try {
                a.this.p = downloadProgress.getCurrent();
                a.this.m = downloadProgress.getTotal();
                a.this.A = downloadProgress.getCurrentDownloadRate();
                if (a.this.t != 100 && downloadProgress.getCurrentDownloadRate() >= a.this.t) {
                    aa.d("CampaignDownLoadTask", "Rate : " + downloadProgress.getCurrentDownloadRate() + " ReadyRate & cdRate = " + a.this.t + " " + a.this.f7594d);
                    if (a.this.f7595e) {
                        return;
                    }
                    a.this.f7595e = true;
                    if (!a.this.B) {
                        a aVar = a.this;
                        aVar.c(aVar.f(1));
                        a.this.a(downloadProgress.getCurrent(), false, "");
                    }
                    if (a.this.y == null || a.this.E != 2 || a.this.B) {
                        return;
                    }
                    a.this.y.cancel(downloadMessage);
                }
            } catch (Exception e2) {
                aa.d("CampaignDownLoadTask", e2.getMessage());
            }
        }
    };

    public a(Context context, CampaignEx campaignEx, String str, int i) {
        int iB;
        File file;
        this.a = false;
        this.c = 1;
        this.f7596f = 0;
        this.p = 0L;
        this.I = false;
        this.Q = "";
        if (context == null && campaignEx == null) {
            return;
        }
        com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarG != null) {
            this.I = eVarG.f();
        }
        this.F = com.mbridge.msdk.foundation.same.a.D;
        this.G = com.mbridge.msdk.foundation.same.a.E;
        this.H = com.mbridge.msdk.foundation.same.a.C;
        this.s = System.currentTimeMillis();
        this.l = com.mbridge.msdk.foundation.controller.b.d().g();
        this.j = campaignEx;
        this.k = str;
        this.c = i;
        if (campaignEx != null) {
            this.n = campaignEx.getVideoUrlEncode();
        }
        this.x = y.d(this.n);
        this.o = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_VC) + File.separator;
        this.q = this.o + this.x;
        this.a = ac.a().a("u_n_d_r_r", false);
        aa.b("CampaignDownLoadTask", this.j.getAppName() + " videoLocalPath:" + this.q + " videoUrl: " + this.j.getVideoUrlEncode() + " " + this.t);
        if (campaignEx != null) {
            this.Q = campaignEx.getCurrentLRid();
        }
        try {
            if (TextUtils.isEmpty(this.n)) {
                return;
            }
            File file2 = null;
            if (!TextUtils.isEmpty(this.o)) {
                file2 = new File(this.o);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            }
            if (file2 != null && file2.exists() && ((file = this.D) == null || !file.exists())) {
                File file3 = new File(file2 + "/.nomedia");
                this.D = file3;
                if (!file3.exists()) {
                    this.D.createNewFile();
                }
            }
            p pVarA = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
            com.mbridge.msdk.foundation.entity.m mVarA = pVarA.a(this.n, "");
            if (mVarA != null) {
                this.p = mVarA.b();
                if (this.f7596f != 2) {
                    this.f7596f = mVarA.d();
                }
                if (this.f7596f == 1) {
                    this.f7596f = 2;
                }
                this.m = mVarA.c();
                if (mVarA.a() > 0) {
                    this.s = mVarA.a();
                }
                if (this.f7596f == 5) {
                    if (Objects.exists(new File(this.o + this.x), this.o, this.x)) {
                        this.q = this.o + this.x;
                    } else {
                        t();
                    }
                } else if (this.f7596f != 0) {
                    this.q = this.o + this.x;
                }
            } else {
                pVarA.a(this.n, this.s);
            }
            String str2 = this.n;
            if (TextUtils.isEmpty(str2)) {
                this.i.a("VideoUrl is NULL, Please check it.", "");
                return;
            }
            if (this.f7596f == 1) {
                aa.a("CampaignDownLoadTask", "Run : Task is RUNNING, Will return.");
                return;
            }
            if (this.f7596f == 5 && Utils.getDownloadRate(this.m, this.p) >= this.t) {
                aa.a("CampaignDownLoadTask", "Run : Video Done, Will callback.");
                com.mbridge.msdk.videocommon.listener.a aVar = this.h;
                if (aVar != null) {
                    aVar.a(this.n);
                }
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.i;
                if (aVar2 != null) {
                    aVar2.a(this.n);
                }
                try {
                    File file4 = new File(this.q);
                    if (Objects.exists(file4, this.o, this.x) && file4.isFile()) {
                        file4.setLastModified(System.currentTimeMillis());
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    aa.d("CampaignDownLoadTask", e2.getMessage());
                    return;
                }
            }
            if (this.c == 3) {
                aa.a("CampaignDownLoadTask", "Run : Dlnet is 3, Will callback.");
                a(0L, false, "");
                return;
            }
            try {
                iB = b(this.j);
            } catch (Exception unused) {
                iB = 100;
            }
            if (iB == 0) {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.h;
                if (aVar3 != null) {
                    aVar3.a(this.n);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.i;
                if (aVar4 != null) {
                    aVar4.a(this.n);
                }
            }
            if (iB != 100 && this.a) {
                DownloadMessage downloadMessage = new DownloadMessage(new Object(), str2, this.x, iB, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
                downloadMessage.setUseCronetDownload(e(this.j));
                this.z = a(downloadMessage, this.R, this.S);
            }
            DownloadMessage downloadMessage2 = new DownloadMessage(new Object(), str2, this.x, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
            downloadMessage2.setUseCronetDownload(e(this.j));
            this.y = a(downloadMessage2, this.T, this.U);
        } catch (Exception e3) {
            aa.b("CampaignDownLoadTask", e3.getMessage());
        }
    }

    private DownloadRequest<?> a(DownloadMessage downloadMessage, OnDownloadStateListener onDownloadStateListener, OnProgressStateListener onProgressStateListener) {
        return MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout(this.F).withConnectTimeout(this.H).withWriteTimeout(this.G).withDownloadPriority(DownloadPriority.HIGH).withHttpRetryCounter(1).withDirectoryPathInternal(this.o).withDownloadStateListener(onDownloadStateListener).withProgressStateListener(onProgressStateListener).with("do_us_fi_re", Boolean.toString(this.I)).with(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, this.Q).with("down_type", ConstantDef.SDK_CONTENT_VERSION).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094 A[Catch: Exception -> 0x00a3, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a3, blocks: (B:7:0x005c, B:14:0x006b, B:16:0x0078, B:18:0x0087, B:20:0x0094), top: B:25:0x005c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r13, java.lang.String r14, java.lang.String r15) {
        /*
            r12 = this;
            long r0 = r12.s
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L9
            goto L11
        L9:
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r12.s
            long r2 = r0 - r2
        L11:
            com.mbridge.msdk.foundation.entity.n r0 = new com.mbridge.msdk.foundation.entity.n
            android.content.Context r5 = r12.l
            com.mbridge.msdk.foundation.entity.CampaignEx r6 = r12.j
            java.lang.String r8 = java.lang.Long.toString(r2)
            long r9 = r12.m
            int r11 = r12.C
            r4 = r0
            r7 = r13
            r4.<init>(r5, r6, r7, r8, r9, r11)
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j
            java.lang.String r13 = r13.getId()
            r0.r(r13)
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j
            java.lang.String r13 = r13.getVideoUrlEncode()
            r0.e(r13)
            r0.t(r14)
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j
            java.lang.String r13 = r13.getRequestId()
            r0.n(r13)
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j
            java.lang.String r13 = r13.getCurrentLRid()
            r0.o(r13)
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j
            java.lang.String r13 = r13.getRequestIdNotice()
            r0.p(r13)
            java.lang.String r13 = r12.k
            r0.q(r13)
            r0.m(r15)
            int r13 = r12.C     // Catch: java.lang.Exception -> La3
            r14 = 94
            if (r13 == r14) goto L87
            r14 = 287(0x11f, float:4.02E-43)
            if (r13 == r14) goto L87
            r14 = 296(0x128, float:4.15E-43)
            if (r13 == r14) goto L6b
            goto La3
        L6b:
            com.mbridge.msdk.foundation.tools.ac r13 = com.mbridge.msdk.foundation.tools.ac.a()     // Catch: java.lang.Exception -> La3
            java.lang.String r14 = "r_l_b_m_t_b"
            r15 = 0
            boolean r13 = r13.a(r14, r15)     // Catch: java.lang.Exception -> La3
            if (r13 == 0) goto L87
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j     // Catch: java.lang.Exception -> La3
            a(r0, r13)     // Catch: java.lang.Exception -> La3
            com.mbridge.msdk.foundation.same.report.m r13 = com.mbridge.msdk.foundation.same.report.m.a()     // Catch: java.lang.Exception -> La3
            com.mbridge.msdk.foundation.entity.CampaignEx r14 = r12.j     // Catch: java.lang.Exception -> La3
            r13.a(r0, r14)     // Catch: java.lang.Exception -> La3
            return
        L87:
            com.mbridge.msdk.foundation.tools.ac r13 = com.mbridge.msdk.foundation.tools.ac.a()     // Catch: java.lang.Exception -> La3
            java.lang.String r14 = "r_l_b_m_t_r_i"
            r15 = 1
            boolean r13 = r13.a(r14, r15)     // Catch: java.lang.Exception -> La3
            if (r13 == 0) goto La3
            com.mbridge.msdk.foundation.entity.CampaignEx r13 = r12.j     // Catch: java.lang.Exception -> La3
            a(r0, r13)     // Catch: java.lang.Exception -> La3
            com.mbridge.msdk.foundation.same.report.m r13 = com.mbridge.msdk.foundation.same.report.m.a()     // Catch: java.lang.Exception -> La3
            com.mbridge.msdk.foundation.entity.CampaignEx r14 = r12.j     // Catch: java.lang.Exception -> La3
            r13.a(r0, r14)     // Catch: java.lang.Exception -> La3
            return
        La3:
            com.mbridge.msdk.foundation.controller.b r13 = com.mbridge.msdk.foundation.controller.b.d()
            android.content.Context r13 = r13.g()
            com.mbridge.msdk.foundation.db.h r13 = com.mbridge.msdk.foundation.db.h.a(r13)
            com.mbridge.msdk.foundation.db.q r13 = com.mbridge.msdk.foundation.db.q.a(r13)
            r13.a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.a.a(int, java.lang.String, java.lang.String):void");
    }

    private void a(long j, int i) {
        this.p = j;
        int i2 = this.t;
        if (100 * j >= ((long) i2) * this.m && !this.u && i != 4) {
            if (i2 == 100 && i != 5) {
                this.f7596f = 5;
                return;
            }
            this.u = true;
            aa.d("CampaignDownLoadTask", "UpdateListener : state: " + i + " progress : " + j);
            String strP = p();
            if (TextUtils.isEmpty(strP)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.h;
                if (aVar != null) {
                    aVar.a(this.n);
                }
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.i;
                if (aVar2 != null) {
                    aVar2.a(this.n);
                }
            } else {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.h;
                if (aVar3 != null) {
                    aVar3.a("file is not effective " + strP, this.n);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.i;
                if (aVar4 != null) {
                    aVar4.a("file is not effective " + strP, this.n);
                }
            }
        }
        if (!this.b && j > 0) {
            this.b = true;
            if (this.v == null) {
                this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
            }
            this.v.a(this.n, j, this.f7596f);
        }
        CopyOnWriteArrayList<d> copyOnWriteArrayList = this.f7597g;
        if (copyOnWriteArrayList != null) {
            for (d dVar : copyOnWriteArrayList) {
                if (dVar != null) {
                    dVar.a(j, i);
                }
            }
        }
    }

    private static void a(com.mbridge.msdk.foundation.entity.n nVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), campaignEx.getCampaignUnitId());
            if (cVarA != null) {
                nVar.l(cVarA.l());
            }
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            if (aVarB != null) {
                nVar.k(aVarB.c());
            }
        } catch (Exception e2) {
            aa.d("CampaignDownLoadTask", e2.getMessage());
        }
    }

    private int b(CampaignEx campaignEx) {
        int iC;
        if (campaignEx == null) {
            return 100;
        }
        if (campaignEx.getReady_rate() != -1) {
            iC = campaignEx.getReady_rate();
            aa.a("CampaignDownLoadTask", "ready_rate(campaign): " + iC);
        } else {
            iC = c(campaignEx);
            aa.a("CampaignDownLoadTask", "ready_rate(reward_unit_setting): " + iC);
        }
        try {
            return Math.max(iC, 0);
        } catch (Exception unused) {
            return 100;
        }
    }

    private int c(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 100;
        }
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.J == null) {
                    this.J = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h(), this.k);
                }
                return this.J.f();
            }
            if (campaignEx.getAdType() == 42) {
                if (this.L == null) {
                    this.L = com.mbridge.msdk.c.f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), this.k);
                }
                return d((CampaignEx) null);
            }
            if (this.K == null) {
                this.K = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.k, false);
            }
            return this.K.r();
        } catch (Throwable th) {
            aa.b("CampaignDownLoadTask", th.getMessage(), th);
            return 100;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (com.mbridge.msdk.foundation.same.report.k.a().c()) {
                com.mbridge.msdk.foundation.same.report.k.a().a(str);
                return;
            }
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g());
            com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(str, com.mbridge.msdk.foundation.controller.b.d().g(), this.k);
            CampaignEx campaignEx = this.j;
            if (campaignEx != null && campaignEx.getAdType() != 42) {
                dVarA.a("r_stid", com.mbridge.msdk.videocommon.d.b.a().b().b());
            }
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, null);
        } catch (Exception e2) {
            aa.d("CampaignDownLoadTask", e2.getMessage());
        }
    }

    private int d(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.c.h hVar = this.L;
            if (hVar != null) {
                return hVar.f();
            }
            return 100;
        } catch (Exception unused) {
            return 100;
        }
    }

    private int e(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 0;
        }
        try {
            if (campaignEx.getAabEntity() != null) {
                return campaignEx.getAabEntity().h3c;
            }
            return 0;
        } catch (Throwable th) {
            aa.d("CampaignDownLoadTask", th.getMessage());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(int i) {
        if (this.j == null || TextUtils.isEmpty(this.k) || TextUtils.isEmpty(this.j.getRequestId()) || TextUtils.isEmpty(this.j.getVideoUrlEncode())) {
            return "";
        }
        return "key=2000077" + o2.i.c + "unit_id=" + this.k + o2.i.c + "rid=" + this.j.getRequestId() + o2.i.c + "rid_n=" + this.j.getRequestIdNotice() + o2.i.c + "package_name=" + com.mbridge.msdk.foundation.controller.b.d().b() + o2.i.c + "app_id=" + com.mbridge.msdk.foundation.controller.b.d().h() + o2.i.c + "video_url=" + URLEncoder.encode(this.j.getVideoUrlEncode()) + o2.i.c + "process_size=" + this.p + o2.i.c + "file_size=" + this.m + o2.i.c + "ready_rate=" + this.t + o2.i.c + "cd_rate=" + this.f7594d + o2.i.c + "cid=" + this.j.getId() + o2.i.c + "type=" + this.f7596f + o2.i.c + "video_download_status=" + i;
    }

    private void t() {
        if (this.v == null) {
            this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
        }
        try {
            try {
                this.v.b(this.n);
                if (!ac.a().a("r_d_v_b_l", true)) {
                    File file = new File(this.q);
                    if (file.exists() && file.isFile()) {
                        file.delete();
                    }
                }
            } catch (Throwable unused) {
                aa.d("CampaignDownLoadTask", "del DB or file failed");
            }
        } finally {
            this.f7596f = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            Class<?> cls = Class.forName("com.mbridge.msdk.reward.b.a");
            cls.getMethod("insertExcludeId", String.class, CampaignEx.class).invoke(cls.newInstance(), this.k, this.j);
            Class<?> cls2 = Class.forName("com.mbridge.msdk.mbnative.controller.NativeController");
            cls2.getMethod("insertExcludeId", String.class, CampaignEx.class).invoke(cls2.newInstance(), this.k, this.j);
        } catch (Exception e2) {
            aa.d("CampaignDownLoadTask", e2.getMessage());
        }
    }

    public final void a(int i) {
        this.c = i;
    }

    public final void a(int i, int i2) {
        this.f7596f = i;
        if (this.v == null) {
            this.v = p.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
        }
        this.v.a(this.n, i2, i);
    }

    public final void a(long j, boolean z, String str) {
        p pVar;
        aa.d("CampaignDownLoadTask", "setStateToDone ： mProgressSize " + this.p + "  progressSize " + j + "  " + this.A + "%   FileSize : " + this.m + "  " + this.j.getAppName());
        if (this.t != 100 || this.c == 3 || j == this.m || z) {
            this.f7596f = 5;
            if (j == this.m) {
                a(1, "", str);
            }
            long j2 = this.m;
            if (j2 != 0 && (pVar = this.v) != null) {
                pVar.b(this.n, j2);
            }
            this.b = false;
            a(j, this.f7596f);
            return;
        }
        File file = new File(this.q);
        aa.d("CampaignDownLoadTask", "progressSize = " + j + " fileSize = " + this.m + " " + z + " absFileSize = " + (Objects.exists(file, this.o, this.x) ? file.length() : 0L));
        a("File size is not match witch download size.");
    }

    public final void a(CampaignEx campaignEx) {
        this.j = campaignEx;
        if (campaignEx != null) {
            this.Q = campaignEx.getCurrentLRid();
        }
    }

    public final void a(d dVar) {
        CopyOnWriteArrayList<d> copyOnWriteArrayList = this.f7597g;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.add(dVar);
        }
    }

    public final void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.h = aVar;
    }

    public final void a(String str) {
        com.mbridge.msdk.videocommon.listener.a aVar = this.h;
        if (aVar != null) {
            aVar.a(str, this.n);
        }
        com.mbridge.msdk.videocommon.listener.a aVar2 = this.i;
        if (aVar2 != null) {
            aVar2.a(str, this.n);
        }
        aa.d("CampaignDownLoadTask", "Video download stop : " + str);
        if (this.f7596f == 4 || this.f7596f == 2 || this.f7596f == 5) {
            return;
        }
        this.f7596f = 4;
        CampaignEx campaignEx = this.j;
        if (campaignEx == null || campaignEx.getRsIgnoreCheckRule() == null || this.j.getRsIgnoreCheckRule().size() <= 0 || !this.j.getRsIgnoreCheckRule().contains(0)) {
            a(this.p, this.f7596f);
        } else {
            aa.b("CampaignDownLoadTask", "Is not check video download status");
        }
    }

    public final void a(boolean z) {
        this.M = z;
    }

    public final boolean a() {
        return this.M;
    }

    public final void b(int i) {
        this.f7594d = i;
    }

    public final void b(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.i = aVar;
    }

    public final void b(String str) {
        u();
        a(2, str, "");
        this.f7596f = 4;
    }

    public final void b(boolean z) {
        this.N = z;
    }

    public final boolean b() {
        return this.N;
    }

    public final void c(int i) {
        aa.a("CampaignDownLoadTask", "set ready rate: " + i);
        this.t = i;
    }

    public final void c(boolean z) {
        this.O = z;
    }

    public final boolean c() {
        return this.O;
    }

    public final void d(int i) {
        this.C = i;
    }

    public final void d(boolean z) {
        this.P = z;
    }

    public final boolean d() {
        return this.P;
    }

    public final String e() {
        return this.n;
    }

    public final void e(int i) {
        this.E = i;
    }

    public final void e(boolean z) {
        this.w = z;
    }

    public final void f(boolean z) {
        this.r = z;
    }

    public final boolean f() {
        return this.w;
    }

    public final long g() {
        return this.s;
    }

    public final String h() {
        return this.q;
    }

    public final long i() {
        return this.m;
    }

    public final int j() {
        return this.f7596f;
    }

    public final CampaignEx k() {
        return this.j;
    }

    public final long l() {
        return this.p;
    }

    public final void m() {
        aa.d("CampaignDownLoadTask", "startForLoadRefactor()");
        try {
            if (TextUtils.isEmpty(this.n)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.h;
                if (aVar != null) {
                    aVar.a(this.n);
                    return;
                }
                return;
            }
            if (this.n != null) {
                aa.d("CampaignDownLoadTask", new URL(this.n).getPath());
            }
            if (this.c == 3) {
                aa.d("CampaignDownLoadTask", "startForLoadRefactor: Dlnet is 3, Will callback.");
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.h;
                if (aVar2 != null) {
                    aVar2.a(this.n);
                    return;
                }
                return;
            }
            if (this.t == 0 && this.E == 2) {
                aa.d("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.h;
                if (aVar3 != null) {
                    aVar3.a(this.n);
                    return;
                }
                return;
            }
            try {
                if (this.f7596f == 5 && Utils.getDownloadRate(this.m, this.p) >= this.t) {
                    if (Objects.exists(new File(this.o + this.x), this.o, this.x)) {
                        this.q = this.o + this.x;
                        com.mbridge.msdk.videocommon.listener.a aVar4 = this.h;
                        if (aVar4 != null) {
                            aVar4.a(this.n);
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e2) {
                aa.d("CampaignDownLoadTask", "startForLoadRefactor: " + e2.getMessage());
            }
            boolean z = this.a && this.E == 2 && this.t != 100;
            aa.d("CampaignDownLoadTask", "start: ready rate is " + this.t + " and video ctn type is " + this.E + " and isUseNewDownloadReadyRate " + z);
            if (z) {
                DownloadRequest downloadRequest = this.z;
                if (downloadRequest != null) {
                    downloadRequest.start();
                    return;
                }
                DownloadRequest downloadRequest2 = this.y;
                if (downloadRequest2 != null) {
                    downloadRequest2.start();
                    return;
                }
                return;
            }
            DownloadRequest downloadRequest3 = this.y;
            if (downloadRequest3 != null) {
                downloadRequest3.start();
                return;
            }
            DownloadRequest downloadRequest4 = this.z;
            if (downloadRequest4 != null) {
                downloadRequest4.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar5 = this.h;
            if (aVar5 != null) {
                aVar5.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    public final void n() {
        aa.d("CampaignDownLoadTask", "start()");
        try {
            if (TextUtils.isEmpty(this.n)) {
                return;
            }
            if (this.n != null) {
                aa.d("CampaignDownLoadTask", new URL(this.n).getPath());
            }
            int i = this.t;
            if (i == 0 && this.E == 2) {
                aa.d("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                return;
            }
            boolean z = this.a && this.E == 2 && i != 100;
            aa.d("CampaignDownLoadTask", "start: ready rate is " + this.t + " and video ctn type is " + this.E + " and isUseNewDownloadReadyRate " + z);
            if (z) {
                DownloadRequest downloadRequest = this.z;
                if (downloadRequest != null) {
                    downloadRequest.start();
                    return;
                }
                DownloadRequest downloadRequest2 = this.y;
                if (downloadRequest2 != null) {
                    downloadRequest2.start();
                    return;
                }
                return;
            }
            DownloadRequest downloadRequest3 = this.y;
            if (downloadRequest3 != null) {
                downloadRequest3.start();
                return;
            }
            DownloadRequest downloadRequest4 = this.z;
            if (downloadRequest4 != null) {
                downloadRequest4.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.h;
            if (aVar != null) {
                aVar.a("VideoUrl is not illegal, Please check it.", "");
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.i;
            if (aVar2 != null) {
                aVar2.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    public final void o() {
        boolean z = true;
        try {
            this.B = true;
            if (this.E == 1) {
                aa.d("CampaignDownLoadTask", "Can not call resume(), because videoCtnType = " + this.E);
                return;
            }
            if (this.c == 3) {
                aa.d("CampaignDownLoadTask", "Can not call resume(), because dlnet = " + this.c);
                return;
            }
            aa.d("CampaignDownLoadTask", "resume()");
            if (!this.a || this.E != 2 || this.t == 100) {
                z = false;
            }
            aa.d("CampaignDownLoadTask", "resume: ready rate is " + this.t + " and video ctn type is " + this.E + " and isUseNewDownloadReadyRate " + z);
            DownloadMessage downloadMessage = new DownloadMessage(new Object(), this.n, this.x, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
            downloadMessage.setUseCronetDownload(e(this.j));
            if (z) {
                DownloadRequest<?> downloadRequestA = a(downloadMessage, this.R, this.S);
                this.z = downloadRequestA;
                downloadRequestA.start();
            } else {
                DownloadRequest<?> downloadRequestA2 = a(downloadMessage, this.T, this.U);
                this.y = downloadRequestA2;
                downloadRequestA2.start();
            }
            c(f(2));
        } catch (Exception e2) {
            aa.d("CampaignDownLoadTask", e2.getMessage());
        }
    }

    public final String p() {
        String message = "";
        if (this.c == 3) {
            return "";
        }
        String str = this.o + this.x;
        File file = new File(str);
        try {
            if (!Objects.exists(file, this.o, this.x)) {
                message = "file is not exist ";
            } else if (!file.isFile()) {
                message = "file is not file ";
            } else if (!file.canRead()) {
                message = "file can not read ";
            } else if (file.length() > 0) {
                this.q = str;
            } else {
                message = "file length is 0 ";
            }
        } catch (Throwable th) {
            aa.d("CampaignDownLoadTask", th.getMessage());
            message = th.getMessage();
        }
        if (this.f7596f == 5 && !TextUtils.isEmpty(message)) {
            t();
        }
        return message;
    }

    public final void q() {
        if (this.f7597g != null) {
            this.f7597g = null;
        }
    }

    public final void r() {
        try {
            try {
                t();
                CampaignEx campaignEx = this.j;
                if (campaignEx != null && campaignEx.getPlayable_ads_without_video() == 2) {
                    return;
                }
                com.mbridge.msdk.videocommon.a.a aVarA = com.mbridge.msdk.videocommon.a.a.a();
                if (aVarA != null) {
                    aVarA.a(this.j);
                }
            } catch (Exception unused) {
                aa.d("CampaignDownLoadTask", "del file is failed");
            }
        } finally {
            this.f7596f = 0;
        }
    }

    public final String s() {
        try {
            File file = new File(this.q);
            if (Objects.exists(file, this.o, this.x) && file.isFile()) {
                return this.q;
            }
        } catch (Exception e2) {
            aa.d("CampaignDownLoadTask", e2.getMessage());
        }
        return this.n;
    }
}
