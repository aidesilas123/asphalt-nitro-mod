package com.mbridge.msdk.foundation.same.net.stack;

import com.json.mediationsdk.config.VersionInfo;
import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import org.chromium.net.CronetEngine;
import org.chromium.net.UploadDataProviders;
import org.chromium.net.UrlRequest;

/* JADX INFO: compiled from: CronetStack.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements b {
    private CronetEngine a;
    private BlockingQueue<com.mbridge.msdk.foundation.same.net.a.b> b = new ArrayBlockingQueue(2, true);

    public a() {
        aa.d("CronetStack", "Cronet stack init.");
        this.a = com.mbridge.msdk.foundation.same.net.a.a.a().b();
    }

    private String a(j<?> jVar) {
        switch (jVar.a()) {
            case 0:
                return "GET";
            case 1:
                return "POST";
            case 2:
                return "PUT";
            case 3:
                return "DELETE";
            case 4:
                return VersionInfo.GIT_BRANCH;
            case 5:
                return "OPTIONS";
            case 6:
                return "TRACE";
            case 7:
                return "PATCH";
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private void a(UrlRequest urlRequest, j<?> jVar) {
        if (urlRequest != null) {
            urlRequest.cancel();
        }
        if (jVar != null) {
            jVar.c();
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.stack.b
    public final com.mbridge.msdk.foundation.same.net.f.b performRequest(j<?> jVar) throws IOException {
        TimeUnit timeUnit;
        com.mbridge.msdk.foundation.same.net.a.b bVarPoll;
        aa.d("CronetStack", "CronetStack request start : " + jVar.b() + " " + a(jVar));
        int iL = jVar.l();
        int iK = jVar.k();
        if (iL == 0) {
            iL = 30000;
        }
        if (iK == 0) {
            iK = 30000;
        }
        aa.d("CronetStack", "Cronet writeTimeout : " + iL + " readTimeout : " + iK);
        UrlRequest.Builder builderNewUrlRequestBuilder = this.a.newUrlRequestBuilder(jVar.b(), new com.mbridge.msdk.foundation.same.net.a.c(this.b), com.mbridge.msdk.foundation.same.net.a.a.a().c());
        int iH = jVar.h();
        int i = 4;
        if (iH == 1) {
            i = 2;
        } else if (iH != 3 && iH != 4) {
            i = 3;
        }
        UrlRequest.Builder builderAllowDirectExecutor = builderNewUrlRequestBuilder.setPriority(i).setHttpMethod(a(jVar)).allowDirectExecutor();
        if (jVar.e() != null) {
            for (Map.Entry<String, String> entry : jVar.e().entrySet()) {
                builderAllowDirectExecutor.addHeader(entry.getKey(), entry.getValue());
            }
        }
        if (jVar.f() != null) {
            builderAllowDirectExecutor.setUploadDataProvider(UploadDataProviders.create(jVar.f()), com.mbridge.msdk.foundation.same.net.a.a.a().c());
        }
        UrlRequest urlRequestBuild = builderAllowDirectExecutor.build();
        urlRequestBuild.start();
        try {
            BlockingQueue<com.mbridge.msdk.foundation.same.net.a.b> blockingQueue = this.b;
            long j = iL;
            timeUnit = TimeUnit.MILLISECONDS;
            bVarPoll = blockingQueue.poll(j, timeUnit);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            Thread.currentThread().interrupt();
        }
        if (bVarPoll == null) {
            a(urlRequestBuild, jVar);
            this.b.clear();
            aa.d("CronetStack", "Request cancel because request timeout");
            throw new IOException("request timeout.");
        }
        if (bVarPoll.a() == 0) {
            bVarPoll = this.b.poll(iK, timeUnit);
        }
        bVarB = bVarPoll.a() == 1 ? bVarPoll.b() : null;
        if (bVarPoll.a() == 2) {
            throw new IOException(bVarPoll.c());
        }
        if (bVarB == null) {
            a(urlRequestBuild, jVar);
            this.b.clear();
            aa.d("CronetStack", "response cancel because response timeout");
            throw new IOException("Response timeout.");
        }
        aa.d("CronetStack", "HttpResponse : " + bVarB.a() + " content : " + bVarB.c().toString());
        return bVarB;
    }
}
