package com.bytedance.sdk.openadsdk.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import com.bytedance.sdk.component.b.a.e;
import com.bytedance.sdk.component.b.a.f;
import com.bytedance.sdk.component.b.a.i;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.n;
import com.bytedance.sdk.component.b.a.o;
import java.io.BufferedInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DefaultNetWork.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements INetWork {
    protected k a;
    protected k b;

    public a() {
        k.a aVar = new k.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.a = aVar.a(10L, timeUnit).b(10L, timeUnit).c(10L, timeUnit).a();
        this.b = new k.a().a(10L, timeUnit).b(30L, timeUnit).c(30L, timeUnit).a();
    }

    private Map<String, String> a(f fVar) {
        if (fVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < fVar.a(); i++) {
            map.put(fVar.a(i), fVar.b(i));
        }
        return map;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doGet(String str) throws Exception {
        o oVarA = this.a.a(new m.a().a().a(str).b()).a();
        return new Response(a(oVarA.g()), oVarA.c() == 200 ? oVarA.f().b() : null, oVarA.c(), oVarA.e());
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doPost(String str, String str2) throws Exception {
        o oVarA = this.a.a(new m.a().a(str).a(n.a(i.a("application/json; charset=utf-8"), str2)).b()).a();
        return new Response(a(oVarA.g()), oVarA.c() == 200 ? oVarA.f().b() : null, oVarA.c(), oVarA.e());
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public Response doPost(String str, List<Pair<String, String>> list) throws Exception {
        e.a aVar = new e.a();
        if (list != null) {
            for (Pair<String, String> pair : list) {
                aVar.a((String) pair.first, (String) pair.second);
            }
        }
        o oVarA = this.a.a(new m.a().a(str).a((n) aVar.a()).b()).a();
        return new Response(a(oVarA.g()), oVarA.c() == 200 ? oVarA.f().b() : null, oVarA.c(), oVarA.e());
    }

    @Override // com.bykv.vk.openvk.preload.geckox.net.INetWork
    public void downloadFile(String str, long j, BufferOutputStream bufferOutputStream) throws Exception {
        Exception e2;
        int iC;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                o oVarA = this.b.a(new m.a().a().a(str).b()).a();
                iC = oVarA.c();
                try {
                    bufferedInputStream = new BufferedInputStream(oVarA.f().c());
                } catch (Exception e3) {
                    e2 = e3;
                }
            } catch (Exception e4) {
                e2 = e4;
                iC = 0;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int i = bufferedInputStream.read(bArr, 0, 2048);
                if (i == -1) {
                    CloseableUtils.close(bufferedInputStream);
                    return;
                }
                bufferOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e5) {
            e2 = e5;
            bufferedInputStream2 = bufferedInputStream;
            throw new RuntimeException("downloadFile failed, code: " + iC + ", url:" + str + ", caused by:" + e2.getMessage(), e2);
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            CloseableUtils.close(bufferedInputStream2);
            throw th;
        }
    }
}
