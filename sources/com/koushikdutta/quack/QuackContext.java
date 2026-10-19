package com.koushikdutta.quack;

import java.io.Closeable;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.UndeclaredThrowableException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class QuackContext implements Closeable {
    static Memoize<Method> interfaceMethods;
    static Memoize<Constructor> javaObjectConstructorCandidates;
    static Memoize<Field> javaObjectFields;
    static Memoize<Method> javaObjectGetter;
    static Memoize<Method> javaObjectMethodCandidates;
    static Memoize<Boolean> javaObjectMethods;
    static Memoize<Method> javaObjectSetter;
    private final Map<Class, QuackCoercion> JavaScriptToJavaCoercions;
    final Map<Method, QuackMethodCoercion> JavaScriptToJavaMethodCoercions;
    private final Map<Class, QuackCoercion> JavaToJavascriptCoercions;
    final Map<Method, QuackMethodCoercion> JavaToJavascriptMethodCoercions;
    private long context;
    private Object[] empty;
    final ArrayList<Long> finalizationQueue;
    private QuackInvocationHandlerWrapper invocationHandlerWrapper;
    private Executor jobExecutor;
    private final WeakExactHashMap<Object, Object> nativeMappings = new WeakExactHashMap<>();
    private long totalElapsedScriptExecutionMs;
    private boolean useQuickJS;

    public interface Catcher {
        JavaScriptObject doCatch(Thrower thrower);
    }

    public interface JavaMethodReference<T> {
        void invoke(T t);
    }

    public interface JavaMethodReference0<T, A> {
        void invoke(T t, A a);
    }

    public interface JavaMethodReference1<T, A, B> {
        void invoke(T t, A a, B b);
    }

    public interface JavaMethodReference2<T, A, B, C> {
        void invoke(T t, A a, B b, C c);
    }

    public interface JavaMethodReference3<T, A, B, C, D> {
        void invoke(T t, A a, B b, C c, D d2);
    }

    public interface JavaMethodReference4<T, A, B, C, D, E> {
        void invoke(T t, A a, B b, C c, D d2, E e2);
    }

    public static class MethodException extends Exception {
        private static final long serialVersionUID = -1432377890337490927L;
        Method method;

        public MethodException(Method method) {
            this.method = method;
        }
    }

    public interface Thrower {
        void doThrow();
    }

    static {
        try {
            System.loadLibrary("quack");
        } catch (UnsatisfiedLinkError unused) {
        }
        javaObjectFields = new Memoize<>();
        javaObjectMethods = new Memoize<>();
        javaObjectGetter = new Memoize<>();
        javaObjectSetter = new Memoize<>();
        javaObjectMethodCandidates = new Memoize<>();
        javaObjectConstructorCandidates = new Memoize<>();
        interfaceMethods = new Memoize<>();
    }

    private QuackContext(final boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.JavaScriptToJavaCoercions = linkedHashMap;
        this.JavaToJavascriptCoercions = new LinkedHashMap();
        this.JavaScriptToJavaMethodCoercions = new LinkedHashMap();
        this.JavaToJavascriptMethodCoercions = new LinkedHashMap();
        this.finalizationQueue = new ArrayList<>();
        this.empty = new Object[0];
        linkedHashMap.put(Enum.class, new QuackCoercion() { // from class: com.koushikdutta.quack.y
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$3(cls, obj);
            }
        });
        putJavaScriptToJavaCoercion(Byte.class, new QuackCoercion() { // from class: com.koushikdutta.quack.k0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return Byte.valueOf(obj instanceof Number ? ((Number) obj).byteValue() : obj instanceof String ? Byte.parseByte(obj.toString()) : ((Byte) obj).byteValue());
            }
        });
        linkedHashMap.put(Byte.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.p
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$5(cls, obj);
            }
        });
        putJavaToJavaScriptCoercion(Byte.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.o
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return Integer.valueOf(((Byte) obj).intValue());
            }
        });
        putJavaToJavaScriptCoercion(Byte.class, new QuackCoercion() { // from class: com.koushikdutta.quack.b0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return Integer.valueOf(((Byte) obj).intValue());
            }
        });
        linkedHashMap.put(Short.class, new QuackCoercion() { // from class: com.koushikdutta.quack.t
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$8(cls, obj);
            }
        });
        linkedHashMap.put(Short.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.l
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$9(cls, obj);
            }
        });
        putJavaToJavaScriptCoercion(Short.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.d0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return Integer.valueOf(((Short) obj).intValue());
            }
        });
        putJavaToJavaScriptCoercion(Short.class, new QuackCoercion() { // from class: com.koushikdutta.quack.w
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return Integer.valueOf(((Short) obj).intValue());
            }
        });
        linkedHashMap.put(Integer.class, new QuackCoercion() { // from class: com.koushikdutta.quack.n
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$12(cls, obj);
            }
        });
        linkedHashMap.put(Integer.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.z
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$13(cls, obj);
            }
        });
        linkedHashMap.put(Long.class, new QuackCoercion() { // from class: com.koushikdutta.quack.a0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls, Object obj) {
                return QuackContext.lambda$new$14(cls, obj);
            }
        });
        Class cls = Long.TYPE;
        linkedHashMap.put(cls, new QuackCoercion() { // from class: com.koushikdutta.quack.q
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls2, Object obj) {
                return QuackContext.lambda$new$15(cls2, obj);
            }
        });
        if (!z) {
            putJavaToJavaScriptCoercion(cls, new QuackCoercion() { // from class: com.koushikdutta.quack.m
                @Override // com.koushikdutta.quack.QuackCoercion
                public final Object coerce(Class cls2, Object obj) {
                    return ((Long) obj).toString();
                }
            });
            putJavaToJavaScriptCoercion(Long.class, new QuackCoercion() { // from class: com.koushikdutta.quack.e0
                @Override // com.koushikdutta.quack.QuackCoercion
                public final Object coerce(Class cls2, Object obj) {
                    return ((Long) obj).toString();
                }
            });
        }
        linkedHashMap.put(Float.class, new QuackCoercion() { // from class: com.koushikdutta.quack.s
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls2, Object obj) {
                return QuackContext.lambda$new$18(cls2, obj);
            }
        });
        Class cls2 = Float.TYPE;
        linkedHashMap.put(cls2, new QuackCoercion() { // from class: com.koushikdutta.quack.f0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return QuackContext.lambda$new$19(cls3, obj);
            }
        });
        putJavaToJavaScriptCoercion(cls2, new QuackCoercion() { // from class: com.koushikdutta.quack.k
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return Double.valueOf(((Float) obj).doubleValue());
            }
        });
        putJavaToJavaScriptCoercion(Float.class, new QuackCoercion() { // from class: com.koushikdutta.quack.g0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return Double.valueOf(((Float) obj).doubleValue());
            }
        });
        linkedHashMap.put(Double.class, new QuackCoercion() { // from class: com.koushikdutta.quack.l0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return QuackContext.lambda$new$22(cls3, obj);
            }
        });
        linkedHashMap.put(Double.TYPE, new QuackCoercion() { // from class: com.koushikdutta.quack.x
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return QuackContext.lambda$new$23(cls3, obj);
            }
        });
        putJavaToJavaScriptCoercion(Enum.class, new QuackCoercion() { // from class: com.koushikdutta.quack.h0
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return ((Enum) obj).toString();
            }
        });
        putJavaToJavaScriptCoercion(ByteBuffer.class, new QuackCoercion() { // from class: com.koushikdutta.quack.u
            @Override // com.koushikdutta.quack.QuackCoercion
            public final Object coerce(Class cls3, Object obj) {
                return QuackContext.lambda$new$25(z, cls3, (ByteBuffer) obj);
            }
        });
    }

    private static native Object call(long j, long j2, Object... objArr);

    private static native Object callConstructor(long j, long j2, Object... objArr);

    private static native Object callMethod(long j, long j2, Object obj, Object... objArr);

    private static native Object callProperty(long j, long j2, Object obj, Object... objArr);

    private static Object coerceJavaScriptToJava(Map<Class, QuackCoercion> map, Object obj, Class<?> cls) {
        QuackCoercion quackCoercion = map.get(cls);
        if (quackCoercion != null) {
            return quackCoercion.coerce(cls, obj);
        }
        Iterator<Map.Entry<Class, QuackCoercion>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next().getKey())) {
                throw new AssertionError("Superclass converter not implemented.");
            }
        }
        for (Map.Entry<Class, QuackCoercion> entry : map.entrySet()) {
            if (entry.getKey().isAssignableFrom(cls)) {
                return entry.getValue().coerce(cls, obj);
            }
        }
        return null;
    }

    private static Object coerceJavaToJavaScript(Map<Class, QuackCoercion> map, Object obj, Class<?> cls) {
        QuackCoercion quackCoercion = map.get(cls);
        if (quackCoercion != null) {
            return quackCoercion.coerce(cls, obj);
        }
        for (Map.Entry<Class, QuackCoercion> entry : map.entrySet()) {
            if (entry.getKey().isAssignableFrom(cls)) {
                return entry.getValue().coerce(cls, obj);
            }
        }
        return null;
    }

    private static native JavaScriptObject compileFunction(long j, String str, String str2);

    private static native void cooperateDebugger(long j);

    public static QuackContext create() {
        return create(true);
    }

    public static QuackContext create(boolean z) {
        QuackContext quackContext = new QuackContext(z);
        long jCreateContext = createContext(quackContext, z);
        if (jCreateContext == 0) {
            throw new OutOfMemoryError("Cannot create Duktape instance");
        }
        quackContext.context = jCreateContext;
        quackContext.useQuickJS = z;
        return quackContext;
    }

    private static native long createContext(QuackContext quackContext, boolean z);

    private static <T> T createMethodInterceptProxy(Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.koushikdutta.quack.v
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return QuackContext.throwInvokedMethod(obj, method, objArr);
            }
        });
    }

    private static native void debuggerAppNotify(long j, Object... objArr);

    private static native void destroyContext(long j);

    private static native Object evaluate(long j, String str, String str2);

    private static native Object evaluateModule(long j, String str, String str2);

    private synchronized void finalizeJavaScriptObjects() {
        synchronized (this.finalizationQueue) {
            if (this.finalizationQueue.isEmpty()) {
                return;
            }
            long[] jArr = new long[this.finalizationQueue.size()];
            for (int i = 0; i < this.finalizationQueue.size(); i++) {
                jArr[i] = this.finalizationQueue.get(i).longValue();
            }
            this.finalizationQueue.clear();
            long j = this.context;
            if (j == 0) {
                return;
            }
            finalizeJavaScriptObjects(j, jArr);
        }
    }

    private static native void finalizeJavaScriptObjects(long j, long[] jArr);

    private static native JavaScriptObject getGlobalObject(long j);

    private static native long getHeapSize(long j);

    public static <T, A> Method getInterfaceMethod(Class<T> cls, JavaMethodReference0<T, A> javaMethodReference0) {
        return invokeMethodReferenceProxy(cls, javaMethodReference0);
    }

    public static <T, A, B> Method getInterfaceMethod(Class<T> cls, JavaMethodReference1<T, A, B> javaMethodReference1) {
        return invokeMethodReferenceProxy(cls, javaMethodReference1);
    }

    public static <T, A, B, C> Method getInterfaceMethod(Class<T> cls, JavaMethodReference2<T, A, B, C> javaMethodReference2) {
        return invokeMethodReferenceProxy(cls, javaMethodReference2);
    }

    public static <T, A, B, C, D> Method getInterfaceMethod(Class<T> cls, JavaMethodReference3<T, A, B, C, D> javaMethodReference3) {
        return invokeMethodReferenceProxy(cls, javaMethodReference3);
    }

    public static <T, A, B, C, D, E> Method getInterfaceMethod(Class<T> cls, JavaMethodReference4<T, A, B, C, D, E> javaMethodReference4) {
        return invokeMethodReferenceProxy(cls, javaMethodReference4);
    }

    public static <T> Method getInterfaceMethod(Class<T> cls, JavaMethodReference<T> javaMethodReference) {
        return invokeMethodReferenceProxy(cls, javaMethodReference);
    }

    public static Method getInterfaceMethod(final Method method) {
        return interfaceMethods.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.j0
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return QuackContext.lambda$getInterfaceMethod$2(method);
            }
        }, method);
    }

    private static native Object getKeyInteger(long j, long j2, int i);

    private static native Object getKeyObject(long j, long j2, Object obj);

    private static native Object getKeyString(long j, long j2, String str);

    private static Method getLambdaMethod(Class cls) {
        if (!cls.isInterface()) {
            return null;
        }
        Method method = null;
        for (Method method2 : cls.getMethods()) {
            if (!Modifier.isStatic(method2.getModifiers())) {
                if (method != null) {
                    return null;
                }
                method = method2;
            }
        }
        return method;
    }

    private long getNativePointer(QuackJavaScriptObject quackJavaScriptObject) {
        if (quackJavaScriptObject.getNativeContext() != this.context) {
            return 0L;
        }
        return quackJavaScriptObject.getNativePointer();
    }

    private synchronized void handlePostInvocation() {
        if (hasPostInvocationTasks()) {
            Executor executor = this.jobExecutor;
            if (executor == null) {
                runPostInvocation();
            } else {
                executor.execute(new Runnable() { // from class: com.koushikdutta.quack.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.runPostInvocation();
                    }
                });
            }
        }
    }

    private static native boolean hasPendingJobs(long j);

    private synchronized boolean hasPostInvocationTasks() {
        synchronized (this.finalizationQueue) {
            if (!this.finalizationQueue.isEmpty()) {
                return true;
            }
            return hasPendingJobs(this.context);
        }
    }

    private static <T> Method invokeMethodReferenceProxy(Class<T> cls, Object obj) {
        try {
            if (obj.getClass().getDeclaredMethods().length != 1) {
                throw new Exception("expecting lambda with 1 method: getInterfaceMethod(Foo.class, Foo::bar)");
            }
            Method method = obj.getClass().getDeclaredMethods()[0];
            Object[] objArr = new Object[method.getParameterTypes().length];
            objArr[0] = createMethodInterceptProxy(cls);
            method.invoke(obj, objArr);
            throw new IllegalArgumentException("interface method was not called by lambda.");
        } catch (Exception e2) {
            if (e2 instanceof InvocationTargetException) {
                InvocationTargetException invocationTargetException = (InvocationTargetException) e2;
                boolean z = invocationTargetException.getTargetException() instanceof UndeclaredThrowableException;
                Throwable targetException = invocationTargetException.getTargetException();
                if (z) {
                    UndeclaredThrowableException undeclaredThrowableException = (UndeclaredThrowableException) targetException;
                    if (undeclaredThrowableException.getUndeclaredThrowable() instanceof MethodException) {
                        return ((MethodException) undeclaredThrowableException.getUndeclaredThrowable()).method;
                    }
                } else if (targetException instanceof NullPointerException) {
                    throw new IllegalArgumentException("lambdas with primitive arguments must be invoked with default values: getInterfaceMethod(Foo.class, thiz -> thiz.setInt(0))");
                }
            }
            throw new IllegalArgumentException(e2);
        }
    }

    private static native boolean isDebugging(long j);

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNumberClass(Class<?> cls) {
        return cls == Byte.TYPE || cls == Byte.class || cls == Short.TYPE || cls == Short.class || cls == Integer.TYPE || cls == Integer.class || cls == Long.TYPE || cls == Long.class || cls == Float.TYPE || cls == Float.class || cls == Double.TYPE || cls == Double.class;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$coerceJavaScriptToJava$1, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Object b(JavaScriptObject javaScriptObject, Object obj, Method method, Object[] objArr) {
        return coerceJavaScriptToJava(method.getReturnType(), javaScriptObject.call(JavaScriptObject.coerceArgs(this, method, objArr)));
    }

    static /* synthetic */ Method lambda$getInterfaceMethod$2(Method method) {
        boolean z;
        if (method.getDeclaringClass().isInterface()) {
            return method;
        }
        for (Class<?> cls : method.getDeclaringClass().getInterfaces()) {
            for (Method method2 : cls.getDeclaredMethods()) {
                if (method2.getParameterTypes().length == method.getParameterTypes().length && method2.getName().equals(method.getName()) && method2.getReturnType().isAssignableFrom(method.getReturnType())) {
                    int i = 0;
                    while (true) {
                        if (i >= method.getParameterTypes().length) {
                            z = true;
                            break;
                        }
                        if (!method2.getParameterTypes()[i].isAssignableFrom(method.getParameterTypes()[i])) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                    if (z) {
                        return method2;
                    }
                }
            }
        }
        return null;
    }

    static /* synthetic */ Object lambda$new$12(Class cls, Object obj) {
        int iIntValue;
        if (obj instanceof Number) {
            iIntValue = ((Number) obj).intValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            iIntValue = Integer.parseInt(obj.toString());
        }
        return Integer.valueOf(iIntValue);
    }

    static /* synthetic */ Object lambda$new$13(Class cls, Object obj) {
        int iIntValue;
        if (obj instanceof Number) {
            iIntValue = ((Number) obj).intValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            iIntValue = Integer.parseInt(obj.toString());
        }
        return Integer.valueOf(iIntValue);
    }

    static /* synthetic */ Object lambda$new$14(Class cls, Object obj) {
        long jLongValue;
        if (obj instanceof Number) {
            jLongValue = ((Number) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            jLongValue = Long.parseLong(obj.toString());
        }
        return Long.valueOf(jLongValue);
    }

    static /* synthetic */ Object lambda$new$15(Class cls, Object obj) {
        long jLongValue;
        if (obj instanceof Number) {
            jLongValue = ((Number) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            jLongValue = Long.parseLong(obj.toString());
        }
        return Long.valueOf(jLongValue);
    }

    static /* synthetic */ Object lambda$new$18(Class cls, Object obj) {
        float fFloatValue;
        if (obj instanceof Number) {
            fFloatValue = ((Number) obj).floatValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            fFloatValue = Float.parseFloat(obj.toString());
        }
        return Float.valueOf(fFloatValue);
    }

    static /* synthetic */ Object lambda$new$19(Class cls, Object obj) {
        float fFloatValue;
        if (obj instanceof Number) {
            fFloatValue = ((Number) obj).floatValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            fFloatValue = Float.parseFloat(obj.toString());
        }
        return Float.valueOf(fFloatValue);
    }

    static /* synthetic */ Object lambda$new$22(Class cls, Object obj) {
        double dDoubleValue;
        if (obj instanceof Number) {
            dDoubleValue = ((Number) obj).doubleValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            dDoubleValue = Double.parseDouble(obj.toString());
        }
        return Double.valueOf(dDoubleValue);
    }

    static /* synthetic */ Object lambda$new$23(Class cls, Object obj) {
        double dDoubleValue;
        if (obj instanceof Number) {
            dDoubleValue = ((Number) obj).doubleValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            dDoubleValue = Double.parseDouble(obj.toString());
        }
        return Double.valueOf(dDoubleValue);
    }

    static /* synthetic */ Object lambda$new$25(boolean z, Class cls, ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect() && z) {
            return byteBuffer;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(byteBuffer.remaining());
        byteBufferAllocateDirect.put(byteBuffer.duplicate());
        byteBufferAllocateDirect.flip();
        return byteBufferAllocateDirect;
    }

    static /* synthetic */ Enum lambda$new$3(Class cls, Object obj) {
        if (obj == null) {
            return null;
        }
        return Enum.valueOf(cls, obj.toString());
    }

    static /* synthetic */ Object lambda$new$5(Class cls, Object obj) {
        byte bByteValue;
        if (obj instanceof Number) {
            bByteValue = ((Number) obj).byteValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            bByteValue = Byte.parseByte(obj.toString());
        }
        return Byte.valueOf(bByteValue);
    }

    static /* synthetic */ Object lambda$new$8(Class cls, Object obj) {
        short sShortValue;
        if (obj instanceof Number) {
            sShortValue = ((Number) obj).shortValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            sShortValue = Short.parseShort(obj.toString());
        }
        return Short.valueOf(sShortValue);
    }

    static /* synthetic */ Object lambda$new$9(Class cls, Object obj) {
        short sShortValue;
        if (obj instanceof Number) {
            sShortValue = ((Number) obj).shortValue();
        } else {
            if (!(obj instanceof String)) {
                return obj;
            }
            sShortValue = Short.parseShort(obj.toString());
        }
        return Short.valueOf(sShortValue);
    }

    static /* synthetic */ void lambda$newError$26(Throwable th) throws Throwable {
        throw th;
    }

    static /* synthetic */ Object lambda$wrapObjectInvocationHandler$0(JavaScriptObject javaScriptObject, InvocationHandler invocationHandler, Object obj, Method method, Object[] objArr) {
        return method.getDeclaringClass() == Object.class ? method.invoke(javaScriptObject, objArr) : invocationHandler.invoke(obj, method, objArr);
    }

    private Object quackApply(QuackObject quackObject, Object obj, Object... objArr) {
        if (objArr == null) {
            objArr = this.empty;
        }
        return quackObject.callMethod(obj, objArr);
    }

    private Object quackConstruct(QuackObject quackObject, Object... objArr) {
        if (objArr == null) {
            objArr = this.empty;
        }
        return quackObject.construct(objArr);
    }

    private Object quackGet(QuackObject quackObject, Object obj) {
        return quackObject.get(obj);
    }

    private boolean quackHas(QuackObject quackObject, Object obj) {
        return quackObject.has(obj);
    }

    private boolean quackSet(QuackObject quackObject, Object obj, Object obj2) {
        return quackObject.set(obj, obj2);
    }

    private static native void runJobs(long j);

    private static native boolean setKeyInteger(long j, long j2, int i, Object obj);

    private static native boolean setKeyObject(long j, long j2, Object obj, Object obj2);

    private static native boolean setKeyString(long j, long j2, String str, Object obj);

    private static native String stringify(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static Object throwInvokedMethod(Object obj, Method method, Object[] objArr) throws MethodException {
        throw new MethodException(method);
    }

    private static native void waitForDebugger(long j, String str);

    private static InvocationHandler wrapObjectInvocationHandler(final JavaScriptObject javaScriptObject, final InvocationHandler invocationHandler) {
        return new InvocationHandler() { // from class: com.koushikdutta.quack.r
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return QuackContext.lambda$wrapObjectInvocationHandler$0(javaScriptObject, invocationHandler, obj, method, objArr);
            }
        };
    }

    public synchronized Object call(long j, Object... objArr) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return call(this.context, j, objArr);
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    public synchronized Object callConstructor(long j, Object... objArr) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return callConstructor(this.context, j, objArr);
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    public synchronized Object callMethod(long j, Object obj, Object... objArr) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return callMethod(this.context, j, obj, objArr);
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    public synchronized Object callProperty(long j, Object obj, Object... objArr) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return callProperty(this.context, j, obj, objArr);
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        long j = this.context;
        if (j != 0) {
            this.context = 0L;
            destroyContext(j);
        }
        this.nativeMappings.clear();
    }

    public Object[] coerceJavaArgsToJavaScript(Object... objArr) {
        if (objArr != null) {
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = coerceJavaToJavaScript(objArr[i]);
            }
        }
        return objArr;
    }

    public Object coerceJavaScriptToJava(Class<?> cls, Object obj) {
        Object object;
        if (obj == null) {
            return null;
        }
        while ((obj instanceof QuackJavaObject) && obj != (object = ((QuackJavaObject) obj).getObject())) {
            obj = object;
        }
        if (cls == null || cls.isInstance(obj)) {
            return obj;
        }
        if (cls == Boolean.TYPE && (obj instanceof Boolean)) {
            return obj;
        }
        Class<?> cls2 = Byte.TYPE;
        if (cls == cls2 && (obj instanceof Byte)) {
            return obj;
        }
        Class<?> cls3 = Short.TYPE;
        if (cls == cls3 && (obj instanceof Short)) {
            return obj;
        }
        Class<?> cls4 = Integer.TYPE;
        if (cls == cls4 && (obj instanceof Integer)) {
            return obj;
        }
        Class<?> cls5 = Long.TYPE;
        if (cls == cls5 && (obj instanceof Long)) {
            return obj;
        }
        Class<?> cls6 = Float.TYPE;
        if (cls == cls6 && (obj instanceof Float)) {
            return obj;
        }
        if (cls == Double.TYPE && (obj instanceof Double)) {
            return obj;
        }
        if ((cls == cls2 || cls == Byte.class) && (obj instanceof Double)) {
            return Byte.valueOf(((Double) obj).byteValue());
        }
        if ((cls == cls3 || cls == Short.class) && (obj instanceof Double)) {
            return Short.valueOf(((Double) obj).shortValue());
        }
        if ((cls == cls4 || cls == Integer.class) && (obj instanceof Double)) {
            return Integer.valueOf(((Double) obj).intValue());
        }
        if ((cls == cls6 || cls == Float.class) && (obj instanceof Double)) {
            return Float.valueOf(((Double) obj).floatValue());
        }
        if ((cls == cls5 || cls == Long.class) && (obj instanceof Double)) {
            return Long.valueOf(((Double) obj).longValue());
        }
        if (cls.isArray() && (obj instanceof JavaScriptObject)) {
            JavaScriptObject javaScriptObject = (JavaScriptObject) obj;
            int iIntValue = ((Number) javaScriptObject.get("length")).intValue();
            Class<?> componentType = cls.getComponentType();
            Object objNewInstance = Array.newInstance(componentType, iIntValue);
            for (int i = 0; i < iIntValue; i++) {
                Array.set(objNewInstance, i, coerceJavaScriptToJava(componentType, javaScriptObject.get(i)));
            }
            return objNewInstance;
        }
        Object objCoerceJavaScriptToJava = coerceJavaScriptToJava(this.JavaScriptToJavaCoercions, obj, cls);
        if (objCoerceJavaScriptToJava != null) {
            return objCoerceJavaScriptToJava;
        }
        if (!cls.isInterface() || !(obj instanceof JavaScriptObject)) {
            return obj;
        }
        final JavaScriptObject javaScriptObject2 = (JavaScriptObject) obj;
        return getLambdaMethod(cls) != null ? Proxy.newProxyInstance(QuackJavaScriptObject.class.getClassLoader(), new Class[]{QuackJavaScriptObject.class, cls}, javaScriptObject2.getWrappedInvocationHandler(new InvocationHandler() { // from class: com.koushikdutta.quack.i0
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method, Object[] objArr) {
                return this.a.b(javaScriptObject2, obj2, method, objArr);
            }
        })) : Proxy.newProxyInstance(QuackJavaScriptObject.class.getClassLoader(), new Class[]{QuackJavaScriptObject.class, cls}, javaScriptObject2.createInvocationHandler());
    }

    public Object coerceJavaToJavaScript(final Class cls, Object obj) {
        Object obj2;
        if (obj == null) {
            return null;
        }
        do {
            obj2 = obj;
            if (!(obj2 instanceof QuackJavaObject)) {
                break;
            }
            obj = ((QuackJavaObject) obj2).getObject();
        } while (obj2 != obj);
        Object objCoerceJavaToJavaScript = coerceJavaToJavaScript(this.JavaToJavascriptCoercions, obj2, cls);
        if (objCoerceJavaToJavaScript != null) {
            return objCoerceJavaToJavaScript;
        }
        Method lambdaMethod = getLambdaMethod(cls);
        return lambdaMethod != null ? new JavaMethodObject(this, obj2, lambdaMethod.getName()) { // from class: com.koushikdutta.quack.QuackContext.1
            @Override // com.koushikdutta.quack.JavaMethodObject, com.koushikdutta.quack.QuackObject
            public Object callMethod(Object obj3, Object... objArr) {
                return super.callMethod(obj3, objArr);
            }

            @Override // com.koushikdutta.quack.JavaMethodObject
            public Method[] getMethods(Object obj3) {
                return cls.getMethods();
            }
        } : obj2;
    }

    public Object coerceJavaToJavaScript(Object obj) {
        if (obj == null) {
            return null;
        }
        return coerceJavaToJavaScript(obj.getClass(), obj);
    }

    public synchronized JavaScriptObject compileFunction(String str, String str2) {
        return compileFunction(this.context, str, str2);
    }

    public synchronized void cooperateDebugger() {
        long j = this.context;
        if (j == 0) {
            return;
        }
        cooperateDebugger(j);
    }

    public synchronized void debuggerAppNotify(Object... objArr) {
        long j = this.context;
        if (j == 0) {
            return;
        }
        debuggerAppNotify(j, objArr);
    }

    public synchronized <T> T evaluate(Class<T> cls, String str, String str2) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return (T) coerceJavaScriptToJava(cls, evaluate(this.context, str, str2));
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    public synchronized Object evaluate(String str) {
        return evaluate(str, "?");
    }

    public synchronized <T> T evaluate(String str, Class<T> cls) {
        return (T) coerceJavaScriptToJava(cls, evaluate(str));
    }

    public synchronized Object evaluate(String str, String str2) {
        return evaluate((Class) null, str, str2);
    }

    public synchronized JavaScriptObject evaluateForJavaScriptObject(String str) {
        return (JavaScriptObject) evaluate(str, JavaScriptObject.class);
    }

    public synchronized JavaScriptObject evaluateModule(String str) {
        return evaluateModule(str, "?");
    }

    public synchronized JavaScriptObject evaluateModule(String str, String str2) {
        if (this.context == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            return (JavaScriptObject) coerceJavaScriptToJava(JavaScriptObject.class, evaluateModule(this.context, str, str2));
        } finally {
            this.totalElapsedScriptExecutionMs = ((System.nanoTime() / 1000000) - jNanoTime) + this.totalElapsedScriptExecutionMs;
            handlePostInvocation();
        }
    }

    public synchronized void finalize() {
        if (this.context != 0) {
            Logger.getLogger(QuackContext.class.getName()).warning("Duktape instance leaked!");
        }
        close();
    }

    public void finalizeJavaScriptObject(long j) {
        if (this.context == 0) {
            return;
        }
        synchronized (this.finalizationQueue) {
            this.finalizationQueue.add(Long.valueOf(j));
        }
    }

    public void gc() {
        for (int i = 0; i < 2; i++) {
            System.gc();
            System.gc();
            finalizeJavaScriptObjects();
            System.gc();
            System.gc();
            purgeNativeMappings();
        }
    }

    public synchronized JavaScriptObject getGlobalObject() {
        return getGlobalObject(this.context);
    }

    public synchronized long getHeapSize() {
        long j = this.context;
        if (j == 0) {
            return 0L;
        }
        return getHeapSize(j);
    }

    public Executor getJobExecutor() {
        return this.jobExecutor;
    }

    public synchronized Object getKeyInteger(long j, int i) {
        long j2 = this.context;
        if (j2 == 0) {
            return null;
        }
        return getKeyInteger(j2, j, i);
    }

    public synchronized Object getKeyObject(long j, Object obj) {
        long j2 = this.context;
        if (j2 == 0) {
            return null;
        }
        return getKeyObject(j2, j, obj);
    }

    public synchronized Object getKeyString(long j, String str) {
        long j2 = this.context;
        if (j2 == 0) {
            return null;
        }
        return getKeyString(j2, j, str);
    }

    public synchronized int getMappedNativeCount() {
        return this.nativeMappings.size();
    }

    public long getTotalScriptExecutionTime() {
        return this.totalElapsedScriptExecutionMs;
    }

    public InvocationHandler getWrappedInvocationHandler(JavaScriptObject javaScriptObject, InvocationHandler invocationHandler) {
        InvocationHandler invocationHandlerWrapInvocationHandler;
        InvocationHandler invocationHandlerWrapObjectInvocationHandler = wrapObjectInvocationHandler(javaScriptObject, invocationHandler);
        QuackInvocationHandlerWrapper quackInvocationHandlerWrapper = this.invocationHandlerWrapper;
        return (quackInvocationHandlerWrapper == null || (invocationHandlerWrapInvocationHandler = quackInvocationHandlerWrapper.wrapInvocationHandler(javaScriptObject, invocationHandlerWrapObjectInvocationHandler)) == null) ? invocationHandlerWrapObjectInvocationHandler : invocationHandlerWrapInvocationHandler;
    }

    public boolean isDebugging() {
        long j = this.context;
        if (j == 0) {
            return false;
        }
        return isDebugging(j);
    }

    public synchronized JavaScriptObject newError(final Throwable th) {
        if (this.context == 0) {
            return null;
        }
        try {
            return ((Catcher) evaluate("(function(t) { try { t(); } catch (e) { return e } })", Catcher.class)).doCatch(new Thrower() { // from class: com.koushikdutta.quack.c0
                @Override // com.koushikdutta.quack.QuackContext.Thrower
                public final void doThrow() throws Throwable {
                    QuackContext.lambda$newError$26(th);
                    throw null;
                }
            });
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized int purgeNativeMappings() {
        return this.nativeMappings.purge();
    }

    public synchronized <T> void putJavaScriptToJavaCoercion(Class<T> cls, QuackCoercion<T, Object> quackCoercion) {
        this.JavaScriptToJavaCoercions.put(cls, quackCoercion);
    }

    public synchronized void putJavaScriptToJavaMethodCoercion(Method method, QuackMethodCoercion quackMethodCoercion) {
        this.JavaScriptToJavaMethodCoercions.put(method, quackMethodCoercion);
        interfaceMethods.clear();
    }

    public synchronized <F> void putJavaToJavaScriptCoercion(Class<F> cls, QuackCoercion<Object, F> quackCoercion) {
        this.JavaToJavascriptCoercions.put(cls, quackCoercion);
    }

    public synchronized void putJavaToJavaScriptMethodCoercion(Method method, QuackMethodCoercion quackMethodCoercion) {
        this.JavaToJavascriptMethodCoercions.put(method, quackMethodCoercion);
        interfaceMethods.clear();
    }

    public synchronized void quackMapNative(Object obj, Object obj2) {
        this.nativeMappings.put(obj, obj2);
    }

    public Object quackUnmapNative(Object obj) {
        return this.nativeMappings.get(obj);
    }

    public void resetTotalScriptExecutionTime() {
        this.totalElapsedScriptExecutionMs = 0L;
    }

    public synchronized void runPostInvocation() {
        if (this.context == 0) {
            return;
        }
        finalizeJavaScriptObjects();
        runJobs(this.context);
    }

    public void setInvocationHandlerWrapper(QuackInvocationHandlerWrapper quackInvocationHandlerWrapper) {
        this.invocationHandlerWrapper = quackInvocationHandlerWrapper;
    }

    public void setJobExecutor(Executor executor) {
        this.jobExecutor = executor;
    }

    public synchronized boolean setKeyInteger(long j, int i, Object obj) {
        long j2 = this.context;
        if (j2 == 0) {
            return false;
        }
        return setKeyInteger(j2, j, i, obj);
    }

    public synchronized boolean setKeyObject(long j, Object obj, Object obj2) {
        long j2 = this.context;
        if (j2 == 0) {
            return false;
        }
        return setKeyObject(j2, j, obj, obj2);
    }

    public synchronized boolean setKeyString(long j, String str, Object obj) {
        long j2 = this.context;
        if (j2 == 0) {
            return false;
        }
        return setKeyString(j2, j, str, obj);
    }

    public synchronized String stringify(long j) {
        long j2 = this.context;
        if (j2 == 0) {
            return null;
        }
        return stringify(j2, j);
    }

    public synchronized void throwObject(Object obj) {
        if (this.context == 0) {
            return;
        }
        evaluateForJavaScriptObject("(function(t) { throw t; })").call(obj);
    }

    public void waitForDebugger(String str) {
        long j = this.context;
        if (j == 0) {
            return;
        }
        waitForDebugger(j, str);
    }
}
