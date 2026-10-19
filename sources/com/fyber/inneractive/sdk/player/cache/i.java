package com.fyber.inneractive.sdk.player.cache;

/* JADX INFO: loaded from: classes2.dex */
public class i extends b {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        r5 = com.fyber.inneractive.sdk.player.cache.b.a.OK;
     */
    @Override // com.fyber.inneractive.sdk.player.cache.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.player.cache.b.a a(com.fyber.inneractive.sdk.player.cache.a r4, java.lang.String r5) {
        /*
            r3 = this;
            com.fyber.inneractive.sdk.player.cache.b$a r5 = com.fyber.inneractive.sdk.player.cache.b.a.INVALID
            android.media.MediaExtractor r0 = new android.media.MediaExtractor
            r0.<init>()
            java.io.File r4 = r4.a()     // Catch: java.lang.Throwable -> L33
            java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L33
            r0.setDataSource(r4)     // Catch: java.lang.Throwable -> L33
            r4 = 0
        L13:
            int r1 = r0.getTrackCount()     // Catch: java.lang.Throwable -> L33
            if (r4 >= r1) goto L33
            android.media.MediaFormat r1 = r0.getTrackFormat(r4)     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = "mime"
            java.lang.String r1 = r1.getString(r2)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L30
            java.lang.String r2 = "video/"
            boolean r1 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L30
            com.fyber.inneractive.sdk.player.cache.b$a r5 = com.fyber.inneractive.sdk.player.cache.b.a.OK     // Catch: java.lang.Throwable -> L33
            goto L33
        L30:
            int r4 = r4 + 1
            goto L13
        L33:
            r0.release()     // Catch: java.lang.Throwable -> L36
        L36:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.cache.i.a(com.fyber.inneractive.sdk.player.cache.a, java.lang.String):com.fyber.inneractive.sdk.player.cache.b$a");
    }
}
