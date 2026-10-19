package com.koushikdutta.quack;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class JavaScriptObject implements QuackObject, QuackJavaScriptObject {
    public final long context;
    public final long pointer;
    public final QuackContext quackContext;

    public JavaScriptObject(QuackContext quackContext, long j, long j2) {
        this.quackContext = quackContext;
        this.context = j;
        this.pointer = j2;
    }

    public static Object[] coerceArgs(QuackContext quackContext, Method method, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return objArr;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (objArr.length != parameterTypes.length) {
            throw new AssertionError("JavaScript.createInvocationHandler different args count?");
        }
        int length = parameterTypes.length;
        if (method.isVarArgs()) {
            length--;
        }
        for (int i = 0; i < length; i++) {
            objArr[i] = quackContext.coerceJavaToJavaScript(parameterTypes[i], objArr[i]);
        }
        if (!method.isVarArgs()) {
            return objArr;
        }
        Class<?> componentType = method.getParameterTypes()[length].getComponentType();
        ArrayList arrayList = new ArrayList(Arrays.asList(objArr).subList(0, length));
        Object obj = objArr[length];
        for (int i2 = 0; i2 < Array.getLength(obj); i2++) {
            arrayList.add(quackContext.coerceJavaScriptToJava(componentType, Array.get(obj, i2)));
        }
        return arrayList.toArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$createInvocationHandler$1, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Object a(Object obj, Method method, Object[] objArr) {
        Method interfaceMethod = QuackContext.getInterfaceMethod(method);
        QuackMethodCoercion quackMethodCoercion = this.quackContext.JavaToJavascriptMethodCoercions.get(interfaceMethod);
        if (quackMethodCoercion != null) {
            return quackMethodCoercion.invoke(interfaceMethod, this, objArr);
        }
        QuackProperty quackProperty = (QuackProperty) method.getAnnotation(QuackProperty.class);
        if (quackProperty != null) {
            if (objArr == null || objArr.length == 0) {
                return this.quackContext.coerceJavaScriptToJava(method.getReturnType(), get(quackProperty.name()));
            }
            set(quackProperty.name(), this.quackContext.coerceJavaScriptToJava(method.getParameterTypes()[0], objArr[0]));
            return null;
        }
        String name = method.getName();
        QuackMethodName quackMethodName = (QuackMethodName) method.getAnnotation(QuackMethodName.class);
        if (quackMethodName != null) {
            name = quackMethodName.name();
        }
        return this.quackContext.coerceJavaScriptToJava(method.getReturnType(), callProperty(name, coerceArgs(this.quackContext, method, objArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$getWrappedInvocationHandler$0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Object b(InvocationHandler invocationHandler, Object obj, Method method, Object[] objArr) {
        return method.getDeclaringClass() == QuackJavaScriptObject.class ? method.invoke(this, objArr) : invocationHandler.invoke(obj, method, objArr);
    }

    public JSValue asJSValue() {
        return new JSValue(this.quackContext, this);
    }

    public Object call(Object... objArr) {
        this.quackContext.coerceJavaArgsToJavaScript(objArr);
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.call(this.pointer, objArr));
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object callMethod(Object obj, Object... objArr) {
        this.quackContext.coerceJavaArgsToJavaScript(objArr);
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.callMethod(this.pointer, quackContext.coerceJavaToJavaScript(obj), objArr));
    }

    public Object callProperty(Object obj, Object... objArr) {
        this.quackContext.coerceJavaArgsToJavaScript(objArr);
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.callProperty(this.pointer, obj, objArr));
    }

    @Override // com.koushikdutta.quack.QuackObject
    public JavaScriptObject construct(Object... objArr) {
        return (JavaScriptObject) constructCoerced(JavaScriptObject.class, objArr);
    }

    public <T> T constructCoerced(Class<T> cls, Object... objArr) {
        this.quackContext.coerceJavaArgsToJavaScript(objArr);
        QuackContext quackContext = this.quackContext;
        return (T) quackContext.coerceJavaScriptToJava(cls, quackContext.callConstructor(this.pointer, objArr));
    }

    public InvocationHandler createInvocationHandler() {
        return getWrappedInvocationHandler(new InvocationHandler() { // from class: com.koushikdutta.quack.i
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return this.a.a(obj, method, objArr);
            }
        });
    }

    public void finalize() throws Throwable {
        super.finalize();
        QuackContext quackContext = this.quackContext;
        if (quackContext != null) {
            quackContext.finalizeJavaScriptObject(this.pointer);
        }
    }

    public Object get(int i) {
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.getKeyInteger(this.pointer, i));
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (Integer.valueOf(number.intValue()).equals(number)) {
                return get(number.intValue());
            }
        }
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.getKeyObject(this.pointer, quackContext.coerceJavaToJavaScript(obj)));
    }

    public Object get(String str) {
        QuackContext quackContext = this.quackContext;
        return quackContext.coerceJavaScriptToJava(null, quackContext.getKeyString(this.pointer, str));
    }

    @Override // com.koushikdutta.quack.QuackJavaScriptObject
    public JavaScriptObject getJavaScriptObject() {
        return this;
    }

    @Override // com.koushikdutta.quack.QuackJavaScriptObject
    public long getNativeContext() {
        return this.context;
    }

    @Override // com.koushikdutta.quack.QuackJavaScriptObject
    public long getNativePointer() {
        return this.pointer;
    }

    public InvocationHandler getWrappedInvocationHandler(final InvocationHandler invocationHandler) {
        return this.quackContext.getWrappedInvocationHandler(this, new InvocationHandler() { // from class: com.koushikdutta.quack.j
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return this.a.b(invocationHandler, obj, method, objArr);
            }
        });
    }

    @Override // com.koushikdutta.quack.QuackObject
    public /* synthetic */ boolean has(Object obj) {
        return m0.d(this, obj);
    }

    public <T> T proxyInterface(Class<T> cls, Class... clsArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(QuackJavaScriptObject.class);
        arrayList.add(cls);
        if (clsArr != null) {
            Collections.addAll(arrayList, clsArr);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), (Class[]) arrayList.toArray(new Class[0]), createInvocationHandler());
    }

    public boolean set(int i, Object obj) {
        return this.quackContext.setKeyInteger(this.pointer, i, obj);
    }

    @Override // com.koushikdutta.quack.QuackObject
    public boolean set(Object obj, Object obj2) {
        if (obj instanceof String) {
            return set((String) obj, obj2);
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (number.doubleValue() == number.intValue()) {
                return set(number.intValue(), obj2);
            }
        }
        return this.quackContext.setKeyObject(this.pointer, obj, obj2);
    }

    public boolean set(String str, Object obj) {
        return this.quackContext.setKeyString(this.pointer, str, obj);
    }

    public String stringify() {
        return this.quackContext.stringify(this.pointer);
    }

    public String toString() {
        Object objCallProperty = callProperty("toString", new Object[0]);
        if (objCallProperty == null) {
            return null;
        }
        return objCallProperty.toString();
    }

    public String typeof() {
        return (String) this.quackContext.evaluateForJavaScriptObject("(function(f) { return typeof f; })").call(this);
    }
}
