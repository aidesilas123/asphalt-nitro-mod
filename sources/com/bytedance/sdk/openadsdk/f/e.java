package com.bytedance.sdk.openadsdk.f;

import com.bytedance.sdk.component.d.i;
import com.bytedance.sdk.component.d.s;
import com.bytedance.sdk.component.utils.l;
import com.json.o2;

/* JADX INFO: compiled from: StepTrackImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements s {
    private static int a;
    private long b = 0;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1791e;

    public e() {
        a++;
        this.f1791e = "image_request_" + a;
    }

    private String c(String str, i iVar) {
        com.bytedance.sdk.component.d.c.a aVarR;
        if (str != null) {
            switch (str) {
                case "success":
                    return "success";
                case "raw_cache":
                    return "raw cache";
                case "image_type":
                    return "image type：";
                case "disk_cache":
                    return "disk cache";
                case "decode":
                    return "decode";
                case "failed":
                    if (!(iVar instanceof com.bytedance.sdk.component.d.c.c) || (aVarR = ((com.bytedance.sdk.component.d.c.c) iVar).r()) == null) {
                        return o2.f.f6481e;
                    }
                    Throwable thC = aVarR.c();
                    StringBuilder sb = new StringBuilder();
                    sb.append("fail：code:");
                    sb.append(aVarR.a());
                    sb.append(", msg:");
                    sb.append(aVarR.b());
                    sb.append(", exception:");
                    sb.append(thC != null ? thC.getMessage() : "null \r\n");
                    return sb.toString();
                case "check_duplicate":
                    return "duplicate request";
                case "memory_cache":
                    return "memory cache";
                case "net_request":
                    return "net request";
                case "generate_key":
                    return "generate key:" + iVar.e();
                case "cache_policy":
                    return "cache policy";
            }
        }
        return str;
    }

    @Override // com.bytedance.sdk.component.d.s
    public void a(String str, i iVar) {
        if (!this.f1790d) {
            l.b("ImageLoaderStep", "start " + this.f1791e + " request:" + iVar.a() + ", width:" + iVar.b() + ",height:" + iVar.c());
            this.f1790d = true;
        }
        this.b = System.currentTimeMillis();
        l.b("ImageLoaderStep", this.f1791e + " start:" + c(str, iVar));
    }

    @Override // com.bytedance.sdk.component.d.s
    public void b(String str, i iVar) {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.b;
        this.c += jCurrentTimeMillis;
        l.b("ImageLoaderStep", this.f1791e + " end:" + c(str, iVar) + ",cost：" + jCurrentTimeMillis + " ms， total：" + this.c + "\r\n");
    }
}
