package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MIMManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f7233d;
    private CopyOnWriteArrayList<CampaignEx> a;
    private volatile b b;
    private final AtomicBoolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Boolean f7234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CampaignEx f7235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7236g;
    private Context h;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: MIMManager.java */
    static final class a {
        private static final q a = new q();
    }

    /* JADX INFO: compiled from: MIMManager.java */
    private static class b extends BroadcastReceiver {
        private b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0083 A[Catch: Exception -> 0x00a8, TryCatch #0 {Exception -> 0x00a8, blocks: (B:13:0x0033, B:16:0x003a, B:18:0x004b, B:21:0x0052, B:24:0x005d, B:36:0x0083, B:37:0x008a, B:31:0x006f, B:32:0x0075, B:33:0x007b), top: B:43:0x0033 }] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onReceive(final android.content.Context r9, android.content.Intent r10) {
            /*
                r8 = this;
                java.lang.String r0 = r10.getAction()
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 == 0) goto Lb
                return
            Lb:
                java.lang.String r1 = "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="
                java.lang.String r1 = com.mbridge.msdk.foundation.tools.u.b(r1)
                boolean r1 = r0.equals(r1)
                if (r1 == 0) goto L19
                goto Lb2
            L19:
                java.lang.String r1 = "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="
                java.lang.String r1 = com.mbridge.msdk.foundation.tools.u.b(r1)
                boolean r1 = r0.equals(r1)
                if (r1 == 0) goto L27
                goto Lb2
            L27:
                java.lang.String r1 = "DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"
                java.lang.String r1 = com.mbridge.msdk.foundation.tools.u.b(r1)
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto Lb2
                android.os.Bundle r10 = r10.getExtras()     // Catch: java.lang.Exception -> La8
                if (r10 != 0) goto L3a
                return
            L3a:
                java.lang.String r0 = "statusCode"
                r1 = -1
                int r7 = r10.getInt(r0, r1)     // Catch: java.lang.Exception -> La8
                java.lang.String r0 = "packageName"
                java.lang.String r2 = ""
                java.lang.String r10 = r10.getString(r0, r2)     // Catch: java.lang.Exception -> La8
                if (r7 == r1) goto La7
                boolean r0 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Exception -> La8
                if (r0 == 0) goto L52
                goto La7
            L52:
                com.mbridge.msdk.foundation.tools.q r0 = com.mbridge.msdk.foundation.tools.q.a.a()     // Catch: java.lang.Exception -> La8
                com.mbridge.msdk.foundation.entity.CampaignEx r10 = com.mbridge.msdk.foundation.tools.q.a(r0, r10)     // Catch: java.lang.Exception -> La8
                if (r10 != 0) goto L5d
                return
            L5d:
                com.mbridge.msdk.foundation.tools.q r0 = com.mbridge.msdk.foundation.tools.q.a.a()     // Catch: java.lang.Exception -> La8
                r1 = 3001(0xbb9, float:4.205E-42)
                if (r7 == r1) goto L7b
                r1 = 3002(0xbba, float:4.207E-42)
                if (r7 == r1) goto L75
                r1 = 3008(0xbc0, float:4.215E-42)
                if (r7 == r1) goto L6f
                r10 = 0
                goto L81
            L6f:
                com.mbridge.msdk.foundation.tools.q$2 r1 = new com.mbridge.msdk.foundation.tools.q$2     // Catch: java.lang.Exception -> La8
                r1.<init>()     // Catch: java.lang.Exception -> La8
                goto L80
            L75:
                com.mbridge.msdk.foundation.tools.q$3 r1 = new com.mbridge.msdk.foundation.tools.q$3     // Catch: java.lang.Exception -> La8
                r1.<init>()     // Catch: java.lang.Exception -> La8
                goto L80
            L7b:
                com.mbridge.msdk.foundation.tools.q$4 r1 = new com.mbridge.msdk.foundation.tools.q$4     // Catch: java.lang.Exception -> La8
                r1.<init>()     // Catch: java.lang.Exception -> La8
            L80:
                r10 = r1
            L81:
                if (r10 == 0) goto L8a
                java.util.concurrent.ThreadPoolExecutor r0 = com.mbridge.msdk.foundation.same.f.b.a()     // Catch: java.lang.Exception -> La8
                r0.execute(r10)     // Catch: java.lang.Exception -> La8
            L8a:
                com.mbridge.msdk.foundation.tools.q r3 = com.mbridge.msdk.foundation.tools.q.a.a()     // Catch: java.lang.Exception -> La8
                java.lang.String r5 = "dm_page_status"
                com.mbridge.msdk.foundation.tools.q r10 = com.mbridge.msdk.foundation.tools.q.a.a()     // Catch: java.lang.Exception -> La8
                com.mbridge.msdk.foundation.entity.CampaignEx r6 = r10.b()     // Catch: java.lang.Exception -> La8
                java.util.concurrent.ThreadPoolExecutor r10 = com.mbridge.msdk.foundation.same.f.b.a()     // Catch: java.lang.Exception -> La8
                com.mbridge.msdk.foundation.tools.q$5 r0 = new com.mbridge.msdk.foundation.tools.q$5     // Catch: java.lang.Exception -> La8
                r2 = r0
                r4 = r9
                r2.<init>()     // Catch: java.lang.Exception -> La8
                r10.execute(r0)     // Catch: java.lang.Exception -> La8
                goto Lb2
            La7:
                return
            La8:
                r9 = move-exception
                java.lang.String r9 = r9.getMessage()
                java.lang.String r10 = "MIMManager"
                com.mbridge.msdk.foundation.tools.aa.d(r10, r9)
            Lb2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.q.b.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    private q() {
        this.f7236g = 0;
        this.a = new CopyOnWriteArrayList<>();
        this.c = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CampaignEx a(String str) {
        try {
            CampaignEx campaignEx = this.f7235f;
            if (campaignEx != null && TextUtils.equals(campaignEx.getPackageName(), str)) {
                return this.f7235f;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.a;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return null;
            }
            for (CampaignEx campaignEx2 : this.a) {
                if (campaignEx2 != null && TextUtils.equals(campaignEx2.getPackageName(), str)) {
                    return campaignEx2;
                }
            }
            return null;
        } catch (Exception e2) {
            aa.d("MIMManager", e2.getMessage());
            return null;
        }
    }

    public static q a() {
        return a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean g() {
        Cursor cursorQuery;
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        Boolean boolValueOf = null;
        if (contextG != null) {
            try {
                if (contextG.getContentResolver() != null) {
                    try {
                        cursorQuery = contextG.getContentResolver().query(Uri.parse(u.b("DFK/J75/JaEXWFfXYZP9LkcXYk3/YkcBLF5TWgSBYbHuH75BW3xuhr5UJj2tLkeNhrKFLkxQhl==")), null, null, null, null);
                    } catch (Exception unused) {
                        cursorQuery = null;
                    }
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("support"));
                                if (!TextUtils.isEmpty(string) && !string.equalsIgnoreCase("null") && (string.equalsIgnoreCase("false") || string.equalsIgnoreCase("true"))) {
                                    boolValueOf = Boolean.valueOf(Boolean.parseBoolean(string));
                                }
                            } catch (Exception e2) {
                                aa.a("MIMManager", e2.getMessage());
                            }
                            try {
                                f7233d = cursorQuery.getString(cursorQuery.getColumnIndex("detailStyle"));
                            } catch (Exception e3) {
                                aa.a("MIMManager", e3.getMessage());
                            }
                        }
                        try {
                            cursorQuery.close();
                        } catch (Exception e4) {
                            aa.a("MIMManager", e4.getMessage());
                        }
                    }
                }
            } catch (Exception e5) {
                aa.d("MIMManager", e5.getMessage());
            }
        }
        return boolValueOf;
    }

    public final void a(final Context context) {
        this.h = context;
        com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.tools.q.1
            @Override // java.lang.Runnable
            public final void run() {
                if (q.this.c.compareAndSet(false, true)) {
                    try {
                        q qVar = q.this;
                        qVar.f7234e = qVar.g();
                    } catch (Exception e2) {
                        aa.a("MIMManager", e2.getMessage());
                    }
                    if (q.this.f7234e == null || !q.this.f7234e.booleanValue() || context == null) {
                        return;
                    }
                    try {
                        q.this.b = new b();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction(u.b("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="));
                        intentFilter.addAction(u.b("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="));
                        intentFilter.addAction(u.b("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"));
                        context.registerReceiver(q.this.b, intentFilter);
                    } catch (Exception e3) {
                        aa.a("MIMManager", e3.getMessage());
                    }
                }
            }
        });
    }

    public final void a(CampaignEx campaignEx) {
        try {
            if (this.f7234e == null || campaignEx == null || !this.f7234e.booleanValue()) {
                return;
            }
            this.f7235f = campaignEx;
            this.a.add(campaignEx);
        } catch (Exception e2) {
            aa.d("MIMManager", e2.getMessage());
        }
    }

    final CampaignEx b() {
        return this.f7235f;
    }

    public final void b(CampaignEx campaignEx) {
        try {
            if (this.f7234e == null || campaignEx == null || !this.f7234e.booleanValue()) {
                return;
            }
            this.f7235f = null;
            try {
                this.a.remove(campaignEx);
            } catch (Exception e2) {
                aa.a("MIMManager", e2.getMessage());
            }
        } catch (Exception e3) {
            aa.d("MIMManager", e3.getMessage());
        }
    }

    public final void c() {
        this.f7236g++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        int i = this.f7236g - 1;
        this.f7236g = i;
        if (i <= 0) {
            Context context = this.h;
            if (this.b == null || context == null) {
                return;
            }
            try {
                try {
                    context.unregisterReceiver(this.b);
                } catch (Exception e2) {
                    aa.a("MIMManager", e2.getMessage());
                }
            } finally {
                this.f7235f = null;
                this.a.clear();
                this.a = null;
                this.b = null;
                this.h = null;
            }
        }
    }

    public final Boolean e() {
        return this.f7234e;
    }

    public final String f() {
        try {
            return f7233d == null ? "" : String.format("[%s]", f7233d);
        } catch (Exception unused) {
            return "";
        }
    }
}
