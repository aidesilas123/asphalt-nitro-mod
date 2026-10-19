package com.mbridge.msdk.click.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.al;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: RetryReportControl.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static String a = "mtg_retry_report=1";
    public static int b = 10000;
    public static int c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f6789d = 50;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f6790e = 600000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f6791f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f6792g = 1;
    public static int h = 2;
    public static int i = 3;
    public static int j = 4;
    public static int k = 5;
    private static String l = "RetryReportControl";
    private static int o;
    private static int p;
    private ConcurrentHashMap<String, com.mbridge.msdk.click.a.b> m;
    private c n;
    private BroadcastReceiver q;
    private final Handler r;

    /* JADX INFO: renamed from: com.mbridge.msdk.click.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RetryReportControl.java */
    private static class C0391a {
        private static a a = new a();
    }

    /* JADX INFO: compiled from: RetryReportControl.java */
    private static class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                a.a(a.a());
            } else {
                Object obj = message.obj;
                if (obj instanceof String) {
                    a.a().a((String) obj, com.mbridge.msdk.click.a.b.a);
                }
            }
        }
    }

    private a() {
        this.m = new ConcurrentHashMap<>();
        this.n = new c(f6789d);
        this.r = new b(Looper.getMainLooper());
        e eVarG = f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        c = eVarG.s();
        b = eVarG.u() * 1000;
        f6790e = eVarG.t() * 1000;
        o = eVarG.r();
        p = eVarG.q();
        try {
            if (this.q == null) {
                this.q = new BroadcastReceiver() { // from class: com.mbridge.msdk.click.a.a.2
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context, Intent intent) {
                        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                            a.this.r.sendEmptyMessage(2);
                        }
                    }
                };
                Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                if (contextG != null) {
                    contextG.registerReceiver(this.q, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static a a() {
        return C0391a.a;
    }

    private static void a(final Context context, final String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, d.a().a, q.a(str, context), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.click.a.a.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str2) {
                    l lVar = new l();
                    lVar.c(str);
                    lVar.a(System.currentTimeMillis());
                    lVar.a(0);
                    lVar.b("POST");
                    lVar.a(d.a().a);
                    n.a(h.a(context)).a(lVar);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str2) {
                    aa.d(a.l, str2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(l, e2.getMessage());
        }
    }

    private static void a(Context context, String str, String str2, String str3, String str4, int i2) {
        if (ac.a().a("metrics", "e_t_l", ac.a().a("e_t_l", 0)) == 1) {
            m.a().a(context, str, str2, str3, str4, i2);
            return;
        }
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000105&");
                stringBuffer.append("url=" + URLEncoder.encode(str2, b4.L) + o2.i.c);
                stringBuffer.append("type=" + i2 + o2.i.c);
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                    stringBuffer.append("b=" + com.mbridge.msdk.foundation.same.a.l + o2.i.c);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                    stringBuffer.append("c=" + com.mbridge.msdk.foundation.same.a.m + o2.i.c);
                }
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append("rid=");
                    stringBuffer.append(str3);
                    stringBuffer.append(o2.i.c);
                }
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append("rid_n=");
                    stringBuffer.append(str4);
                    stringBuffer.append(o2.i.c);
                }
                stringBuffer.append("reason=" + URLEncoder.encode(str, b4.L));
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(context, stringBuffer.toString());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    static /* synthetic */ void a(a aVar) {
        c cVar = aVar.n;
        if (cVar != null) {
            Iterator<String> it = cVar.a().iterator();
            while (it.hasNext()) {
                aVar.a(it.next(), com.mbridge.msdk.click.a.b.b);
            }
        }
    }

    private void a(com.mbridge.msdk.click.a.b bVar) {
        String str;
        String requestIdNotice;
        try {
            CampaignEx campaignExF = bVar.f();
            if (campaignExF != null) {
                String requestId = campaignExF.getRequestId();
                requestIdNotice = campaignExF.getRequestIdNotice();
                str = requestId;
            } else {
                str = "";
                requestIdNotice = str;
            }
            a(com.mbridge.msdk.foundation.controller.b.d().g(), bVar.i().toString(), bVar.g(), str, requestIdNotice, bVar.d());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str) {
        Message messageObtainMessage = this.r.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = str;
        this.r.sendMessageDelayed(messageObtainMessage, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        String str2;
        c cVar = this.n;
        if (cVar != null) {
            com.mbridge.msdk.click.a.b bVarB = cVar.b(str);
            this.n.a(str);
            if (bVarB == null) {
                com.mbridge.msdk.click.a.b bVar = this.m.get(str);
                if (bVar == null || System.currentTimeMillis() > bVar.j() + ((long) f6790e) || bVar.h() >= c || i2 == com.mbridge.msdk.click.a.b.b) {
                    return;
                }
                a(str);
                return;
            }
            if (System.currentTimeMillis() > bVarB.j() + ((long) f6790e)) {
                if (i2 != com.mbridge.msdk.click.a.b.b) {
                    a(bVarB);
                    return;
                }
                return;
            }
            bVarB.a(i2);
            this.m.put(str, bVarB);
            if (al.c(str) == 0) {
                str2 = str + "?" + a;
            } else {
                str2 = str + o2.i.c + a;
            }
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), bVarB.f(), bVarB.e(), str2, bVarB.a(), bVarB.b(), bVarB.d());
        }
    }

    private boolean a(int i2) {
        return i2 == j || i2 == i;
    }

    private boolean b(int i2) {
        return i2 == f6792g || i2 == h;
    }

    public final void a(String str, String str2, CampaignEx campaignEx, String str3, boolean z, boolean z2, int i2) {
        if (!(a(i2) || b(i2) || i2 == k) || TextUtils.isEmpty(str)) {
            return;
        }
        String strReplace = str.replace("?" + a, "").replace(o2.i.c + a, "");
        if (this.m == null) {
            this.m = new ConcurrentHashMap<>();
        }
        com.mbridge.msdk.click.a.b bVarRemove = this.m.remove(strReplace);
        if (bVarRemove == null) {
            bVarRemove = new com.mbridge.msdk.click.a.b(str, str2);
            bVarRemove.b(i2);
            bVarRemove.a(z);
            bVarRemove.b(z2);
            bVarRemove.a(campaignEx);
            bVarRemove.a(str3);
        } else if (bVarRemove.c() != com.mbridge.msdk.click.a.b.b) {
            bVarRemove.b(str2);
        }
        if (!((a(i2) && o != 0) || (b(i2) && p != 0) || i2 == k)) {
            a(bVarRemove);
            return;
        }
        if (System.currentTimeMillis() >= bVarRemove.j() + ((long) f6790e)) {
            if (bVarRemove.c() == com.mbridge.msdk.click.a.b.a) {
                a(bVarRemove);
                return;
            }
            return;
        }
        if (this.n == null) {
            this.n = new c(f6789d);
        }
        this.n.a(strReplace, bVarRemove);
        if (bVarRemove.c() == com.mbridge.msdk.click.a.b.a) {
            if (bVarRemove.h() <= c) {
                a(strReplace);
            } else {
                a(bVarRemove);
            }
        }
    }
}
