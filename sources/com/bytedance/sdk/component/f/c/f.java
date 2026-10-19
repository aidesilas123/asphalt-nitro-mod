package com.bytedance.sdk.component.f.c;

import com.bytedance.sdk.component.b.a.h;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import java.io.IOException;

/* JADX INFO: compiled from: TncHostInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements h {
    private int a;

    @Override // com.bytedance.sdk.component.b.a.h
    public o a(h.a aVar) throws IOException {
        IOException iOException;
        m mVarA = aVar.a();
        if (g.a().a(this.a).b() != null) {
            g.a().a(this.a).b().e();
        }
        String string = mVarA.b().toString();
        String strA = g.a().a(this.a).a(string);
        if (!string.equals(strA)) {
            mVarA = mVarA.g().a(strA).b();
        }
        o oVarA = null;
        try {
            iOException = null;
            oVarA = aVar.a(mVarA);
        } catch (Exception e2) {
            iOException = new IOException(e2.getMessage());
            g.a().a(this.a).a(mVarA, e2);
        }
        g.a().a(this.a).a(mVarA, oVarA);
        if (iOException == null) {
            return oVarA == null ? aVar.a(mVarA) : oVarA;
        }
        throw iOException;
    }

    public void a(int i) {
        this.a = i;
    }
}
