package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: InlineClassAwareCaller.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c<M extends Member> implements Caller<M> {
    private final a a;
    private final Caller<M> b;
    private final boolean c;

    /* JADX INFO: compiled from: InlineClassAwareCaller.kt */
    private static final class a {
        private final IntRange a;
        private final Method[] b;
        private final Method c;

        public a(IntRange argumentRange, Method[] unbox, Method method) {
            Intrinsics.checkParameterIsNotNull(argumentRange, "argumentRange");
            Intrinsics.checkParameterIsNotNull(unbox, "unbox");
            this.a = argumentRange;
            this.b = unbox;
            this.c = method;
        }

        public final IntRange a() {
            return this.a;
        }

        public final Method[] b() {
            return this.b;
        }

        public final Method c() {
            return this.c;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r8, kotlin.reflect.jvm.internal.calls.Caller<? extends M> r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.c.<init>(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.calls.Caller, boolean):void");
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public List<Type> a() {
        return this.b.a();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public M b() {
        return (M) this.b.b();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Object call(Object[] args) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke;
        Intrinsics.checkParameterIsNotNull(args, "args");
        a aVar = this.a;
        IntRange intRangeA = aVar.a();
        Method[] methodArrB = aVar.b();
        Method methodC = aVar.c();
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        if (objArrCopyOf == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        int b = intRangeA.getB();
        int c = intRangeA.getC();
        if (b <= c) {
            while (true) {
                Method method = methodArrB[b];
                Object objInvoke2 = args[b];
                if (method != null && objInvoke2 != null) {
                    objInvoke2 = method.invoke(objInvoke2, new Object[0]);
                }
                objArrCopyOf[b] = objInvoke2;
                if (b == c) {
                    break;
                }
                b++;
            }
        }
        Object objCall = this.b.call(objArrCopyOf);
        return (methodC == null || (objInvoke = methodC.invoke(null, objCall)) == null) ? objCall : objInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Type getReturnType() {
        return this.b.getReturnType();
    }
}
