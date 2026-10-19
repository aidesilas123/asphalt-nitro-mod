package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.ScriptInjector;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.y;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: ResourceManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k {
    private static String a = "ResourceManager";
    private String b;

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.download.k$1, reason: invalid class name */
    /* JADX INFO: compiled from: ResourceManager.java */
    final class AnonymousClass1 extends com.mbridge.msdk.foundation.same.e.a {
        final /* synthetic */ k a;

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void a() {
            y.c(this.a.b);
        }

        @Override // com.mbridge.msdk.foundation.same.e.a
        public final void b() {
        }
    }

    /* JADX INFO: compiled from: ResourceManager.java */
    private static class a {
        public static k a = new k(null);
    }

    private k() {
        this.b = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_RES);
    }

    /* synthetic */ k(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static k a() {
        return a.a;
    }

    private String a(String str, String str2, File file) throws Throwable {
        String strA = y.a(str2, this.b + "/" + SameMD5.getMD5(al.b(str)));
        return TextUtils.isEmpty(strA) ? y.b(file) : strA;
    }

    public final String a(String str) throws Throwable {
        String strSubstring;
        String str2 = "";
        try {
            String str3 = this.b + "/" + SameMD5.getMD5(al.b(str));
            List<String> queryParameters = Uri.parse(str).getQueryParameters("foldername");
            if (queryParameters == null || queryParameters.size() <= 0) {
                return null;
            }
            String str4 = queryParameters.get(0);
            if (TextUtils.isEmpty(str4)) {
                return null;
            }
            String str5 = str3 + "/" + str4 + "/" + str4 + ".html";
            if (!y.a(str5)) {
                return null;
            }
            try {
                com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
                if (eVarB != null && !TextUtils.isEmpty(eVarB.aw())) {
                    File file = new File(str5);
                    y.a(com.mbridge.msdk.a.b.c(ScriptInjector.injectScriptContentIntoHtml(MBridgeConstans.OMID_JS_SERVICE_CONTENT, y.a(file))).getBytes(), file);
                }
                strSubstring = str.substring(str.indexOf("?") + 1);
            } catch (Exception unused) {
                strSubstring = "";
            }
            if (!TextUtils.isEmpty(strSubstring)) {
                str2 = "?" + strSubstring;
            }
            return AdPayload.FILE_SCHEME + str5 + str2;
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            e2.printStackTrace();
            return null;
        }
    }

    public final synchronized String a(String str, byte[] bArr) {
        String message;
        String strA = "unknow exception ";
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    String str2 = this.b + "/" + SameMD5.getMD5(al.b(str)) + ".zip";
                    File file = new File(str2);
                    if (y.a(bArr, file)) {
                        Uri uri = Uri.parse(str);
                        List<String> queryParameters = uri.getQueryParameters("nc");
                        if (queryParameters == null || queryParameters.size() == 0) {
                            List<String> queryParameters2 = uri.getQueryParameters("md5filename");
                            if (queryParameters2 != null && queryParameters2.size() > 0) {
                                String str3 = queryParameters2.get(0);
                                if (!TextUtils.isEmpty(str3) && str3.equals(x.a(file))) {
                                    strA = a(str, str2, file);
                                }
                            }
                        } else {
                            strA = a(str, str2, file);
                        }
                    }
                    if (!TextUtils.isEmpty(strA)) {
                        y.b(file);
                    }
                }
                message = strA;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
                message = e2.getMessage();
            }
        } else {
            message = strA;
        }
        return message;
    }
}
