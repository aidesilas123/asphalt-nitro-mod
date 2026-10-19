package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReflectJavaMember.kt */
/* JADX INFO: loaded from: classes5.dex */
final class a {
    private static C0522a a;
    public static final a b = new a();

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ReflectJavaMember.kt */
    public static final class C0522a {
        private final Method a;
        private final Method b;

        public C0522a(Method method, Method method2) {
            this.a = method;
            this.b = method2;
        }

        public final Method a() {
            return this.b;
        }

        public final Method b() {
            return this.a;
        }
    }

    private a() {
    }

    public final C0522a a(Member member) {
        Intrinsics.checkParameterIsNotNull(member, "member");
        Class<?> cls = member.getClass();
        try {
            return new C0522a(cls.getMethod("getParameters", new Class[0]), ReflectClassUtilKt.getSafeClassLoader(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new C0522a(null, null);
        }
    }

    public final List<String> b(Member member) throws IllegalAccessException, InvocationTargetException {
        Method methodA;
        Intrinsics.checkParameterIsNotNull(member, "member");
        C0522a c0522aA = a;
        if (c0522aA == null) {
            c0522aA = a(member);
            a = c0522aA;
        }
        Method methodB = c0522aA.b();
        if (methodB == null || (methodA = c0522aA.a()) == null) {
            return null;
        }
        Object objInvoke = methodB.invoke(member, new Object[0]);
        if (objInvoke == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<*>");
        }
        Object[] objArr = (Object[]) objInvoke;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Object objInvoke2 = methodA.invoke(obj, new Object[0]);
            if (objInvoke2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
            }
            arrayList.add((String) objInvoke2);
        }
        return arrayList;
    }
}
