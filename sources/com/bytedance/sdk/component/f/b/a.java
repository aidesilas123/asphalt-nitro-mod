package com.bytedance.sdk.component.f.b;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.mbridge.msdk.foundation.download.Command;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: DownloadExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends c {
    public File a;
    public File b;

    public a(k kVar) {
        super(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            this.a.delete();
        } catch (Throwable unused) {
        }
        try {
            this.b.delete();
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Map<String, String> map) {
        if (TextUtils.equals(map.get("Accept-Ranges"), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get("Content-Range");
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(Map<String, String> map) {
        String str = map.containsKey("content-length") ? map.get("content-length") : map.containsKey("Content-Length") ? map.get("Content-Length") : null;
        if (TextUtils.isEmpty(str) || str == null) {
            return 0L;
        }
        try {
            return Long.valueOf(str).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(Map<String, String> map) {
        return TextUtils.equals(map.get("Content-Encoding"), "gzip");
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0209 A[EDGE_INSN: B:195:0x0209->B:82:0x0209 BREAK  A[LOOP:1: B:70:0x01d0->B:81:0x0204], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01dd A[Catch: all -> 0x029f, TryCatch #16 {all -> 0x029f, blocks: (B:64:0x01b9, B:66:0x01bf, B:68:0x01c3, B:69:0x01c9, B:70:0x01d0, B:72:0x01dd, B:74:0x01ed, B:79:0x01f8, B:84:0x020e, B:94:0x022a, B:96:0x0232, B:98:0x023c, B:100:0x0246, B:116:0x026b, B:120:0x0282, B:91:0x0220), top: B:193:0x01b9 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x020e A[Catch: all -> 0x029f, TryCatch #16 {all -> 0x029f, blocks: (B:64:0x01b9, B:66:0x01bf, B:68:0x01c3, B:69:0x01c9, B:70:0x01d0, B:72:0x01dd, B:74:0x01ed, B:79:0x01f8, B:84:0x020e, B:94:0x022a, B:96:0x0232, B:98:0x023c, B:100:0x0246, B:116:0x026b, B:120:0x0282, B:91:0x0220), top: B:193:0x01b9 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0220 A[Catch: all -> 0x029f, TryCatch #16 {all -> 0x029f, blocks: (B:64:0x01b9, B:66:0x01bf, B:68:0x01c3, B:69:0x01c9, B:70:0x01d0, B:72:0x01dd, B:74:0x01ed, B:79:0x01f8, B:84:0x020e, B:94:0x022a, B:96:0x0232, B:98:0x023c, B:100:0x0246, B:116:0x026b, B:120:0x0282, B:91:0x0220), top: B:193:0x01b9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.bytedance.sdk.component.f.b a() {
        /*
            Method dump skipped, instruction units count: 744
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.f.b.a.a():com.bytedance.sdk.component.f.b");
    }

    protected void a(long j, long j2, com.bytedance.sdk.component.f.a.a aVar) {
        if (aVar != null) {
            aVar.a(this, j, j2);
        }
    }

    public void a(final com.bytedance.sdk.component.f.a.a aVar) {
        File file = this.a;
        if (file == null || this.b == null) {
            if (aVar != null) {
                aVar.a(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.a.length() != 0 && aVar != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.f.b bVar = new com.bytedance.sdk.component.f.b(true, 200, "Success", null, null, jCurrentTimeMillis, jCurrentTimeMillis);
            bVar.a(this.a);
            aVar.a(this, bVar);
            return;
        }
        long length = this.b.length();
        final long j = length >= 0 ? length : 0L;
        m.a aVar2 = new m.a();
        aVar2.a((Object) b());
        b(Command.HTTP_HEADER_RANGE, "bytes=" + j + "-");
        if (TextUtils.isEmpty(this.f1049f)) {
            aVar.a(this, new IOException("Url is Empty"));
            return;
        }
        try {
            aVar2.a(this.f1049f);
            a(aVar2);
            this.c.a(aVar2.a().b()).a(new com.bytedance.sdk.component.b.a.c() { // from class: com.bytedance.sdk.component.f.b.a.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:141:0x01bb A[EDGE_INSN: B:141:0x01bb->B:64:0x01bb BREAK  A[LOOP:1: B:50:0x0166->B:63:0x019c], SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:52:0x0170 A[Catch: all -> 0x025f, TRY_LEAVE, TryCatch #11 {all -> 0x025f, blocks: (B:44:0x014f, B:46:0x0155, B:48:0x0159, B:49:0x015f, B:50:0x0166, B:52:0x0170), top: B:138:0x014f }] */
                /* JADX WARN: Removed duplicated region for block: B:66:0x01c2 A[Catch: all -> 0x01cd, TryCatch #9 {all -> 0x01cd, blocks: (B:56:0x0182, B:62:0x0192, B:63:0x019c, B:66:0x01c2, B:72:0x01d8, B:74:0x01e2, B:76:0x01ee, B:78:0x01fa, B:79:0x0217, B:80:0x0224, B:84:0x0243), top: B:135:0x0182 }] */
                /* JADX WARN: Removed duplicated region for block: B:69:0x01d0  */
                /* JADX WARN: Removed duplicated region for block: B:80:0x0224 A[Catch: all -> 0x01cd, TryCatch #9 {all -> 0x01cd, blocks: (B:56:0x0182, B:62:0x0192, B:63:0x019c, B:66:0x01c2, B:72:0x01d8, B:74:0x01e2, B:76:0x01ee, B:78:0x01fa, B:79:0x0217, B:80:0x0224, B:84:0x0243), top: B:135:0x0182 }] */
                /* JADX WARN: Removed duplicated region for block: B:82:0x0240  */
                /* JADX WARN: Removed duplicated region for block: B:83:0x0242  */
                /* JADX WARN: Type inference failed for: r0v27, types: [com.bytedance.sdk.component.f.a.a] */
                /* JADX WARN: Type inference failed for: r13v0 */
                /* JADX WARN: Type inference failed for: r13v1 */
                /* JADX WARN: Type inference failed for: r13v10 */
                /* JADX WARN: Type inference failed for: r13v11 */
                /* JADX WARN: Type inference failed for: r13v12 */
                /* JADX WARN: Type inference failed for: r13v2 */
                /* JADX WARN: Type inference failed for: r13v3 */
                /* JADX WARN: Type inference failed for: r13v6 */
                /* JADX WARN: Type inference failed for: r13v8, types: [java.io.File] */
                /* JADX WARN: Type inference failed for: r13v9 */
                /* JADX WARN: Type inference failed for: r3v5, types: [com.bytedance.sdk.component.f.b] */
                /* JADX WARN: Type inference failed for: r3v9 */
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
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public void a(com.bytedance.sdk.component.b.a.b r29, com.bytedance.sdk.component.b.a.o r30) throws java.io.IOException {
                    /*
                        Method dump skipped, instruction units count: 690
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.f.b.a.AnonymousClass1.a(com.bytedance.sdk.component.b.a.b, com.bytedance.sdk.component.b.a.o):void");
                }

                @Override // com.bytedance.sdk.component.b.a.c
                public void a(com.bytedance.sdk.component.b.a.b bVar2, IOException iOException) {
                    com.bytedance.sdk.component.f.a.a aVar3 = aVar;
                    if (aVar3 != null) {
                        aVar3.a(a.this, iOException);
                    }
                    a.this.c();
                }
            });
        } catch (IllegalArgumentException unused) {
            aVar.a(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    public void a(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.a = new File(str, str2);
        this.b = new File(str, str2 + ".temp");
    }
}
