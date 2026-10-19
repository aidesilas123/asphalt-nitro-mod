package com.mbridge.msdk.click;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.e.a;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import java.util.concurrent.Semaphore;

/* JADX INFO: compiled from: SocketRequestTask.java */
/* JADX INFO: loaded from: classes4.dex */
public final class j extends com.mbridge.msdk.foundation.same.e.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f6815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6816f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6817g;
    private String h;
    private CampaignEx i;
    private boolean j;
    private boolean k;
    private int l;
    private boolean m;
    private com.mbridge.msdk.click.entity.a n;
    private JumpLoaderResult o;
    private e p;
    private i q;
    private final Semaphore a = new Semaphore(0);
    private final l.a r = new l.a() { // from class: com.mbridge.msdk.click.j.1
        private void a() {
            synchronized (this) {
                j.this.o.setSuccess(true);
                if (j.this.q != null) {
                    j.this.q.a(j.this.o);
                }
                j.c(j.this);
            }
        }

        @Override // com.mbridge.msdk.click.l.a
        public final void a(int i, String str, String str2, String str3) {
            if (!TextUtils.isEmpty(str2)) {
                j.this.o.setExceptionMsg(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                j.this.o.setContent(str3);
            }
            j.a(j.this, str);
            a();
        }

        @Override // com.mbridge.msdk.click.l.a
        public final void a(String str, boolean z, String str2) {
            j.a(j.this, str);
            j.this.o.setContent(str2);
            a();
        }

        @Override // com.mbridge.msdk.click.l.a
        public final boolean a(String str) {
            boolean zA = j.a(j.this, str);
            if (zA) {
                a();
            }
            return zA;
        }

        @Override // com.mbridge.msdk.click.l.a
        public final boolean b(String str) {
            boolean zA = j.a(j.this, str);
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

    public j(com.mbridge.msdk.click.entity.b bVar) {
        this.f6815e = bVar.a();
        this.f6816f = bVar.b();
        this.f6817g = bVar.c();
        this.h = bVar.d();
        this.i = bVar.e();
        this.j = bVar.f();
        this.k = bVar.g();
        this.l = bVar.i();
        this.m = bVar.h();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0161 A[LOOP:0: B:16:0x003c->B:66:0x0161, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0169 A[EDGE_INSN: B:73:0x0169->B:67:0x0169 BREAK  A[LOOP:0: B:16:0x003c->B:66:0x0161], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.mbridge.msdk.click.entity.JumpLoaderResult a(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.j.a(java.lang.String):com.mbridge.msdk.click.entity.JumpLoaderResult");
    }

    static /* synthetic */ boolean a(j jVar, String str) {
        if (!ae.a.a(jVar.o.getUrl())) {
            jVar.o.setCode(2);
            jVar.o.setUrl(str);
            return false;
        }
        jVar.o.setCode(1);
        jVar.o.setUrl(str);
        jVar.o.setjumpDone(true);
        return true;
    }

    private String b(String str) {
        if (!this.m) {
            return str;
        }
        String strA = com.mbridge.msdk.c.e.a(this.f6815e, str);
        if (TextUtils.isEmpty(strA)) {
            return str;
        }
        return str + strA;
    }

    static /* synthetic */ void c(j jVar) {
        jVar.a.release();
    }

    @Override // com.mbridge.msdk.foundation.same.e.a
    public final void a() {
        e eVar = this.p;
        if (eVar != null) {
            eVar.a(null);
        }
        JumpLoaderResult jumpLoaderResult = new JumpLoaderResult();
        this.o = jumpLoaderResult;
        jumpLoaderResult.setUrl(this.f6816f);
        JumpLoaderResult jumpLoaderResultA = a(this.f6816f);
        this.o = jumpLoaderResultA;
        if (!TextUtils.isEmpty(jumpLoaderResultA.getExceptionMsg())) {
            this.o.setSuccess(true);
        }
        if (this.c != a.b.RUNNING) {
            i iVar = this.q;
            if (iVar != null) {
                iVar.a(this.o);
                return;
            }
            return;
        }
        if (!this.o.isSuccess()) {
            i iVar2 = this.q;
            if (iVar2 != null) {
                iVar2.a(this.o);
                return;
            }
            return;
        }
        com.mbridge.msdk.click.entity.a aVar = this.n;
        if (aVar != null) {
            this.o.setStatusCode(aVar.f6805f);
        }
        if (!ae.a.a(this.o.getUrl()) && 200 == this.n.f6805f && !TextUtils.isEmpty(this.o.getContent()) && !this.o.getContent().contains("EXCEPTION_CAMPAIGN_NOT_ACTIVE")) {
            this.o.setType(2);
            if (TextUtils.isEmpty(this.o.getContent())) {
                try {
                    new l().a(this.f6817g, this.h, this.f6815e, this.o.getUrl(), this.r);
                } catch (Exception unused) {
                    aa.d("TAG", "webview spider start error");
                }
            } else {
                new l().a(this.f6817g, this.h, this.f6815e, this.o.getUrl(), this.o.getContent(), this.r);
            }
            this.a.acquireUninterruptibly();
            return;
        }
        if (this.n != null) {
            this.o.setType(1);
            this.o.setExceptionMsg(this.n.h);
            this.o.setStatusCode(this.n.f6805f);
            this.o.setHeader(this.n.a());
            this.o.setContent(this.n.f6806g);
        }
        String url = this.o.getUrl();
        if (ae.a.a(url)) {
            this.o.setCode(1);
            this.o.setUrl(url);
            this.o.setjumpDone(true);
        } else {
            this.o.setCode(2);
            this.o.setUrl(url);
        }
        i iVar3 = this.q;
        if (iVar3 != null) {
            iVar3.a(this.o);
        }
    }

    public final void a(e eVar) {
        this.p = eVar;
    }

    public final void a(i iVar) {
        this.q = iVar;
    }

    @Override // com.mbridge.msdk.foundation.same.e.a
    public final void b() {
    }
}
