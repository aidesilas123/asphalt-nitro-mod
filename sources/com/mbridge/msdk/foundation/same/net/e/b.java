package com.mbridge.msdk.foundation.same.net.e;

import com.mbridge.msdk.foundation.same.net.k;
import com.mbridge.msdk.foundation.same.net.l;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: FileDownloader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private k a;
    private int b;
    private LinkedList<a> c = new LinkedList<>();

    /* JADX INFO: compiled from: FileDownloader.java */
    public class a {
        private String b;
        private File c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.net.e<Void> f7140d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.net.e.a f7141e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f7142f;

        private a(File file, String str, com.mbridge.msdk.foundation.same.net.e<Void> eVar) {
            this.c = file;
            this.f7140d = eVar;
            this.b = str;
        }

        static /* synthetic */ boolean a(a aVar) {
            if (aVar.f7142f != 0) {
                return false;
            }
            com.mbridge.msdk.foundation.same.net.e.a aVar2 = new com.mbridge.msdk.foundation.same.net.e.a(aVar.c, aVar.b);
            aVar.f7141e = aVar2;
            aVar2.a(new com.mbridge.msdk.foundation.same.net.f<Void>() { // from class: com.mbridge.msdk.foundation.same.net.e.b.a.1
                boolean a;

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onCancel() {
                    a.this.f7140d.onCancel();
                    this.a = true;
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onError(com.mbridge.msdk.foundation.same.net.b.a aVar3) {
                    if (this.a) {
                        return;
                    }
                    a.this.f7140d.onError(aVar3);
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onFinish() {
                    if (this.a) {
                        return;
                    }
                    a.this.f7142f = 3;
                    a.this.f7140d.onFinish();
                    a aVar3 = a.this;
                    b.a(b.this, aVar3);
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onPreExecute() {
                    a.this.f7140d.onPreExecute();
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onProgressChange(long j, long j2) {
                    a.this.f7140d.onProgressChange(j, j2);
                }

                @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
                public final void onSuccess(l lVar) {
                    if (this.a) {
                        return;
                    }
                    a.this.f7140d.onSuccess(lVar);
                }
            });
            aVar.f7142f = 1;
            b.this.a.a(aVar.f7141e);
            return true;
        }

        public final boolean a() {
            return this.f7142f == 1;
        }
    }

    public b(k kVar, int i) {
        this.a = kVar;
        this.b = i;
    }

    private void a() {
        synchronized (this) {
            int i = 0;
            Iterator<a> it = this.c.iterator();
            while (it.hasNext()) {
                if (it.next().a()) {
                    i++;
                }
            }
            if (i >= this.b) {
                return;
            }
            Iterator<a> it2 = this.c.iterator();
            while (it2.hasNext()) {
                if (a.a(it2.next()) && (i = i + 1) == this.b) {
                    return;
                }
            }
        }
    }

    static /* synthetic */ void a(b bVar, a aVar) {
        synchronized (bVar) {
            bVar.c.remove(aVar);
        }
        bVar.a();
    }

    public final a a(File file, String str, com.mbridge.msdk.foundation.same.net.e<Void> eVar) {
        a aVar = new a(file, str, eVar);
        synchronized (this) {
            this.c.add(aVar);
        }
        a();
        return aVar;
    }
}
