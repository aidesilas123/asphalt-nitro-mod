package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static final f b = new f() { // from class: com.apm.insight.runtime.f.1
        Header a = null;

        @Override // com.apm.insight.runtime.f
        @Nullable
        public Object b(String str) {
            if (this.a == null) {
                this.a = Header.b(com.apm.insight.i.g());
            }
            return this.a.f().opt(str);
        }
    };
    private f a;

    f() {
        this(b);
    }

    f(f fVar) {
        this.a = null;
        this.a = fVar;
    }

    @Nullable
    public Object a(String str) {
        f fVar = this.a;
        if (fVar != null) {
            return fVar.a(str);
        }
        return null;
    }

    @Nullable
    public Object b(String str) {
        f fVar = this.a;
        if (fVar != null) {
            return fVar.b(str);
        }
        return null;
    }
}
