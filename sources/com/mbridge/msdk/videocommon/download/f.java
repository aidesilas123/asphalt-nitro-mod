package com.mbridge.msdk.videocommon.download;

/* JADX INFO: compiled from: DownloadTask.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f {
    private com.mbridge.msdk.foundation.same.e.b a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: DownloadTask.java */
    static class a {
        public static f a = new f();
    }

    private f() {
        if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
            this.a = new com.mbridge.msdk.foundation.same.e.b(com.mbridge.msdk.foundation.controller.b.d().g());
        }
    }

    public final void a(com.mbridge.msdk.foundation.same.e.a aVar) {
        com.mbridge.msdk.foundation.same.e.b bVar = this.a;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }
}
