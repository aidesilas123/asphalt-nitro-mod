package com.bytedance.sdk.component.f.b;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.sdk.component.b.a.f;
import com.bytedance.sdk.component.b.a.i;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.n;
import com.bytedance.sdk.component.b.a.o;
import com.bytedance.sdk.component.b.a.p;
import com.bytedance.sdk.component.f.d.e;
import com.bytedance.sdk.component.utils.l;
import com.json.b4;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: compiled from: PostExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends c {
    n a;

    public d(k kVar) {
        super(kVar);
        this.a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i a(p pVar) {
        try {
            return pVar.e();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset a(i iVar) {
        try {
            return iVar != null ? iVar.a(com.bytedance.sdk.component.b.a.b.i.a) : com.bytedance.sdk.component.b.a.b.i.a;
        } catch (Exception unused) {
            return com.bytedance.sdk.component.b.a.b.i.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.component.f.b bVar, o oVar) {
        if (bVar == null || oVar == null) {
            return;
        }
        bVar.a(oVar.i());
    }

    private byte[] d(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] byteArray = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e3) {
                l.e("PostExecutor", e3.toString());
            }
            try {
                gZIPOutputStream.write(str.getBytes(b4.L));
                try {
                    gZIPOutputStream.close();
                } catch (IOException e4) {
                    l.e("PostExecutor", e4.toString());
                }
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException e5) {
                e = e5;
                gZIPOutputStream2 = gZIPOutputStream;
                l.e("PostExecutor", e.toString());
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e6) {
                        l.e("PostExecutor", e6.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e7) {
                        l.e("PostExecutor", e7.toString());
                    }
                }
                if (byteArrayOutputStream == null) {
                    throw th;
                }
                byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e8) {
                    l.e("PostExecutor", e8.toString());
                    throw th;
                }
            }
        } catch (IOException e9) {
            e = e9;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        return byteArray;
    }

    public com.bytedance.sdk.component.f.b a() {
        com.bytedance.sdk.component.f.b bVar;
        try {
            m.a aVar = new m.a();
            if (TextUtils.isEmpty(this.f1049f)) {
                e.b("PostExecutor", "execute: Url is Empty");
                return new com.bytedance.sdk.component.f.b(false, 5000, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            aVar.a(this.f1049f);
            if (this.a == null) {
                e.b("PostExecutor", "RequestBody is null, content type is not support!!");
                return new com.bytedance.sdk.component.f.b(false, 5000, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            a(aVar);
            aVar.a((Object) b());
            o oVarA = this.c.a(aVar.a(this.a).b()).a();
            if (oVarA == null) {
                return null;
            }
            HashMap map = new HashMap();
            f fVarG = oVarA.g();
            if (fVarG != null) {
                for (int i = 0; i < fVarG.a(); i++) {
                    String strA = fVarG.a(i);
                    String strB = fVarG.b(i);
                    map.put(strA, strB);
                    if (strA != null && strA.equalsIgnoreCase("content-type")) {
                        map.put("content-type", strB == null ? "" : strB.toLowerCase());
                    }
                }
            }
            if (com.bytedance.sdk.component.f.d.a.a(map)) {
                byte[] bArrD = oVarA.f().d();
                bVar = new com.bytedance.sdk.component.f.b(oVarA.d(), oVarA.c(), oVarA.e(), map, null, oVarA.b(), oVarA.a());
                bVar.a(bArrD);
            } else if (this.f1050g) {
                byte[] bArrD2 = oVarA.f().d();
                bVar = new com.bytedance.sdk.component.f.b(oVarA.d(), oVarA.c(), oVarA.e(), map, new String(bArrD2, a(a(oVarA.f()))), oVarA.b(), oVarA.a());
                bVar.a(bArrD2);
            } else {
                bVar = new com.bytedance.sdk.component.f.b(oVarA.d(), oVarA.c(), oVarA.e(), map, oVarA.f().b(), oVarA.b(), oVarA.a());
            }
            a(bVar, oVarA);
            return bVar;
        } catch (Throwable th) {
            return new com.bytedance.sdk.component.f.b(false, IronSourceConstants.errorCode_biddingDataException, th.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    public void a(final com.bytedance.sdk.component.f.a.a aVar) {
        try {
            m.a aVar2 = new m.a();
            if (TextUtils.isEmpty(this.f1049f)) {
                aVar.a(this, new IOException("Url is Empty"));
                return;
            }
            aVar2.a(this.f1049f);
            if (this.a == null) {
                if (aVar != null) {
                    aVar.a(this, new IOException("RequestBody is null, content type is not support!!"));
                }
            } else {
                a(aVar2);
                aVar2.a((Object) b());
                this.c.a(aVar2.a(this.a).b()).a(new com.bytedance.sdk.component.b.a.c() { // from class: com.bytedance.sdk.component.f.b.d.1
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
                    @Override // com.bytedance.sdk.component.b.a.c
                    public void a(com.bytedance.sdk.component.b.a.b bVar, o oVar) throws IOException {
                        com.bytedance.sdk.component.f.b bVar2;
                        HashMap map;
                        com.bytedance.sdk.component.f.a.a aVar3 = aVar;
                        if (aVar3 != null) {
                            if (oVar == null) {
                                aVar3.a(d.this, new IOException("No response"));
                                return;
                            }
                            com.bytedance.sdk.component.f.b bVar3 = null;
                            IOException iOException = null;
                            try {
                                map = new HashMap();
                                f fVarG = oVar.g();
                                if (fVarG != null) {
                                    for (int i = 0; i < fVarG.a(); i++) {
                                        String strA = fVarG.a(i);
                                        String strB = fVarG.b(i);
                                        map.put(strA, strB);
                                        if (strA != null && strA.equalsIgnoreCase("content-type")) {
                                            map.put("content-type", strB == null ? "" : strB.toLowerCase());
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                if (com.bytedance.sdk.component.f.d.a.a(map)) {
                                    byte[] bArrD = oVar.f().d();
                                    bVar2 = new com.bytedance.sdk.component.f.b(oVar.d(), oVar.c(), oVar.e(), map, null, oVar.b(), oVar.a());
                                    bVar2.a(bArrD);
                                } else if (d.this.f1050g) {
                                    byte[] bArrD2 = oVar.f().d();
                                    d dVar = d.this;
                                    bVar2 = new com.bytedance.sdk.component.f.b(oVar.d(), oVar.c(), oVar.e(), map, new String(bArrD2, dVar.a(dVar.a(oVar.f()))), oVar.b(), oVar.a());
                                    bVar2.a(bArrD2);
                                } else {
                                    bVar2 = new com.bytedance.sdk.component.f.b(oVar.d(), oVar.c(), oVar.e(), map, oVar.f().b(), oVar.b(), oVar.a());
                                }
                                d.this.a(bVar2, oVar);
                            } catch (Throwable th2) {
                                th = th2;
                                bVar3 = bVar2;
                                bVar2 = bVar3;
                                iOException = new IOException(th);
                            }
                            if (bVar2 != null) {
                                aVar.a(d.this, bVar2);
                                return;
                            }
                            com.bytedance.sdk.component.f.a.a aVar4 = aVar;
                            d dVar2 = d.this;
                            if (iOException == null) {
                                iOException = new IOException("Unexpected exception");
                            }
                            aVar4.a(dVar2, iOException);
                        }
                    }

                    @Override // com.bytedance.sdk.component.b.a.c
                    public void a(com.bytedance.sdk.component.b.a.b bVar, IOException iOException) {
                        com.bytedance.sdk.component.f.a.a aVar3 = aVar;
                        if (aVar3 != null) {
                            aVar3.a(d.this, iOException);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
            aVar.a(this, new IOException(th.getMessage()));
        }
    }

    public void a(String str, boolean z) {
        if (!z) {
            c(str);
        } else {
            a("application/json; charset=utf-8", d(str));
            b("Content-Encoding", "gzip");
        }
    }

    public void a(String str, byte[] bArr) {
        this.a = n.a(i.a(str), bArr);
    }

    public void a(JSONObject jSONObject) {
        this.a = n.a(i.a("application/json; charset=utf-8"), jSONObject != null ? jSONObject.toString() : JsonUtils.EMPTY_JSON);
    }

    public n c() {
        return this.a;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = JsonUtils.EMPTY_JSON;
        }
        this.a = n.a(i.a("application/json; charset=utf-8"), str);
    }
}
