package com.bykv.vk.openvk.component.video.a.b.e;

import com.bykv.vk.openvk.component.video.a.b.i;
import com.bytedance.sdk.component.b.a.o;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: VolleyResponseWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends a {
    private o c;

    public f(o oVar, e eVar) {
        com.bytedance.sdk.component.b.a.f fVarG;
        this.c = oVar;
        this.a = new ArrayList();
        if (oVar != null && (fVarG = oVar.g()) != null) {
            for (int i = 0; i < fVarG.a(); i++) {
                this.a.add(new i.b(fVarG.a(i), fVarG.b(i)));
            }
        }
        this.b = eVar;
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public int a() {
        return this.c.c();
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public String a(String str, String str2) {
        return a(str) != null ? a(str).b : str2;
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public boolean b() {
        return this.c.c() >= 200 && this.c.c() < 300;
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public List<i.b> c() {
        return this.a;
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public InputStream d() {
        return this.c.f().c();
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public String e() {
        o oVar = this.c;
        return (oVar == null || oVar.h() == null) ? "http/1.1" : this.c.h().toString();
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.a
    public String f() {
        return a(this.c.c());
    }
}
