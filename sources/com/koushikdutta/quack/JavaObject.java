package com.koushikdutta.quack;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaObject implements QuackObject, QuackJavaObject {
    private final QuackContext quackContext;
    private final Object target;

    public JavaObject(QuackContext quackContext, Object obj) {
        this.quackContext = quackContext;
        this.target = obj;
    }

    private Field findField(final String str, final Class cls) {
        return QuackContext.javaObjectFields.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.e
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return this.a.a(cls, str);
            }
        }, str, cls.getDeclaredFields());
    }

    public static Method getGetterMethod(final String str, final Method[] methodArr) {
        return QuackContext.javaObjectGetter.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.g
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return JavaObject.lambda$getGetterMethod$0(methodArr, str);
            }
        }, str, methodArr);
    }

    private Object getMap(Object obj) {
        Object obj2 = this.target;
        if (obj2 instanceof Map) {
            return this.quackContext.coerceJavaToJavaScript(((Map) obj2).get(obj));
        }
        return null;
    }

    public static Method getSetterMethod(final String str, final Method[] methodArr) {
        return QuackContext.javaObjectSetter.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.h
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return JavaObject.lambda$getSetterMethod$1(methodArr, str);
            }
        }, str, methodArr);
    }

    private static boolean hasMethod(Class cls, String str, boolean z) {
        for (Method method : cls.getMethods()) {
            if (!z || Modifier.isStatic(method.getModifiers())) {
                if (method.getName().equals(str)) {
                    return true;
                }
                QuackMethodName quackMethodName = (QuackMethodName) method.getAnnotation(QuackMethodName.class);
                if (quackMethodName != null && quackMethodName.name().equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    static /* synthetic */ Constructor lambda$construct$4(Constructor[] constructorArr, ArrayList arrayList) {
        Constructor constructor = null;
        int i = Integer.MAX_VALUE;
        for (Constructor constructor2 : constructorArr) {
            int iAbs = Math.abs(arrayList.size() - constructor2.getParameterTypes().length) * 1000;
            for (int i2 = 0; i2 < Math.min(constructor2.getParameterTypes().length, arrayList.size()); i2++) {
                Class<?> cls = (Class) arrayList.get(i2);
                Class<?> cls2 = constructor2.getParameterTypes()[i2];
                if (cls2 == cls) {
                    iAbs -= 4;
                }
                if (QuackContext.isNumberClass(cls2) && QuackContext.isNumberClass(cls)) {
                    iAbs -= 3;
                } else if ((cls2 == Long.class || cls2 == Long.TYPE) && cls == String.class) {
                    iAbs -= 2;
                } else if (cls == null || cls2.isAssignableFrom(cls)) {
                    iAbs--;
                }
            }
            if (iAbs < i) {
                constructor = constructor2;
                i = iAbs;
            }
        }
        return constructor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$findField$2, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Field a(Class cls, String str) {
        for (Field field : cls.getDeclaredFields()) {
            if (field.getName().equals(str) && (field.getModifiers() & 8) == 0 && (field.getModifiers() & 1) != 0) {
                return field;
            }
        }
        Object obj = this.target;
        if (!(obj instanceof Class)) {
            return null;
        }
        for (Field field2 : ((Class) obj).getDeclaredFields()) {
            if (field2.getName().equals(str) && (field2.getModifiers() & 8) != 0 && (field2.getModifiers() & 1) != 0) {
                return field2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$get$3, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Boolean b(Class cls, String str) {
        if (hasMethod(cls, str, false)) {
            return Boolean.TRUE;
        }
        Object obj = this.target;
        return obj instanceof Class ? Boolean.valueOf(hasMethod((Class) obj, str, true)) : Boolean.FALSE;
    }

    static /* synthetic */ Method lambda$getGetterMethod$0(Method[] methodArr, String str) {
        QuackProperty quackProperty;
        for (Method method : methodArr) {
            if (method.getParameterTypes().length == 0 && method.getReturnType() != Void.TYPE && method.getReturnType() != Void.class && (quackProperty = (QuackProperty) method.getAnnotation(QuackProperty.class)) != null) {
                String strName = quackProperty.name();
                if (QuackContext.isEmpty(strName)) {
                    strName = method.getName();
                }
                if (strName.equals(str)) {
                    return method;
                }
            }
        }
        return null;
    }

    static /* synthetic */ Method lambda$getSetterMethod$1(Method[] methodArr, String str) {
        QuackProperty quackProperty;
        for (Method method : methodArr) {
            if (method.getParameterTypes().length == 1 && ((method.getReturnType() == Void.TYPE || method.getReturnType() == Void.class) && (quackProperty = (QuackProperty) method.getAnnotation(QuackProperty.class)) != null)) {
                String strName = quackProperty.name();
                if (QuackContext.isEmpty(strName)) {
                    strName = method.getName();
                }
                if (strName.equals(str)) {
                    return method;
                }
            }
        }
        return null;
    }

    private void noSet() {
        throw new UnsupportedOperationException("can not set value on this JavaObject");
    }

    private boolean putMap(Object obj, Object obj2) {
        Object obj3 = this.target;
        if (obj3 instanceof Map) {
            ((Map) obj3).put(obj, obj2);
            return true;
        }
        noSet();
        return false;
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object callMethod(Object obj, Object... objArr) {
        throw new UnsupportedOperationException("can not call " + this.target);
    }

    public Object callProperty(Object obj, Object... objArr) {
        obj.getClass();
        Object obj2 = get(obj);
        if (obj2 instanceof QuackObject) {
            return ((QuackObject) obj2).callMethod(this, objArr);
        }
        throw new UnsupportedOperationException("can not call " + this.target);
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object construct(Object... objArr) {
        Object obj = this.target;
        if (!(obj instanceof Class)) {
            return m0.b(this, objArr);
        }
        Class cls = (Class) obj;
        final Constructor<?>[] constructors = cls.getConstructors();
        if (constructors.length == 0) {
            try {
                return cls.newInstance();
            } catch (Exception e2) {
                return new IllegalArgumentException(e2);
            }
        }
        final ArrayList arrayList = new ArrayList();
        int length = objArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            Class<?> cls2 = null;
            if (i2 >= length) {
                break;
            }
            Object obj2 = objArr[i2];
            if (obj2 != null) {
                cls2 = obj2.getClass();
            }
            arrayList.add(cls2);
            i2++;
        }
        Constructor constructorMemoize = QuackContext.javaObjectConstructorCandidates.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.d
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return JavaObject.lambda$construct$4(constructors, arrayList);
            }
        }, this.target, constructors, arrayList.toArray());
        try {
            int length2 = constructorMemoize.getParameterTypes().length;
            if (constructorMemoize.isVarArgs()) {
                length2--;
            }
            ArrayList arrayList2 = new ArrayList();
            while (i < length2) {
                if (i < objArr.length) {
                    arrayList2.add(this.quackContext.coerceJavaScriptToJava(constructorMemoize.getParameterTypes()[i], objArr[i]));
                } else {
                    arrayList2.add(null);
                }
                i++;
            }
            if (constructorMemoize.isVarArgs()) {
                Class<?> componentType = constructorMemoize.getParameterTypes()[length2].getComponentType();
                ArrayList arrayList3 = new ArrayList();
                while (i < objArr.length) {
                    arrayList3.add(this.quackContext.coerceJavaScriptToJava(componentType, objArr[i]));
                    i++;
                }
                arrayList2.add(JavaMethodObject.toArray(componentType, arrayList3));
            } else if (i < objArr.length) {
                System.err.println("dropping javascript to java arguments on the floor: " + (objArr.length - i) + " " + constructorMemoize.toString());
            }
            return this.quackContext.coerceJavaToJavaScript(constructorMemoize.newInstance(arrayList2.toArray()));
        } catch (IllegalAccessException e3) {
            throw new IllegalArgumentException(constructorMemoize.toString(), e3);
        } catch (IllegalArgumentException e4) {
            throw new IllegalArgumentException(constructorMemoize.toString(), e4);
        } catch (InstantiationException e5) {
            throw new IllegalArgumentException(constructorMemoize.toString(), e5);
        } catch (InvocationTargetException e6) {
            if (e6.getTargetException() instanceof RuntimeException) {
                throw ((RuntimeException) e6.getTargetException());
            }
            throw new IllegalArgumentException(constructorMemoize.toString(), e6);
        }
    }

    public Object get(int i) {
        if (this.target.getClass().isArray()) {
            return Array.get(this.target, i);
        }
        Object obj = this.target;
        if (obj instanceof List) {
            return ((List) obj).get(i);
        }
        return null;
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (number.doubleValue() == number.intValue()) {
                return get(number.intValue());
            }
        }
        return getMap(obj);
    }

    public Object get(final String str) {
        Object map = getMap(str);
        if (map != null) {
            return map;
        }
        final Class<?> cls = this.target.getClass();
        if (!Proxy.isProxyClass(cls)) {
            if (cls.isArray() && "length".equals(str)) {
                return Integer.valueOf(Array.getLength(this.target));
            }
            Field fieldFindField = findField(str, cls);
            if (fieldFindField != null) {
                try {
                    return this.quackContext.coerceJavaToJavaScript(fieldFindField.get(this.target));
                } catch (IllegalAccessException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
        }
        Method getterMethod = getGetterMethod(str, cls.getMethods());
        if (getterMethod != null) {
            try {
                return this.quackContext.coerceJavaToJavaScript(getterMethod.invoke(this.target, new Object[0]));
            } catch (Exception e3) {
                throw new IllegalArgumentException(e3);
            }
        }
        if (QuackContext.javaObjectMethods.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.f
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return this.a.b(cls, str);
            }
        }, str, cls.getMethods()).booleanValue()) {
            return new JavaMethodObject(this.quackContext, this.target, str);
        }
        return null;
    }

    @Override // com.koushikdutta.quack.QuackJavaObject
    public Object getObject() {
        return this.target;
    }

    @Override // com.koushikdutta.quack.QuackObject
    public /* synthetic */ boolean has(Object obj) {
        return m0.d(this, obj);
    }

    public boolean set(int i, Object obj) {
        Object obj2 = this.target;
        if (obj2 instanceof Array) {
            Array.set(obj2, i, obj);
            return true;
        }
        if (obj2 instanceof List) {
            ((List) obj2).set(i, obj);
            return true;
        }
        noSet();
        return false;
    }

    @Override // com.koushikdutta.quack.QuackObject
    public boolean set(Object obj, Object obj2) {
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if (number.doubleValue() == number.intValue()) {
                return set(number.intValue(), obj2);
            }
        }
        return obj instanceof String ? set((String) obj, obj2) : putMap(obj, obj2);
    }

    public boolean set(String str, Object obj) {
        Class<?> cls = this.target.getClass();
        Field fieldFindField = findField(str, cls);
        if (fieldFindField != null) {
            try {
                fieldFindField.set(this.target, this.quackContext.coerceJavaScriptToJava(fieldFindField.getType(), obj));
                return true;
            } catch (IllegalAccessException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        Method setterMethod = getSetterMethod(str, cls.getMethods());
        if (setterMethod == null) {
            return putMap(str, obj);
        }
        try {
            QuackContext quackContext = this.quackContext;
            quackContext.coerceJavaToJavaScript(setterMethod.invoke(this.target, quackContext.coerceJavaScriptToJava(setterMethod.getParameterTypes()[0], obj)));
            return true;
        } catch (Exception e3) {
            throw new IllegalArgumentException(e3);
        }
    }
}
