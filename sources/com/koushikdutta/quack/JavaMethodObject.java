package com.koushikdutta.quack;

import com.koushikdutta.quack.QuackMethodObject;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class JavaMethodObject implements QuackMethodObject {
    Object originalThis;
    QuackContext quackContext;
    String target;

    public JavaMethodObject(QuackContext quackContext, Object obj, String str) {
        this.quackContext = quackContext;
        this.originalThis = obj;
        this.target = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$callMethod$0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Method a(Method[] methodArr, ArrayList arrayList) {
        QuackMethodName quackMethodName;
        Method method = null;
        int i = Integer.MAX_VALUE;
        for (Method method2 : methodArr) {
            if (method2.getName().equals(this.target) || ((quackMethodName = (QuackMethodName) method2.getAnnotation(QuackMethodName.class)) != null && quackMethodName.name().equals(this.target))) {
                int iAbs = Math.abs(arrayList.size() - method2.getParameterTypes().length) * 1000;
                for (int i2 = 0; i2 < Math.min(method2.getParameterTypes().length, arrayList.size()); i2++) {
                    Class<?> cls = (Class) arrayList.get(i2);
                    Class<?> cls2 = method2.getParameterTypes()[i2];
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
                    method = method2;
                    i = iAbs;
                }
            }
        }
        return method;
    }

    public static <T> T[] toArray(Class<T> cls, ArrayList<T> arrayList) {
        return (T[]) arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, 0));
    }

    @Override // com.koushikdutta.quack.QuackObject
    public Object callMethod(Object obj, Object... objArr) {
        if (obj == null || (obj instanceof JavaScriptObject)) {
            obj = this.originalThis;
        }
        if (obj == null) {
            throw new UnsupportedOperationException("can not call " + this.target);
        }
        Object objCoerceJavaScriptToJava = this.quackContext.coerceJavaScriptToJava(Object.class, obj);
        final Method[] methods = getMethods(objCoerceJavaScriptToJava);
        final ArrayList arrayList = new ArrayList();
        int length = objArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            Class<?> cls = null;
            if (i2 >= length) {
                break;
            }
            Object obj2 = objArr[i2];
            if (obj2 != null) {
                cls = obj2.getClass();
            }
            arrayList.add(cls);
            i2++;
        }
        Method methodMemoize = QuackContext.javaObjectMethodCandidates.memoize(new MemoizeFunc() { // from class: com.koushikdutta.quack.c
            @Override // com.koushikdutta.quack.MemoizeFunc
            public final Object process() {
                return this.a.a(methods, arrayList);
            }
        }, this.target, methods, arrayList.toArray());
        if (methodMemoize == null) {
            throw new UnsupportedOperationException("can not call " + this.target);
        }
        Object obj3 = getThis(objCoerceJavaScriptToJava, methodMemoize);
        try {
            Method interfaceMethod = QuackContext.getInterfaceMethod(methodMemoize);
            QuackMethodCoercion quackMethodCoercion = this.quackContext.JavaScriptToJavaMethodCoercions.get(interfaceMethod);
            if (quackMethodCoercion != null) {
                return quackMethodCoercion.invoke(interfaceMethod, obj3, objArr);
            }
            int length2 = methodMemoize.getParameterTypes().length;
            if (methodMemoize.isVarArgs()) {
                length2--;
            }
            ArrayList arrayList2 = new ArrayList();
            while (i < length2) {
                if (i < objArr.length) {
                    arrayList2.add(this.quackContext.coerceJavaScriptToJava(methodMemoize.getParameterTypes()[i], objArr[i]));
                } else {
                    arrayList2.add(null);
                }
                i++;
            }
            if (methodMemoize.isVarArgs()) {
                Class<?> componentType = methodMemoize.getParameterTypes()[length2].getComponentType();
                ArrayList arrayList3 = new ArrayList();
                while (i < objArr.length) {
                    arrayList3.add(this.quackContext.coerceJavaScriptToJava(componentType, objArr[i]));
                    i++;
                }
                arrayList2.add(toArray(componentType, arrayList3));
            } else if (i < objArr.length) {
                System.err.println("dropping javascript to java arguments on the floor: " + (objArr.length - i) + " " + methodMemoize.toString());
            }
            return this.quackContext.coerceJavaToJavaScript(methodMemoize.invoke(obj3, arrayList2.toArray()));
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (RuntimeException e3) {
            throw e3;
        } catch (InvocationTargetException e4) {
            if (e4.getTargetException() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getTargetException());
            }
            if (e4.getTargetException() instanceof Error) {
                throw ((Error) e4.getTargetException());
            }
            throw new RuntimeException(e4.getTargetException());
        }
    }

    @Override // com.koushikdutta.quack.QuackObject
    public /* synthetic */ Object construct(Object... objArr) {
        return m0.b(this, objArr);
    }

    @Override // com.koushikdutta.quack.QuackMethodObject, com.koushikdutta.quack.QuackObject
    public /* synthetic */ Object get(Object obj) {
        return QuackMethodObject.CC.a(this, obj);
    }

    public Method[] getMethods(Object obj) {
        Method[] methods = obj.getClass().getMethods();
        if (!(obj instanceof Class)) {
            return methods;
        }
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, methods);
        Collections.addAll(arrayList, ((Class) obj).getMethods());
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    public Object getThis(Object obj, Method method) {
        return obj;
    }

    @Override // com.koushikdutta.quack.QuackObject
    public /* synthetic */ boolean has(Object obj) {
        return m0.d(this, obj);
    }

    @Override // com.koushikdutta.quack.QuackObject
    public /* synthetic */ boolean set(Object obj, Object obj2) {
        return m0.e(this, obj, obj2);
    }
}
