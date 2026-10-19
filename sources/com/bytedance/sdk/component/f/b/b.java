package com.bytedance.sdk.component.f.b;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.a;
import com.bytedance.sdk.component.b.a.f;
import com.bytedance.sdk.component.b.a.g;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import com.bytedance.sdk.component.b.a.p;
import com.bytedance.sdk.component.f.d.e;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: GetExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends c {
    public static final com.bytedance.sdk.component.b.a.a a = new a.C0111a().a().b();
    public static final com.bytedance.sdk.component.b.a.a b = new a.C0111a().b();
    private com.bytedance.sdk.component.b.a.a h;
    private boolean i;
    private Map<String, String> j;

    public b(k kVar) {
        super(kVar);
        this.h = a;
        this.i = false;
        this.j = new HashMap();
    }

    public com.bytedance.sdk.component.f.b a() {
        try {
            m.a aVar = new m.a();
            String strB = "";
            if (this.i) {
                aVar.a(this.f1049f);
            } else {
                g.a aVar2 = new g.a();
                Uri uri = Uri.parse(this.f1049f);
                aVar2.a(uri.getScheme());
                aVar2.b(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    aVar2.c(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.j.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.j.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, C.UTF8_NAME);
                        if (value == null) {
                            value = "";
                        }
                        aVar2.a(strEncode, URLEncoder.encode(value, C.UTF8_NAME));
                    }
                }
                aVar.a(aVar2.b());
            }
            a(aVar);
            aVar.a(this.h);
            aVar.a((Object) b());
            o oVarA = this.c.a(aVar.a().b()).a();
            if (oVarA == null) {
                return null;
            }
            HashMap map = new HashMap();
            f fVarG = oVarA.g();
            if (fVarG != null) {
                for (int i = 0; i < fVarG.a(); i++) {
                    map.put(fVarG.a(i), fVarG.b(i));
                }
            }
            p pVarF = oVarA.f();
            if (pVarF != null) {
                strB = pVarF.b();
            }
            return new com.bytedance.sdk.component.f.b(oVarA.d(), oVarA.c(), oVarA.e(), map, strB, oVarA.b(), oVarA.a());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void a(final com.bytedance.sdk.component.f.a.a aVar) {
        try {
            m.a aVar2 = new m.a();
            if (this.i) {
                aVar2.a(this.f1049f);
            } else {
                g.a aVar3 = new g.a();
                Uri uri = Uri.parse(this.f1049f);
                aVar3.a(uri.getScheme());
                aVar3.b(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    aVar3.c(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.j.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.j.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, C.UTF8_NAME);
                        if (value == null) {
                            value = "";
                        }
                        aVar3.a(strEncode, URLEncoder.encode(value, C.UTF8_NAME));
                    }
                }
                aVar2.a(aVar3.b());
            }
            a(aVar2);
            aVar2.a(this.h);
            aVar2.a((Object) b());
            this.c.a(aVar2.a().b()).a(new com.bytedance.sdk.component.b.a.c() { // from class: com.bytedance.sdk.component.f.b.b.1
                @Override // com.bytedance.sdk.component.b.a.c
                public void a(com.bytedance.sdk.component.b.a.b bVar, o oVar) throws IOException {
                    if (aVar != null) {
                        HashMap map = new HashMap();
                        if (oVar != null) {
                            f fVarG = oVar.g();
                            if (fVarG != null) {
                                for (int i = 0; i < fVarG.a(); i++) {
                                    map.put(fVarG.a(i), fVarG.b(i));
                                }
                            }
                            p pVarF = oVar.f();
                            aVar.a(b.this, new com.bytedance.sdk.component.f.b(oVar.d(), oVar.c(), oVar.e(), map, pVarF == null ? "" : pVarF.b(), oVar.b(), oVar.a()));
                        }
                    }
                }

                @Override // com.bytedance.sdk.component.b.a.c
                public void a(com.bytedance.sdk.component.b.a.b bVar, IOException iOException) {
                    com.bytedance.sdk.component.f.a.a aVar4 = aVar;
                    if (aVar4 != null) {
                        aVar4.a(b.this, iOException);
                    }
                }
            });
        } catch (Throwable th) {
            if (e.a()) {
                th.printStackTrace();
            }
            if (aVar != null) {
                aVar.a(this, new IOException(th.getMessage()));
            }
        }
    }

    public void a(String str, String str2) {
        if (str == null) {
            e.b("GetExecutor", "name cannot be null !!!");
        } else {
            this.j.put(str, str2);
        }
    }

    public void a(boolean z) {
        this.i = z;
    }
}
