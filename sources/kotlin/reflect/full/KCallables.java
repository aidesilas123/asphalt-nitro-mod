package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;

/* JADX INFO: compiled from: KCallables.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KCallables {

    /* JADX INFO: compiled from: KCallables.kt */
    @DebugMetadata(c = "kotlin.reflect.full.KCallables", f = "KCallables.kt", i = {0, 0}, l = {55}, m = "callSuspend", n = {"$this$callSuspend", "args"}, s = {"L$0", "L$1"})
    static final class a extends ContinuationImpl {
        /* synthetic */ Object a;
        int b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object f8978d;

        a(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.b |= Integer.MIN_VALUE;
            return KCallables.callSuspend(null, null, this);
        }
    }

    /* JADX INFO: compiled from: KCallables.kt */
    @DebugMetadata(c = "kotlin.reflect.full.KCallables", f = "KCallables.kt", i = {0, 0, 0}, l = {73}, m = "callSuspendBy", n = {"$this$callSuspendBy", "args", "kCallable"}, s = {"L$0", "L$1", "L$2"})
    static final class b extends ContinuationImpl {
        /* synthetic */ Object a;
        int b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object f8979d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f8980e;

        b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.b |= Integer.MIN_VALUE;
            return KCallables.callSuspendBy(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object callSuspend(kotlin.reflect.KCallable<? extends R> r4, java.lang.Object[] r5, kotlin.coroutines.Continuation<? super R> r6) {
        /*
            boolean r0 = r6 instanceof kotlin.reflect.full.KCallables.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlin.reflect.full.KCallables$a r0 = (kotlin.reflect.full.KCallables.a) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            kotlin.reflect.full.KCallables$a r0 = new kotlin.reflect.full.KCallables$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.b
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r4 = r0.f8978d
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            java.lang.Object r4 = r0.c
            kotlin.reflect.KCallable r4 = (kotlin.reflect.KCallable) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L7c
        L31:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.isSuspend()
            if (r6 != 0) goto L4c
            int r6 = r5.length
            java.lang.Object[] r5 = java.util.Arrays.copyOf(r5, r6)
            java.lang.Object r4 = r4.call(r5)
            return r4
        L4c:
            boolean r6 = r4 instanceof kotlin.reflect.KFunction
            if (r6 == 0) goto L9e
            r0.c = r4
            r0.f8978d = r5
            r0.b = r3
            kotlin.jvm.internal.n0 r6 = new kotlin.jvm.internal.n0
            r2 = 2
            r6.<init>(r2)
            r6.b(r5)
            r6.a(r0)
            int r5 = r6.c()
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.Object[] r5 = r6.d(r5)
            java.lang.Object r6 = r4.call(r5)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r6 != r5) goto L79
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L79:
            if (r6 != r1) goto L7c
            return r1
        L7c:
            kotlin.reflect.KType r5 = r4.getReturnType()
            kotlin.reflect.c r5 = r5.d()
            java.lang.Class<kotlin.v> r0 = kotlin.v.class
            kotlin.reflect.KClass r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L9d
            kotlin.reflect.KType r4 = r4.getReturnType()
            boolean r4 = r4.n()
            if (r4 != 0) goto L9d
            kotlin.v r4 = kotlin.v.a
            return r4
        L9d:
            return r6
        L9e:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "Cannot callSuspend on a property "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = ": suspend properties are not supported yet"
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.full.KCallables.callSuspend(kotlin.reflect.KCallable, java.lang.Object[], kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object callSuspendBy(kotlin.reflect.KCallable<? extends R> r4, java.util.Map<kotlin.reflect.KParameter, ? extends java.lang.Object> r5, kotlin.coroutines.Continuation<? super R> r6) throws kotlin.reflect.full.a {
        /*
            boolean r0 = r6 instanceof kotlin.reflect.full.KCallables.b
            if (r0 == 0) goto L13
            r0 = r6
            kotlin.reflect.full.KCallables$b r0 = (kotlin.reflect.full.KCallables.b) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            kotlin.reflect.full.KCallables$b r0 = new kotlin.reflect.full.KCallables$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.b
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r4 = r0.f8980e
            kotlin.reflect.jvm.internal.KCallableImpl r4 = (kotlin.reflect.jvm.internal.KCallableImpl) r4
            java.lang.Object r4 = r0.f8979d
            java.util.Map r4 = (java.util.Map) r4
            java.lang.Object r4 = r0.c
            kotlin.reflect.KCallable r4 = (kotlin.reflect.KCallable) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6d
        L35:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3d:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.isSuspend()
            if (r6 != 0) goto L4b
            java.lang.Object r4 = r4.callBy(r5)
            return r4
        L4b:
            boolean r6 = r4 instanceof kotlin.reflect.KFunction
            if (r6 == 0) goto La6
            kotlin.reflect.jvm.internal.KCallableImpl r6 = kotlin.reflect.jvm.internal.UtilKt.asKCallableImpl(r4)
            if (r6 == 0) goto L8f
            r0.c = r4
            r0.f8979d = r5
            r0.f8980e = r6
            r0.b = r3
            java.lang.Object r6 = r6.o(r5, r0)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r6 != r5) goto L6a
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L6a:
            if (r6 != r1) goto L6d
            return r1
        L6d:
            kotlin.reflect.KType r5 = r4.getReturnType()
            kotlin.reflect.c r5 = r5.d()
            java.lang.Class<kotlin.v> r0 = kotlin.v.class
            kotlin.reflect.KClass r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L8e
            kotlin.reflect.KType r4 = r4.getReturnType()
            boolean r4 = r4.n()
            if (r4 != 0) goto L8e
            kotlin.v r4 = kotlin.v.a
            return r4
        L8e:
            return r6
        L8f:
            kotlin.reflect.jvm.internal.o r5 = new kotlin.reflect.jvm.internal.o
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "This callable does not support a default call: "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        La6:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "Cannot callSuspendBy on a property "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = ": suspend properties are not supported yet"
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.full.KCallables.callSuspendBy(kotlin.reflect.KCallable, java.util.Map, kotlin.coroutines.d):java.lang.Object");
    }

    public static /* synthetic */ void extensionReceiverParameter$annotations(KCallable kCallable) {
    }

    public static final KParameter findParameterByName(KCallable<?> findParameterByName, String name) {
        Intrinsics.checkParameterIsNotNull(findParameterByName, "$this$findParameterByName");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Iterator<T> it = findParameterByName.getParameters().iterator();
        Object obj = null;
        boolean z = false;
        Object obj2 = null;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (Intrinsics.areEqual(((KParameter) next).getName(), name)) {
                    if (z) {
                        break;
                    }
                    z = true;
                    obj2 = next;
                }
            } else if (z) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    public static final KParameter getExtensionReceiverParameter(KCallable<?> extensionReceiverParameter) {
        Intrinsics.checkParameterIsNotNull(extensionReceiverParameter, "$this$extensionReceiverParameter");
        Iterator<T> it = extensionReceiverParameter.getParameters().iterator();
        Object obj = null;
        Object obj2 = null;
        boolean z = false;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (((KParameter) next).getKind() == KParameter.Kind.b) {
                    if (z) {
                        break;
                    }
                    obj2 = next;
                    z = true;
                }
            } else if (z) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    public static final KParameter getInstanceParameter(KCallable<?> instanceParameter) {
        Intrinsics.checkParameterIsNotNull(instanceParameter, "$this$instanceParameter");
        Iterator<T> it = instanceParameter.getParameters().iterator();
        Object obj = null;
        Object obj2 = null;
        boolean z = false;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (((KParameter) next).getKind() == KParameter.Kind.a) {
                    if (z) {
                        break;
                    }
                    obj2 = next;
                    z = true;
                }
            } else if (z) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    public static final List<KParameter> getValueParameters(KCallable<?> valueParameters) {
        Intrinsics.checkParameterIsNotNull(valueParameters, "$this$valueParameters");
        List<KParameter> parameters = valueParameters.getParameters();
        ArrayList arrayList = new ArrayList();
        for (Object obj : parameters) {
            if (((KParameter) obj).getKind() == KParameter.Kind.c) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ void instanceParameter$annotations(KCallable kCallable) {
    }

    public static /* synthetic */ void valueParameters$annotations(KCallable kCallable) {
    }
}
