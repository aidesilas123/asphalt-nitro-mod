package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.k;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.b;

/* JADX INFO: compiled from: InternalUnderlyingValOfInlineClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class d implements Caller<Method> {
    private final Type a;
    private final Method b;
    private final List<Type> c;

    /* JADX INFO: compiled from: InternalUnderlyingValOfInlineClass.kt */
    public static final class a extends d implements kotlin.reflect.jvm.internal.calls.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f9036d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Method unboxMethod, Object obj) {
            super(unboxMethod, CollectionsKt__CollectionsKt.emptyList(), null);
            Intrinsics.checkParameterIsNotNull(unboxMethod, "unboxMethod");
            this.f9036d = obj;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkParameterIsNotNull(args, "args");
            d(args);
            return c(this.f9036d, args);
        }
    }

    /* JADX INFO: compiled from: InternalUnderlyingValOfInlineClass.kt */
    public static final class b extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method unboxMethod) {
            super(unboxMethod, CollectionsKt__CollectionsJVMKt.listOf(unboxMethod.getDeclaringClass()), null);
            Intrinsics.checkParameterIsNotNull(unboxMethod, "unboxMethod");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Object[] objArrCopyOfRange;
            Intrinsics.checkParameterIsNotNull(args, "args");
            d(args);
            Object obj = args[0];
            b.d dVar = kotlin.reflect.jvm.internal.calls.b.a;
            if (args.length <= 1) {
                objArrCopyOfRange = new Object[0];
            } else {
                objArrCopyOfRange = k.copyOfRange(args, 1, args.length);
                if (objArrCopyOfRange == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            return c(obj, objArrCopyOfRange);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d(Method method, List<? extends Type> list) {
        this.b = method;
        this.c = list;
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkExpressionValueIsNotNull(returnType, "unboxMethod.returnType");
        this.a = returnType;
    }

    public /* synthetic */ d(Method method, List list, n nVar) {
        this(method, list);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List<Type> a() {
        return this.c;
    }

    protected final Object c(Object obj, Object[] args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        return this.b.invoke(obj, Arrays.copyOf(args, args.length));
    }

    public void d(Object[] args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        Caller.DefaultImpls.checkArguments(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Method b() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.a;
    }
}
