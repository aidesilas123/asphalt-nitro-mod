package com.json.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cl {
    private d a;
    private dn b;

    static class a extends d {
        a(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.cl.d
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        final boolean mo486(hp hpVar) {
            return a().isInstance(hpVar.mo768());
        }
    }

    static class b extends d {
        b(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.cl.d
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo486(hp hpVar) {
            return a().isAssignableFrom(hpVar.mo767().getType());
        }
    }

    static class c extends d {
        c(Class cls) {
            super(cls);
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.cl.d
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo486(hp hpVar) {
            return a().equals(hpVar.mo767().getType());
        }
    }

    static abstract class d {
        private Class a;

        d(Class cls) {
            this.a = cls;
        }

        final Class a() {
            return this.a;
        }

        /* JADX INFO: renamed from: ﾇ */
        abstract boolean mo486(hp hpVar);
    }

    public static class e {
        private cl a = new cl();

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final e m487(Class cls) {
            this.a.a = new a(cls);
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final e m488(Class cls) {
            this.a.a = new b(cls);
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final e m489(dn dnVar) {
            this.a.b = dnVar;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final e m490(Class cls) {
            this.a.a = new c(cls);
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final cl m491() {
            return this.a;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m485(hp hpVar, dr drVar, cj cjVar, List<Object> list) {
        d dVar = this.a;
        if (dVar != null && !dVar.mo486(hpVar)) {
            return false;
        }
        if (this.b == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, hpVar);
        return this.b.m667(drVar, cjVar, arrayList).m678();
    }
}
