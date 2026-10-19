package com.fyber.inneractive.sdk.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Base64;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h0 extends g0<Bitmap> {
    public h0(w<Bitmap> wVar, Context context, com.fyber.inneractive.sdk.cache.a<Bitmap> aVar) {
        super(wVar, context, aVar);
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [T, android.graphics.Bitmap] */
    @Override // com.fyber.inneractive.sdk.network.g0, com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        b0 b0Var = new b0();
        try {
            ?? A = com.fyber.inneractive.sdk.util.d0.a(jVar.c, a(map));
            if (A != 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                A.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                b0Var.a = A;
                b0Var.b = strEncodeToString;
            }
            return b0Var;
        } catch (Exception e2) {
            IAlog.a("failed parse cacheable network request", e2, new Object[0]);
            throw new a0(e2);
        }
    }
}
