package com.mbridge.msdk.click;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: CommonClickControl.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static boolean a;
    public static Map<String, Long> b = new HashMap();
    public static Set<String> c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.foundation.db.h f6785f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f6786g;
    private c h;
    private p j;
    private com.mbridge.msdk.c.e k;
    private boolean l;
    private boolean o;
    private h p;
    private NativeListener.NativeTrackingListener i = null;
    private boolean m = false;
    private boolean n = true;

    public a(Context context, String str) {
        this.f6785f = null;
        this.f6786g = null;
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(str);
        this.k = eVarB;
        if (eVarB == null) {
            this.k = com.mbridge.msdk.c.f.a().b();
        }
        this.l = this.k.T();
        Context applicationContext = context.getApplicationContext();
        this.f6786g = applicationContext;
        this.f6783d = str;
        if (this.f6785f == null) {
            this.f6785f = com.mbridge.msdk.foundation.db.h.a(applicationContext);
        }
        this.j = new p(this.f6786g);
    }

    private AppletSchemeCallBack a(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        return new f(nativeTrackingListener, campaignEx, appletsModel, aVar);
    }

    static /* synthetic */ String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : "2000138" : "2000139" : "2000137" : "2000136";
    }

    private void a(int i, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (i == 2) {
                    ae.a(this.f6786g, str, campaignEx, nativeTrackingListener);
                } else {
                    ae.a(this.f6786g, str, nativeTrackingListener, campaignEx.getCurrentLRid());
                }
            }
        } catch (Throwable th) {
            aa.b("MBridge SDK M", th.getMessage(), th);
        }
    }

    private void a(Context context, CampaignEx campaignEx) {
        if (context == null) {
            q.a(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx, 2, "context is null", this.f6783d);
            return;
        }
        boolean z = w.g() == 1;
        boolean z2 = w.f(context) == 1;
        if (!z || !z2) {
            q.a(context, campaignEx, 2, "integrated:" + z + "-hasWx:" + z2, this.f6783d);
            c(campaignEx);
            return;
        }
        String ghId = campaignEx.getGhId();
        String ghPath = campaignEx.getGhPath();
        String bindId = campaignEx.getBindId();
        String strI = com.mbridge.msdk.foundation.controller.b.d().i();
        if (TextUtils.isEmpty(ghId)) {
            c(campaignEx);
            q.a(context, campaignEx, 2, "ghid is empty", this.f6783d);
            return;
        }
        try {
            if (!TextUtils.isEmpty(strI)) {
                bindId = strI;
            }
            Object objB = w.b(bindId);
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance = cls.newInstance();
            cls.getField("userName").set(objNewInstance, ghId);
            cls.getField("path").set(objNewInstance, ghPath);
            cls.getField("miniprogramType").set(objNewInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
            Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(objB, objNewInstance);
            q.a(context, campaignEx, 1, "", this.f6783d);
        } catch (Throwable th) {
            q.a(context, campaignEx, 2, th.getMessage(), this.f6783d);
            c(campaignEx);
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z, boolean z2) {
        if (context == null) {
            return;
        }
        new c(context.getApplicationContext()).a(str, campaignEx, null, str2, z, z2, com.mbridge.msdk.click.a.a.f6791f);
    }

    public static void a(Context context, final CampaignEx campaignEx, String str, String str2, boolean z, boolean z2, final int i) {
        if (context == null) {
            return;
        }
        final int i2 = TextUtils.isEmpty(str2) ? -1 : str2.startsWith("tcp") ? 1 : 0;
        new c(context.getApplicationContext()).a(str, campaignEx, new e() { // from class: com.mbridge.msdk.click.a.1
            @Override // com.mbridge.msdk.click.e
            public final void a(Object obj) {
            }

            @Override // com.mbridge.msdk.click.e
            public final void a(Object obj, String str3) {
                try {
                    String strA = a.a(i);
                    HashMap map = new HashMap();
                    map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                    map.put("code", "");
                    if (obj instanceof JumpLoaderResult) {
                        String exceptionMsg = ((JumpLoaderResult) obj).getExceptionMsg();
                        if (!TextUtils.isEmpty(exceptionMsg)) {
                            str3 = exceptionMsg;
                        }
                        map.put("reason", str3);
                    }
                    map.put("failing", "");
                    map.put("update", "1");
                    map.put("net_ty", String.valueOf(i2));
                    com.mbridge.msdk.foundation.same.report.m.a().a(strA, campaignEx, map);
                } catch (Exception e2) {
                    aa.d("MBridge SDK M", e2.getMessage());
                }
            }

            @Override // com.mbridge.msdk.click.e
            public final void b(Object obj) {
                try {
                    HashMap map = new HashMap();
                    map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                    map.put("net_ty", String.valueOf(i2));
                    if (obj instanceof JumpLoaderResult) {
                        String str3 = ((JumpLoaderResult) obj).getStatusCode() + "";
                        map.put("status_code", str3);
                        if (str3.startsWith(MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
                            map.put("result", "1");
                        }
                    }
                    String strA = a.a(i);
                    map.put("update", "1");
                    com.mbridge.msdk.foundation.same.report.m.a().a(strA, campaignEx, map);
                } catch (Exception e2) {
                    aa.d("MBridge SDK M", e2.getMessage());
                }
            }
        }, str2, z, z2, i);
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String[] strArr, boolean z, boolean z2) {
        if (context == null || campaignEx == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        c cVar = new c(context.getApplicationContext());
        for (String str2 : strArr) {
            cVar.a(str, campaignEx, new e() { // from class: com.mbridge.msdk.click.a.2
                @Override // com.mbridge.msdk.click.e
                public final void a(Object obj) {
                }

                @Override // com.mbridge.msdk.click.e
                public final void a(Object obj, String str3) {
                }

                @Override // com.mbridge.msdk.click.e
                public final void b(Object obj) {
                }
            }, str2, z, z2, com.mbridge.msdk.click.a.a.f6791f);
        }
    }

    static /* synthetic */ void a(a aVar, CampaignEx campaignEx) {
        try {
            Intent intent = new Intent(aVar.f6786g, (Class<?>) LoadingActivity.class);
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            intent.putExtra(CampaignEx.JSON_KEY_ICON_URL, campaignEx.getIconUrl());
            aVar.f6786g.startActivity(intent);
        } catch (Exception e2) {
            aa.b("MBridge SDK M", "Exception", e2);
        }
    }

    static /* synthetic */ void a(a aVar, final boolean z, final Campaign campaign) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mbridge.msdk.click.a.5
            @Override // java.lang.Runnable
            public final void run() {
                if (z && !a.a && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                    a.f(a.this);
                }
                if (a.this.i == null || a.a || !MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                    return;
                }
                a.this.i.onDismissLoading(campaign);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, boolean z) {
        a(jumpLoaderResult, campaignEx, 1, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4 A[Catch: Exception -> 0x0154, TryCatch #0 {Exception -> 0x0154, blocks: (B:2:0x0000, B:9:0x000c, B:12:0x0022, B:14:0x0028, B:17:0x0032, B:19:0x0036, B:21:0x004c, B:24:0x0056, B:26:0x0060, B:28:0x006a, B:31:0x007a, B:39:0x00b4, B:40:0x00bd, B:43:0x00c3, B:63:0x0120, B:65:0x012e, B:67:0x0136, B:71:0x013e, B:66:0x0133, B:35:0x008b, B:37:0x0095, B:46:0x00cf, B:47:0x00de, B:50:0x00e4, B:52:0x00ee, B:54:0x00f4, B:56:0x00f8, B:58:0x00fe, B:60:0x0106, B:62:0x0119, B:73:0x0148, B:75:0x014f), top: B:80:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r7, com.mbridge.msdk.click.entity.JumpLoaderResult r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.entity.JumpLoaderResult, boolean, boolean):void");
    }

    private void a(CampaignEx campaignEx, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(this.f6786g, campaignEx, this.f6783d, str, true, false, com.mbridge.msdk.click.a.a.i);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[PHI: r3
      0x0076: PHI (r3v6 boolean) = (r3v3 boolean), (r3v2 boolean) binds: [B:36:0x00c5, B:21:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(final com.mbridge.msdk.foundation.entity.CampaignEx r8, final boolean r9) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(int r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = 2
            r1 = 1
            r2 = 0
            if (r4 != r0) goto Lc
            boolean r4 = com.mbridge.msdk.foundation.tools.ae.a.a(r5)     // Catch: java.lang.Exception -> L16
            if (r4 == 0) goto L13
            goto L14
        Lc:
            boolean r4 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L16
            if (r4 != 0) goto L13
            goto L14
        L13:
            r1 = 0
        L14:
            r2 = r1
            goto L1a
        L16:
            r4 = move-exception
            r4.printStackTrace()
        L1a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(int, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:4:0x0004, B:5:0x0014, B:7:0x0019, B:9:0x001d, B:10:0x0025, B:12:0x0029), top: B:17:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:4:0x0004, B:5:0x0014, B:7:0x0019, B:9:0x001d, B:10:0x0025, B:12:0x0029), top: B:17:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(com.mbridge.msdk.foundation.entity.CampaignEx r6, com.mbridge.msdk.click.entity.JumpLoaderResult r7, boolean r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r8 == 0) goto L14
            android.content.Context r8 = r5.f6786g     // Catch: java.lang.Throwable -> L31
            java.lang.String r2 = r6.getClickURL()     // Catch: java.lang.Throwable -> L31
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r3 = r5.i     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = r6.getCurrentLRid()     // Catch: java.lang.Throwable -> L31
            com.mbridge.msdk.foundation.tools.ae.a(r8, r2, r3, r4)     // Catch: java.lang.Throwable -> L31
            r1 = 1
        L14:
            r5.a(r7, r6, r0)     // Catch: java.lang.Throwable -> L31
            if (r1 == 0) goto L25
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r8 = r5.i     // Catch: java.lang.Throwable -> L31
            if (r8 == 0) goto L3b
            java.lang.String r7 = r7.getUrl()     // Catch: java.lang.Throwable -> L31
            r8.onFinishRedirection(r6, r7)     // Catch: java.lang.Throwable -> L31
            goto L3b
        L25:
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r8 = r5.i     // Catch: java.lang.Throwable -> L31
            if (r8 == 0) goto L3b
            java.lang.String r7 = r7.getUrl()     // Catch: java.lang.Throwable -> L31
            r8.onRedirectionFailed(r6, r7)     // Catch: java.lang.Throwable -> L31
            goto L3b
        L31:
            r6 = move-exception
            java.lang.String r7 = r6.getMessage()
            java.lang.String r8 = "MBridge SDK M"
            com.mbridge.msdk.foundation.tools.aa.b(r8, r7, r6)
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.entity.JumpLoaderResult, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006c A[Catch: all -> 0x0068, TryCatch #0 {all -> 0x0068, blocks: (B:4:0x0004, B:6:0x000e, B:9:0x0021, B:11:0x002e, B:13:0x0034, B:16:0x0054, B:17:0x005e, B:21:0x006c, B:23:0x0073, B:24:0x007b, B:27:0x0084), top: B:31:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b A[Catch: all -> 0x0068, TryCatch #0 {all -> 0x0068, blocks: (B:4:0x0004, B:6:0x000e, B:9:0x0021, B:11:0x002e, B:13:0x0034, B:16:0x0054, B:17:0x005e, B:21:0x006c, B:23:0x0073, B:24:0x007b, B:27:0x0084), top: B:31:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(com.mbridge.msdk.foundation.entity.CampaignEx r6, com.mbridge.msdk.click.entity.JumpLoaderResult r7, boolean r8, int r9) {
        /*
            r5 = this;
            r0 = 0
            r1 = 1
            if (r8 == 0) goto L6a
            java.lang.String r2 = r6.getLandingType()     // Catch: java.lang.Throwable -> L68
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L68
            if (r2 != r1) goto L1e
            android.content.Context r9 = r5.f6786g     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r3 = r5.i     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = r6.getCurrentLRid()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.foundation.tools.ae.a(r9, r2, r3, r4)     // Catch: java.lang.Throwable -> L68
            goto L2c
        L1e:
            r3 = 2
            if (r2 != r3) goto L2e
            android.content.Context r9 = r5.f6786g     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r3 = r5.i     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.foundation.tools.ae.a(r9, r2, r6, r3)     // Catch: java.lang.Throwable -> L68
        L2c:
            r0 = 1
            goto L6a
        L2e:
            java.lang.String r2 = r6.getPackageName()     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L5e
            android.content.Context r2 = r5.f6786g     // Catch: java.lang.Throwable -> L68
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r3.<init>()     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = "market://details?id="
            r3.append(r4)     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = r6.getPackageName()     // Catch: java.lang.Throwable -> L68
            r3.append(r4)     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r4 = r5.i     // Catch: java.lang.Throwable -> L68
            boolean r2 = com.mbridge.msdk.foundation.tools.ae.a.a(r2, r3, r4)     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L54
            goto L2c
        L54:
            java.lang.String r2 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r3 = r5.i     // Catch: java.lang.Throwable -> L68
            r5.a(r9, r2, r6, r3)     // Catch: java.lang.Throwable -> L68
            goto L6a
        L5e:
            java.lang.String r2 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r3 = r5.i     // Catch: java.lang.Throwable -> L68
            r5.a(r9, r2, r6, r3)     // Catch: java.lang.Throwable -> L68
            goto L6a
        L68:
            r6 = move-exception
            goto L8c
        L6a:
            if (r0 == 0) goto L7b
            r5.a(r7, r6, r1)     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r8 = r5.i     // Catch: java.lang.Throwable -> L68
            if (r8 == 0) goto L95
            java.lang.String r7 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            r8.onFinishRedirection(r6, r7)     // Catch: java.lang.Throwable -> L68
            goto L95
        L7b:
            r5.a(r7, r6, r1)     // Catch: java.lang.Throwable -> L68
            com.mbridge.msdk.out.NativeListener$NativeTrackingListener r9 = r5.i     // Catch: java.lang.Throwable -> L68
            if (r9 == 0) goto L95
            if (r8 == 0) goto L95
            java.lang.String r7 = r7.getUrl()     // Catch: java.lang.Throwable -> L68
            r9.onRedirectionFailed(r6, r7)     // Catch: java.lang.Throwable -> L68
            goto L95
        L8c:
            java.lang.String r7 = r6.getMessage()
            java.lang.String r8 = "MBridge SDK M"
            com.mbridge.msdk.foundation.tools.aa.b(r8, r7, r6)
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.entity.JumpLoaderResult, boolean, int):boolean");
    }

    private int b() {
        try {
            com.mbridge.msdk.c.e eVar = this.k;
            if (eVar != null) {
                return eVar.O();
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    private boolean b(CampaignEx campaignEx) {
        Long l;
        if (campaignEx == null) {
            return true;
        }
        try {
            if (2 != campaignEx.getLinkType() && 3 != campaignEx.getLinkType()) {
                return true;
            }
            String id = campaignEx.getId();
            Map<String, Long> map = b;
            if (map == null) {
                return true;
            }
            if (map.containsKey(id) && (l = b.get(id)) != null) {
                if (l.longValue() > System.currentTimeMillis() || c.contains(campaignEx.getId())) {
                    return false;
                }
            }
            b.put(campaignEx.getId(), Long.valueOf(System.currentTimeMillis() + ((long) (campaignEx.getClickTimeOutInterval() * 1000))));
            return true;
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return true;
            }
            e2.printStackTrace();
            return true;
        }
    }

    private void c(CampaignEx campaignEx) {
        if (b() == 2) {
            ae.a(this.f6786g, campaignEx.getClickURL(), campaignEx, this.i);
        } else {
            ae.a(this.f6786g, campaignEx.getClickURL(), this.i, campaignEx.getCurrentLRid());
        }
    }

    static /* synthetic */ void f(a aVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            aVar.f6786g.sendBroadcast(intent);
        } catch (Exception e2) {
            aa.b("MBridge SDK M", "Exception", e2);
        }
    }

    public final void a() {
        try {
            this.i = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, int i, boolean z) {
        if (campaignEx == null || jumpLoaderResult == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f6784e;
            com.mbridge.msdk.foundation.entity.d dVar = new com.mbridge.msdk.foundation.entity.d();
            int iR = w.r(this.f6786g);
            dVar.a(iR);
            dVar.a(w.a(this.f6786g, iR));
            dVar.j(campaignEx.getRequestId());
            dVar.k(campaignEx.getRequestIdNotice());
            dVar.d(i);
            dVar.i(jCurrentTimeMillis + "");
            dVar.h(campaignEx.getId());
            dVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                dVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), b4.L));
            }
            dVar.c((this.f6784e / 1000) + "");
            dVar.b(Integer.parseInt(campaignEx.getLandingType()));
            dVar.c(campaignEx.getLinkType());
            dVar.b(this.f6783d);
            dVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                dVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), b4.L));
            }
            if (this.l) {
                dVar.e(jumpLoaderResult.getStatusCode());
                if (!TextUtils.isEmpty(jumpLoaderResult.getHeader())) {
                    dVar.e(URLEncoder.encode(jumpLoaderResult.getHeader(), b4.L));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getContent())) {
                    dVar.f(URLEncoder.encode(jumpLoaderResult.getContent(), C.UTF8_NAME));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getExceptionMsg())) {
                    dVar.d(URLEncoder.encode(jumpLoaderResult.getExceptionMsg(), b4.L));
                }
            }
            if (z) {
                this.j.a("click_jump_error", dVar, this.f6783d);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(dVar);
            String strA = com.mbridge.msdk.foundation.entity.d.a(arrayList);
            if (ak.b(strA)) {
                if (com.mbridge.msdk.foundation.same.report.k.a().c()) {
                    com.mbridge.msdk.foundation.same.report.k.a().a(strA);
                } else {
                    new p(this.f6786g, 0).a("click_jump_success", strA, null, null);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(h hVar) {
        this.p = hVar;
    }

    public final void a(CampaignEx campaignEx) {
        try {
            if (b(campaignEx)) {
                HashMap map = new HashMap();
                map.put("update", "1");
                com.mbridge.msdk.foundation.same.report.m.a().a("2000149", campaignEx, map);
                String noticeUrl = campaignEx.getNoticeUrl();
                com.mbridge.msdk.foundation.db.d dVarA = com.mbridge.msdk.foundation.db.d.a(this.f6785f);
                dVarA.a();
                JumpLoaderResult jumpLoaderResultB = dVarA.b(campaignEx.getId(), this.f6783d);
                if (jumpLoaderResultB != null) {
                    if (jumpLoaderResultB.getNoticeurl() != null) {
                        jumpLoaderResultB.setNoticeurl(null);
                    }
                    campaignEx.setJumpResult(jumpLoaderResultB);
                    dVarA.a(campaignEx, this.f6783d);
                }
                AppletsModel appletsModel = AppletModelManager.getInstance().get(campaignEx);
                if (af.a(campaignEx)) {
                    com.mbridge.msdk.foundation.tools.q.a().a(campaignEx);
                    HashMap map2 = new HashMap();
                    map2.put("type", "3");
                    if (b.d(this.f6786g, campaignEx.getDeepLinkURL())) {
                        NativeListener.NativeTrackingListener nativeTrackingListener = this.i;
                        if (nativeTrackingListener != null) {
                            nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        a(campaignEx, noticeUrl + "&opdptype=1");
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.i;
                        if (nativeTrackingListener2 != null) {
                            nativeTrackingListener2.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        try {
                            map2.put("result", "1");
                            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map2);
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    try {
                        map2.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map2);
                    } catch (Exception unused2) {
                    }
                    noticeUrl = noticeUrl + "&opdptype=0";
                    com.mbridge.msdk.foundation.tools.q.a().b(campaignEx);
                }
                if (campaignEx.getLinkType() == 12) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.i;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    a(campaignEx, noticeUrl);
                    a(this.f6786g, campaignEx);
                    NativeListener.NativeTrackingListener nativeTrackingListener4 = this.i;
                    if (nativeTrackingListener4 != null) {
                        nativeTrackingListener4.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (appletsModel != null && appletsModel.isSupportWxScheme()) {
                    if (appletsModel.isRequestSuccess()) {
                        if (b.d(this.f6786g, appletsModel.getDeepLink())) {
                            NativeListener.NativeTrackingListener nativeTrackingListener5 = this.i;
                            if (nativeTrackingListener5 != null) {
                                nativeTrackingListener5.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            if (this.f6786g != null) {
                                Intent intent = new Intent();
                                intent.setAction("mb_dp_close_broadcast_receiver");
                                try {
                                    this.f6786g.sendBroadcast(intent);
                                } catch (Exception unused3) {
                                }
                            }
                            a(campaignEx, noticeUrl + "&opdptype=1");
                            NativeListener.NativeTrackingListener nativeTrackingListener6 = this.i;
                            if (nativeTrackingListener6 != null) {
                                nativeTrackingListener6.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                                return;
                            }
                            return;
                        }
                        noticeUrl = noticeUrl + "&opdptype=0";
                    } else {
                        if (appletsModel.isRequesting()) {
                            NativeListener.NativeTrackingListener nativeTrackingListener7 = this.i;
                            if (nativeTrackingListener7 != null) {
                                nativeTrackingListener7.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            appletsModel.setAppletSchemeCallBack(a(this.i, campaignEx, appletsModel, this));
                            return;
                        }
                        if (appletsModel.can(1)) {
                            if (!appletsModel.isRequestTimesMaxPerDay()) {
                                NativeListener.NativeTrackingListener nativeTrackingListener8 = this.i;
                                if (nativeTrackingListener8 != null) {
                                    nativeTrackingListener8.onStartRedirection(campaignEx, campaignEx.getClickURL());
                                }
                                appletsModel.requestWxAppletsScheme(1, a(this.i, campaignEx, appletsModel, this));
                                return;
                            }
                            if (!TextUtils.isEmpty(appletsModel.getReBuildClickUrl())) {
                                campaignEx.setClickURL(appletsModel.getReBuildClickUrl());
                            }
                        }
                    }
                }
                a(campaignEx, noticeUrl);
                if (!campaignEx.getUserActivation() && b.c(this.f6786g, campaignEx.getPackageName())) {
                    b.e(this.f6786g, campaignEx.getPackageName());
                    NativeListener.NativeTrackingListener nativeTrackingListener9 = this.i;
                    if (nativeTrackingListener9 != null) {
                        nativeTrackingListener9.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    a(campaignEx, true);
                    NativeListener.NativeTrackingListener nativeTrackingListener10 = this.i;
                    if (nativeTrackingListener10 != null) {
                        nativeTrackingListener10.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        ae.a(this.i);
                        return;
                    }
                    return;
                }
                int linkType = campaignEx.getLinkType();
                int iB = b();
                boolean z = linkType == 8 || linkType == 9 || linkType == 4;
                String clickURL = campaignEx.getClickURL();
                if (!TextUtils.isEmpty(clickURL) && (clickURL.startsWith("market://") || clickURL.startsWith("https://play.google.com/"))) {
                    NativeListener.NativeTrackingListener nativeTrackingListener11 = this.i;
                    if (nativeTrackingListener11 != null) {
                        nativeTrackingListener11.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    if (ae.a.a(this.f6786g, campaignEx.getClickURL(), this.i)) {
                        a(jumpLoaderResultB, campaignEx, false);
                        aa.b("MBridge SDK M", "不用做302跳转 最终地址已经是gp了：" + campaignEx.getClickURL());
                        NativeListener.NativeTrackingListener nativeTrackingListener12 = this.i;
                        if (nativeTrackingListener12 != null) {
                            nativeTrackingListener12.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        try {
                            HashMap map3 = new HashMap();
                            map3.put("type", "1");
                            map3.put("result", "1");
                            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map3);
                            return;
                        } catch (Exception unused4) {
                            return;
                        }
                    }
                    try {
                        HashMap map4 = new HashMap();
                        map4.put("type", "1");
                        map4.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map4);
                    } catch (Exception unused5) {
                    }
                    a(iB, campaignEx.getClickURL(), campaignEx, this.i);
                    a(jumpLoaderResultB, campaignEx, false);
                    aa.b("MBridge SDK M", "最终地址是gp, 但是打开失败了：" + campaignEx.getClickURL());
                    NativeListener.NativeTrackingListener nativeTrackingListener13 = this.i;
                    if (nativeTrackingListener13 != null) {
                        nativeTrackingListener13.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (!z) {
                    if (linkType == 2) {
                        a(campaignEx, false);
                        return;
                    }
                    if (linkType == 3) {
                        try {
                            HashMap map5 = new HashMap();
                            map5.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                            map5.put("result", "1");
                            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map5);
                        } catch (Exception unused6) {
                        }
                        a(campaignEx, false);
                        return;
                    }
                    String clickURL2 = campaignEx.getClickURL();
                    NativeListener.NativeTrackingListener nativeTrackingListener14 = this.i;
                    if (nativeTrackingListener14 != null) {
                        nativeTrackingListener14.onStartRedirection(campaignEx, clickURL2);
                    }
                    if (TextUtils.isEmpty(clickURL2)) {
                        NativeListener.NativeTrackingListener nativeTrackingListener15 = this.i;
                        if (nativeTrackingListener15 != null) {
                            nativeTrackingListener15.onRedirectionFailed(campaignEx, clickURL2);
                        }
                        a(jumpLoaderResultB, campaignEx, true);
                        return;
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener16 = this.i;
                    if (nativeTrackingListener16 != null) {
                        nativeTrackingListener16.onFinishRedirection(campaignEx, clickURL2);
                    }
                    ae.a(this.f6786g, clickURL2, this.i, campaignEx.getCurrentLRid());
                    a(jumpLoaderResultB, campaignEx, true);
                    return;
                }
                String clickURL3 = campaignEx.getClickURL();
                NativeListener.NativeTrackingListener nativeTrackingListener17 = this.i;
                if (nativeTrackingListener17 != null) {
                    nativeTrackingListener17.onStartRedirection(campaignEx, clickURL3);
                }
                if (TextUtils.isEmpty(clickURL3)) {
                    NativeListener.NativeTrackingListener nativeTrackingListener18 = this.i;
                    if (nativeTrackingListener18 != null) {
                        nativeTrackingListener18.onRedirectionFailed(campaignEx, clickURL3);
                    }
                    a(jumpLoaderResultB, campaignEx, true);
                    return;
                }
                if (linkType == 8) {
                    if (campaignEx.getAabEntity() == null || campaignEx.getAabEntity().getHlp() != 1) {
                        ae.a(this.f6786g, clickURL3, campaignEx, this.i);
                        NativeListener.NativeTrackingListener nativeTrackingListener19 = this.i;
                        if (nativeTrackingListener19 != null) {
                            nativeTrackingListener19.onFinishRedirection(campaignEx, clickURL3);
                        }
                    } else {
                        BaseTrackingListener baseTrackingListener = this.i;
                        if (baseTrackingListener == null && (baseTrackingListener = this.p) != null) {
                            baseTrackingListener.onStartRedirection(campaignEx, clickURL3);
                        }
                        ae.a(this.f6786g, clickURL3, campaignEx, this, baseTrackingListener);
                    }
                    a(jumpLoaderResultB, campaignEx, false);
                    return;
                }
                if (linkType == 9) {
                    ae.a(this.f6786g, clickURL3, this.i, campaignEx.getCurrentLRid());
                    a(jumpLoaderResultB, campaignEx, false);
                    NativeListener.NativeTrackingListener nativeTrackingListener20 = this.i;
                    if (nativeTrackingListener20 != null) {
                        nativeTrackingListener20.onFinishRedirection(campaignEx, clickURL3);
                        return;
                    }
                    return;
                }
                if (linkType == 4) {
                    if (iB == 2) {
                        ae.a(this.f6786g, clickURL3, campaignEx, this.i);
                    } else {
                        ae.a(this.f6786g, clickURL3, this.i, campaignEx.getCurrentLRid());
                    }
                }
                NativeListener.NativeTrackingListener nativeTrackingListener21 = this.i;
                if (nativeTrackingListener21 != null) {
                    nativeTrackingListener21.onFinishRedirection(campaignEx, clickURL3);
                }
                a(jumpLoaderResultB, campaignEx, false);
            }
        } catch (Throwable th) {
            aa.b("MBridge SDK M", th.getMessage(), th);
        }
    }

    public final void a(CampaignEx campaignEx, NativeListener.NativeAdListener nativeAdListener) {
        if (nativeAdListener != null && campaignEx != null) {
            nativeAdListener.onAdClick(campaignEx);
        }
        a(campaignEx);
    }

    public final void a(Campaign campaign, String str) {
        try {
            if (!TextUtils.isEmpty(str) && campaign != null) {
                CampaignEx campaignEx = campaign instanceof CampaignEx ? (CampaignEx) campaign : null;
                if ((!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) || ae.a.a(this.f6786g, str, this.i) || campaignEx == null) {
                    return;
                }
                if (TextUtils.isEmpty(campaignEx.getPackageName())) {
                    if (b() == 2) {
                        ae.a(this.f6786g, campaignEx.getClickURL(), campaignEx, this.i);
                        return;
                    } else {
                        ae.a(this.f6786g, campaignEx.getClickURL(), this.i, campaignEx.getCurrentLRid());
                        return;
                    }
                }
                ae.a.a(this.f6786g, "market://details?id=" + campaignEx.getPackageName(), this.i);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.i = nativeTrackingListener;
    }

    public final void a(String str) {
        this.f6783d = str;
    }

    public final void a(boolean z) {
        this.n = z;
    }
}
