package com.json.adqualitysdk.sdk.i;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ho {
    private di a;
    private ho b;

    static class a {
        private hn a;
        private int b;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void m764(hn hnVar) {
            this.a = hnVar;
            this.b = hnVar.m751();
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final hn m765() {
            return this.a;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final boolean m766(Method method) {
            if (this.a == null || (method.getModifiers() & this.a.m724()) != this.a.m724() || (method.getModifiers() & this.a.m726()) != 0 || this.a.m755().contains(method.getReturnType())) {
                return false;
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (this.a.m750() != -1 && this.a.m750() != parameterTypes.length) {
                return false;
            }
            List<Class> listM752 = this.a.m752();
            if (listM752 != null) {
                if (listM752.size() != parameterTypes.length) {
                    return false;
                }
                for (int i = 0; i < listM752.size(); i++) {
                    if (!listM752.get(i).equals(parameterTypes[i])) {
                        return false;
                    }
                }
            }
            if (this.a.m753() != null ? this.a.m754() ? method.getReturnType().equals(this.a.m753()) : this.a.m753().isAssignableFrom(method.getReturnType()) : true) {
                int i2 = this.b;
                if (i2 == 0) {
                    return true;
                }
                this.b = i2 - 1;
            }
            return false;
        }
    }

    public ho() {
    }

    public ho(di diVar, ho hoVar) {
        this.a = diVar;
        this.b = hoVar;
    }

    private static List<Method> a(Class cls, boolean z, int i) {
        Method[] methodArrM969 = new Method[0];
        if (cls != null) {
            methodArrM969 = jw.m969(cls.getDeclaredMethods(), cls.getMethods());
            if (!z) {
                return Arrays.asList(methodArrM969);
            }
            Class superclass = cls.getSuperclass();
            for (int i2 = 0; superclass != null && i2 != i; i2++) {
                methodArrM969 = jw.m969(jw.m969(methodArrM969, superclass.getDeclaredMethods()), superclass.getMethods());
                superclass = superclass.getSuperclass();
            }
        }
        return Arrays.asList(methodArrM969);
    }

    private static void b(Class cls, hn hnVar, List<Method> list) {
        a aVar = new a((byte) 0);
        aVar.m764(hnVar);
        c(cls, aVar, list);
    }

    private static void c(Class cls, a aVar, List<Method> list) {
        hn hnVarM765 = aVar.m765();
        for (Method method : (hnVarM765 == null || !hnVarM765.m725()) ? Arrays.asList(cls.getDeclaredMethods()) : a(cls, hnVarM765.m725(), hnVarM765.m727())) {
            if (aVar.m766(method)) {
                list.add(method);
            }
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Method m756(Class cls, hn hnVar) {
        ArrayList arrayList = new ArrayList();
        b(cls, hnVar, arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Method) arrayList.get(0);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<Method> m757(Class cls, hn hnVar) {
        ArrayList arrayList = new ArrayList();
        b(cls, hnVar, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m758() {
        return this.a.m652();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List<String> m759() {
        ArrayList arrayList = new ArrayList(this.a.m654());
        ho hoVar = this.b;
        if (hoVar != null) {
            arrayList.addAll(hoVar.m759());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final dk m760(String str) {
        dk dkVar;
        ho hoVar = this;
        do {
            dkVar = hoVar.a.m648().get(str);
            if (dkVar != null) {
                break;
            }
            hoVar = hoVar.b;
        } while (hoVar != null);
        return dkVar;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ho m761() {
        return this.b;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final dn m762(String str) {
        dn dnVar;
        ho hoVar = this;
        do {
            dnVar = hoVar.a.m651().get(str);
            if (dnVar != null) {
                break;
            }
            hoVar = hoVar.b;
        } while (hoVar != null);
        return dnVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final List<dg> m763() {
        ArrayList arrayList = new ArrayList(this.a.m649());
        ho hoVar = this.b;
        if (hoVar != null) {
            arrayList.addAll(hoVar.m763());
        }
        return arrayList;
    }
}
