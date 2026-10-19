package com.fyber.inneractive.sdk.click;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class h implements a {
    public final String a;
    public boolean b;

    public h(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008d A[Catch: all -> 0x00a4, TryCatch #1 {all -> 0x00a4, blocks: (B:7:0x0014, B:10:0x002d, B:12:0x0033, B:17:0x003e, B:19:0x0042, B:20:0x0051, B:29:0x008d, B:30:0x0095, B:27:0x0083, B:22:0x0060, B:24:0x0079, B:25:0x007e, B:8:0x001d), top: B:41:0x0014, inners: #0, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0095 A[Catch: all -> 0x00a4, TRY_LEAVE, TryCatch #1 {all -> 0x00a4, blocks: (B:7:0x0014, B:10:0x002d, B:12:0x0033, B:17:0x003e, B:19:0x0042, B:20:0x0051, B:29:0x008d, B:30:0x0095, B:27:0x0083, B:22:0x0060, B:24:0x0079, B:25:0x007e, B:8:0x001d), top: B:41:0x0014, inners: #0, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7  */
    @Override // com.fyber.inneractive.sdk.click.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.click.b a(android.content.Context r9, android.net.Uri r10, java.util.List<com.fyber.inneractive.sdk.click.i> r11) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.click.h.a(android.content.Context, android.net.Uri, java.util.List):com.fyber.inneractive.sdk.click.b");
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public boolean a(Uri uri, l lVar) {
        return "fybernativebrowser".equalsIgnoreCase(uri.getScheme()) || "fybernativebrowser".equalsIgnoreCase(this.a) || this.b;
    }
}
