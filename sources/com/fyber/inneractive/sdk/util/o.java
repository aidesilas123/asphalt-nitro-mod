package com.fyber.inneractive.sdk.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;

/* JADX INFO: loaded from: classes2.dex */
public class o extends AsyncTask<Void, Void, Bitmap> {
    public Context a;
    public a b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2741d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2742e;

    public interface a {
    }

    public o(Context context, a aVar, String str, String str2, int i) {
        this.a = context;
        this.b = aVar;
        this.c = str;
        this.f2742e = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d1 A[Catch: all -> 0x00e8, TRY_LEAVE, TryCatch #1 {all -> 0x00e8, blocks: (B:52:0x00c2, B:54:0x00d1), top: B:78:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00db A[Catch: all -> 0x00e4, DONT_GENERATE, TryCatch #0 {all -> 0x00e4, blocks: (B:56:0x00d6, B:58:0x00db, B:60:0x00e0), top: B:76:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e0 A[Catch: all -> 0x00e4, DONT_GENERATE, TRY_LEAVE, TryCatch #0 {all -> 0x00e4, blocks: (B:56:0x00d6, B:58:0x00db, B:60:0x00e0), top: B:76:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.InputStream] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Bitmap doInBackground(java.lang.Void[] r12) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.util.o.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        if (bitmap2 != null) {
            com.fyber.inneractive.sdk.player.b bVar = (com.fyber.inneractive.sdk.player.b) aVar;
            com.fyber.inneractive.sdk.player.c cVar = bVar.a;
            if (cVar.m != null) {
                cVar.a(bitmap2);
                com.fyber.inneractive.sdk.player.c cVar2 = bVar.a;
                cVar2.l = null;
                cVar2.m = null;
            }
            IAlog.a("MediaPlayerController: fetching video frame success!", new Object[0]);
        } else {
            com.fyber.inneractive.sdk.player.b bVar2 = (com.fyber.inneractive.sdk.player.b) aVar;
            com.fyber.inneractive.sdk.player.c cVar3 = bVar2.a;
            if (cVar3.m != null) {
                cVar3.a((Bitmap) null);
                com.fyber.inneractive.sdk.player.c cVar4 = bVar2.a;
                cVar4.l = null;
                cVar4.m = null;
            }
            IAlog.a("MediaPlayerController: fetching video frame failed!", new Object[0]);
        }
        this.b = null;
    }
}
