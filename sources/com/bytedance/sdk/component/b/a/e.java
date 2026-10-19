package com.bytedance.sdk.component.b.a;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: FormBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends n {
    List<String> a;
    List<String> b;

    /* JADX INFO: compiled from: FormBody.java */
    public static final class a {
        private final List<String> a = new ArrayList();
        private final List<String> b = new ArrayList();

        public a a(String str, String str2) {
            this.a.add(str);
            this.b.add(str2);
            return this;
        }

        public e a() {
            return new e(this.a, this.b);
        }
    }

    e(List<String> list, List<String> list2) {
        this.a = list;
        this.b = list2;
    }
}
