package com.mbridge.msdk.videocommon.download;

import android.webkit.URLUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.videocommon.download.f;
import com.mbridge.msdk.videocommon.download.g;

/* JADX INFO: compiled from: DownLoadUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static void a(final String str, final g.c cVar, final boolean z) {
        try {
            if (!ak.a(str) && URLUtil.isNetworkUrl(str)) {
                f.a.a.a(new com.mbridge.msdk.foundation.same.e.a() { // from class: com.mbridge.msdk.videocommon.download.e.1
                    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(4:113|3|(1:5)|6)|(8:8|9|114|10|(9:107|11|(1:13)(1:116)|47|(1:49)|(1:53)|(3:103|57|(1:(2:75|(1:77))(2:72|(1:74)))(1:62))(0)|102|88)|14|(4:16|105|17|(1:19)(1:21))(1:24)|25)(2:32|33)|108|34|(1:36)|(1:38)|39|(0)(0)|102|88|(1:(0))) */
                    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a5, code lost:
                    
                        r3 = e;
                     */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:103:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x00ce A[Catch: Exception -> 0x00d2, TRY_ENTER, TryCatch #11 {Exception -> 0x00d2, blocks: (B:36:0x009b, B:38:0x00a0, B:49:0x00ce, B:53:0x00d6), top: B:113:0x0004 }] */
                    /* JADX WARN: Removed duplicated region for block: B:53:0x00d6 A[Catch: Exception -> 0x00d2, TRY_LEAVE, TryCatch #11 {Exception -> 0x00d2, blocks: (B:36:0x009b, B:38:0x00a0, B:49:0x00ce, B:53:0x00d6), top: B:113:0x0004 }] */
                    /* JADX WARN: Removed duplicated region for block: B:65:0x00f6  */
                    /* JADX WARN: Type inference failed for: r0v15, types: [com.mbridge.msdk.videocommon.download.g$c] */
                    /* JADX WARN: Type inference failed for: r6v0 */
                    /* JADX WARN: Type inference failed for: r6v1 */
                    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v11 */
                    /* JADX WARN: Type inference failed for: r6v12 */
                    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v6 */
                    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.ByteArrayOutputStream] */
                    /* JADX WARN: Type inference failed for: r6v8 */
                    /* JADX WARN: Type inference failed for: r6v9 */
                    /* JADX WARN: Type inference failed for: r7v0 */
                    /* JADX WARN: Type inference failed for: r7v1 */
                    /* JADX WARN: Type inference failed for: r7v14 */
                    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.String] */
                    /* JADX WARN: Type inference failed for: r7v3 */
                    /* JADX WARN: Type inference failed for: r7v4 */
                    /* JADX WARN: Type inference failed for: r7v5 */
                    /* JADX WARN: Type inference failed for: r7v9 */
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
                    @Override // com.mbridge.msdk.foundation.same.e.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void a() throws java.lang.Throwable {
                        /*
                            Method dump skipped, instruction units count: 350
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.e.AnonymousClass1.a():void");
                    }

                    @Override // com.mbridge.msdk.foundation.same.e.a
                    public final void b() {
                    }
                });
                return;
            }
            if (cVar != null) {
                cVar.a("url is error");
            }
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }
}
