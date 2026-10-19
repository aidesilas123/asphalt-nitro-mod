package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.ScriptInjector;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.foundation.tools.y;
import java.io.File;

/* JADX INFO: compiled from: HTMLResourceManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class h {
    private String a;

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.download.h$1, reason: invalid class name */
    /* JADX INFO: compiled from: HTMLResourceManager.java */
    final class AnonymousClass1 extends com.mbridge.msdk.foundation.same.e.a {
        final /* synthetic */ h a;

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void a() {
            y.c(this.a.a);
        }

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: HTMLResourceManager.java */
    static class a {
        public static h a = new h(null);
    }

    private h() {
        this.a = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_HTML);
    }

    /* synthetic */ h(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static h a() {
        return a.a;
    }

    public final String a(String str) {
        try {
            String str2 = this.a + "/" + SameMD5.getMD5(al.b(str)) + ".html";
            File file = new File(str2);
            if (!file.exists()) {
                return null;
            }
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB != null && !TextUtils.isEmpty(eVarB.aw())) {
                y.a(com.mbridge.msdk.a.b.c(ScriptInjector.injectScriptContentIntoHtml(MBridgeConstans.OMID_JS_SERVICE_CONTENT, y.a(file))).getBytes(), file);
            }
            return "file:////" + str2;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public final boolean a(String str, byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        try {
            if (bArr.length <= 0) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.a);
            sb.append("/");
            sb.append(SameMD5.getMD5(al.b(str)));
            sb.append(".html");
            return y.a(bArr, new File(sb.toString()));
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            e2.printStackTrace();
            return false;
        }
    }

    public final String b(String str) {
        try {
            File file = new File(this.a + "/" + SameMD5.getMD5(al.b(str)) + ".html");
            if (file.exists()) {
                return y.a(file);
            }
            return null;
        } catch (Throwable th) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
