package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.e.a;
import com.mbridge.msdk.foundation.tools.ae;
import java.util.concurrent.Semaphore;

/* JADX INFO: compiled from: WebViewSpiderLoader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class m extends d implements a.InterfaceC0404a {
    private e a;
    private JumpLoaderResult b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f6826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.e.b f6827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f6828g;
    private boolean c = true;
    private Handler h = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: WebViewSpiderLoader.java */
    private class a extends com.mbridge.msdk.foundation.same.e.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Context f6830f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f6831g;
        private String h;
        private String i;
        private CampaignEx j;
        private boolean k;
        private boolean l;
        private int m;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Semaphore f6829e = new Semaphore(0);
        private l.a n = new l.a() { // from class: com.mbridge.msdk.click.m.a.1
            private void a() {
                synchronized (m.this) {
                    m.this.b.setSuccess(true);
                    a.a(a.this);
                }
            }

            @Override // com.mbridge.msdk.click.l.a
            public final void a(int i, String str, String str2, String str3) {
                if (!TextUtils.isEmpty(str2)) {
                    m.this.b.setExceptionMsg(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    m.this.b.setContent(str3);
                }
                a.this.a(str);
                a();
            }

            @Override // com.mbridge.msdk.click.l.a
            public final void a(String str, boolean z, String str2) {
                a.this.a(str);
                m.this.b.setContent(str2);
                a();
            }

            @Override // com.mbridge.msdk.click.l.a
            public final boolean a(String str) {
                boolean zA = a.this.a(str);
                if (zA) {
                    a();
                }
                return zA;
            }

            @Override // com.mbridge.msdk.click.l.a
            public final boolean b(String str) {
                boolean zA = a.this.a(str);
                if (zA) {
                    a();
                }
                return zA;
            }

            @Override // com.mbridge.msdk.click.l.a
            public final boolean c(String str) {
                return false;
            }
        };

        public a(Context context, String str, String str2, String str3, CampaignEx campaignEx, boolean z, boolean z2, int i) {
            this.f6830f = context;
            this.f6831g = str;
            this.h = str2;
            this.i = str3;
            this.j = campaignEx;
            this.k = z;
            this.l = z2;
            this.m = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x01ec A[EDGE_INSN: B:89:0x01ec->B:81:0x01ec BREAK  A[LOOP:0: B:21:0x0056->B:71:0x0193], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private com.mbridge.msdk.click.entity.JumpLoaderResult a(java.lang.String r16, boolean r17, boolean r18, com.mbridge.msdk.foundation.entity.CampaignEx r19, int r20) {
            /*
                Method dump skipped, instruction units count: 493
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.m.a.a(java.lang.String, boolean, boolean, com.mbridge.msdk.foundation.entity.CampaignEx, int):com.mbridge.msdk.click.entity.JumpLoaderResult");
        }

        static /* synthetic */ void a(a aVar) {
            aVar.f6829e.release();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(String str) {
            CampaignEx campaignEx = this.j;
            if (campaignEx != null) {
                campaignEx.getLinkType();
            }
            if (!ae.a.a(str)) {
                m.this.b.setCode(2);
                m.this.b.setUrl(str);
                return false;
            }
            m.this.b.setCode(1);
            m.this.b.setUrl(str);
            m.this.b.setjumpDone(true);
            return true;
        }

        private boolean b(String str) {
            return !URLUtil.isNetworkUrl(str);
        }

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void a() {
            if (m.this.a != null) {
                m.this.a.a(null);
            }
            m.this.b = new JumpLoaderResult();
            m.this.b.setUrl(this.f6831g);
            m.this.b = a(this.f6831g, this.k, this.l, this.j, this.m);
            if (!TextUtils.isEmpty(m.this.b.getExceptionMsg())) {
                m.this.b.setSuccess(true);
            }
            if (m.this.c && m.this.b.isSuccess()) {
                if (m.this.f6828g != null) {
                    m.this.b.setStatusCode(m.this.f6828g.f6805f);
                }
                if (!ae.a.a(m.this.b.getUrl()) && 200 == m.this.f6828g.f6805f && !TextUtils.isEmpty(m.this.b.getContent()) && !m.this.b.getContent().contains("EXCEPTION_CAMPAIGN_NOT_ACTIVE")) {
                    m.this.b.setType(2);
                    if (TextUtils.isEmpty(m.this.b.getContent())) {
                        try {
                            new l().a(this.h, this.i, this.f6830f, m.this.b.getUrl(), this.n);
                        } catch (Exception unused) {
                        }
                    } else {
                        new l().a(this.h, this.i, this.f6830f, m.this.b.getUrl(), m.this.b.getContent(), this.n);
                    }
                    this.f6829e.acquireUninterruptibly();
                    return;
                }
                if (m.this.f6828g != null) {
                    m.this.b.setType(1);
                    m.this.b.setExceptionMsg(m.this.f6828g.h);
                    m.this.b.setStatusCode(m.this.f6828g.f6805f);
                    m.this.b.setHeader(m.this.f6828g.a());
                    m.this.b.setContent(m.this.f6828g.f6806g);
                }
                a(m.this.b.getUrl());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void b() {
        }
    }

    public m(Context context) {
        this.f6826e = context;
        this.f6827f = new com.mbridge.msdk.foundation.same.e.b(context, 2);
    }

    @Override // com.mbridge.msdk.click.d
    public final void a() {
        this.c = false;
    }

    @Override // com.mbridge.msdk.foundation.same.e.a.InterfaceC0404a
    public final void a(a.b bVar) {
        if (bVar == a.b.FINISH && this.c) {
            this.h.post(new Runnable() { // from class: com.mbridge.msdk.click.m.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (m.this.a != null) {
                        if (m.this.b.isSuccess()) {
                            m.this.a.b(m.this.b);
                        } else {
                            m.this.a.a(m.this.b, m.this.b.getMsg());
                        }
                    }
                }
            });
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(String str, e eVar, boolean z, String str2, String str3, CampaignEx campaignEx, boolean z2, boolean z3, int i) {
        com.mbridge.msdk.foundation.same.e.a aVar;
        this.a = eVar;
        this.f6825d = z;
        com.mbridge.msdk.click.entity.b bVar = new com.mbridge.msdk.click.entity.b();
        bVar.a(this.f6826e);
        bVar.a(str);
        bVar.c(z);
        bVar.b(str2);
        bVar.c(str3);
        bVar.a(campaignEx);
        bVar.a(z2);
        bVar.b(z3);
        bVar.a(i);
        if (str.startsWith("tcp")) {
            j jVar = new j(bVar);
            jVar.a(this.a);
            jVar.a(new i() { // from class: com.mbridge.msdk.click.m.1
                @Override // com.mbridge.msdk.click.i
                public final void a(JumpLoaderResult jumpLoaderResult) {
                    m.this.b = jumpLoaderResult;
                }
            });
            aVar = jVar;
        } else {
            aVar = new a(this.f6826e, str, str2, str3, campaignEx, z2, z3, i);
        }
        this.f6827f.a(aVar, this);
    }
}
