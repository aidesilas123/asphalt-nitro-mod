package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hl;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class hj {
    private b a;
    private hl b;
    private List<Field> c;

    final class a extends b {
        private /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(hj hjVar, String str) {
            super(hjVar);
            this.c = str;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hj.b
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final boolean mo735(Field field) {
            return field.getType().getName().toLowerCase().startsWith(this.c.toLowerCase());
        }
    }

    class b {
        private hl a;
        private int b;

        private b() {
        }

        /* synthetic */ b(hj hjVar) {
            this();
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final hl m736() {
            return this.a;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void m737(hl hlVar) {
            this.a = hlVar;
            this.b = hlVar.m740();
        }

        /* JADX INFO: renamed from: ﾒ */
        public boolean mo735(Field field) {
            if (this.a == null || (field.getModifiers() & this.a.m724()) != this.a.m724() || (field.getModifiers() & this.a.m726()) != 0 || this.a.m741().contains(field.getType())) {
                return false;
            }
            if (this.a.m743() ? field.getType().equals(this.a.m742()) : this.a.m742().isAssignableFrom(field.getType())) {
                int i = this.b;
                if (i == 0) {
                    return true;
                }
                this.b = i - 1;
            }
            return false;
        }
    }

    private void a(Class cls, hl hlVar, List<Field> list) {
        synchronized (hj.class) {
            if (this.a == null) {
                this.a = new b(this);
            }
            this.a.m737(hlVar);
            b(cls, this.a, list);
        }
    }

    private void b(Class cls, b bVar, List<Field> list) {
        for (Field field : c(cls, bVar.m736())) {
            if (bVar.mo735(field)) {
                field.setAccessible(true);
                list.add(field);
            }
        }
    }

    private static Field[] c(Class cls, hl hlVar) {
        if (hlVar != null && hlVar.m725()) {
            return m729(cls, hlVar.m725(), hlVar.m727(), null);
        }
        try {
            return cls.getDeclaredFields();
        } catch (Error unused) {
            return cls.getFields();
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Field[] m729(Class cls, boolean z, int i, List<String> list) {
        while (cls != null && !jw.m972(cls, list)) {
            cls = cls.getSuperclass();
        }
        Field[] fieldArrM968 = new Field[0];
        if (cls != null) {
            Field[] declaredFields = new Field[0];
            Field[] fields = new Field[0];
            try {
                declaredFields = cls.getDeclaredFields();
            } catch (Error unused) {
            }
            try {
                fields = cls.getFields();
            } catch (Error unused2) {
            }
            fieldArrM968 = jw.m968(declaredFields, fields);
            if (!z) {
                return fieldArrM968;
            }
            Class superclass = cls.getSuperclass();
            for (int i2 = 0; superclass != null && i2 != i; i2++) {
                try {
                    fieldArrM968 = jw.m968(fieldArrM968, superclass.getDeclaredFields());
                } catch (Error unused3) {
                }
                try {
                    fieldArrM968 = jw.m968(fieldArrM968, superclass.getFields());
                } catch (Error unused4) {
                }
                superclass = superclass.getSuperclass();
            }
        }
        return fieldArrM968;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static hl.c m730() {
        return new hl.c();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List<Field> m731(Class cls, hl hlVar) {
        ArrayList arrayList = new ArrayList();
        a(cls, hlVar, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Field m732(Class cls, hl hlVar) {
        synchronized (jt.class) {
            if (this.c == null) {
                this.c = new ArrayList();
            }
            this.c.clear();
            a(cls, hlVar, this.c);
            if (this.c.isEmpty()) {
                return null;
            }
            return this.c.get(0);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final <T> Field m733(Class cls, Class<T> cls2) {
        Field fieldM732;
        synchronized (jt.class) {
            if (this.b == null) {
                this.b = new hl();
            }
            this.b.m744(cls2);
            fieldM732 = m732(cls, this.b);
        }
        return fieldM732;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Field m734(Class cls, String str) {
        a aVar = new a(this, str);
        synchronized (hj.class) {
            if (this.c == null) {
                this.c = new ArrayList();
            }
            this.c.clear();
            b(cls, aVar, this.c);
            if (this.c.isEmpty()) {
                return null;
            }
            return this.c.get(0);
        }
    }
}
