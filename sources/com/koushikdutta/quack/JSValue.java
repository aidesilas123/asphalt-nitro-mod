package com.koushikdutta.quack;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public class JSValue implements QuackJavaObject {
    QuackContext quack;
    Object value;

    public JSValue(QuackContext quackContext, Object obj) {
        this.quack = quackContext;
        this.value = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$asIterable$0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Iterator a(final JSValue jSValue, final JSValue jSValue2, final Class cls) {
        return new Iterator() { // from class: com.koushikdutta.quack.JSValue.1
            JSValue current;

            private void maybeNext() {
                if (this.current != null) {
                    return;
                }
                this.current = jSValue.apply(jSValue2, new Object[0]);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                maybeNext();
                return !((Boolean) this.current.get("done").getObject()).booleanValue();
            }

            @Override // java.util.Iterator
            public Object next() {
                maybeNext();
                if (((Boolean) this.current.get("done").getObject()).booleanValue()) {
                    throw new NoSuchElementException("end of iterator");
                }
                Object objAs = this.current.get("value").as(cls);
                this.current = null;
                return objAs;
            }
        };
    }

    private QuackObject quackify() {
        Object obj = this.value;
        return obj instanceof QuackObject ? (QuackObject) obj : new JavaObject(this.quack, obj);
    }

    public JSValue apply(Object obj, Object... objArr) {
        return new JSValue(this.quack, quackify().callMethod(obj, objArr));
    }

    public <T> T as(Class<T> cls) {
        return (T) this.quack.coerceJavaScriptToJava(cls, this.value);
    }

    public <T> Iterable<T> asIterable(final Class<T> cls) {
        final JSValue jSValueApply = get(this.quack.evaluateForJavaScriptObject("Symbol").asJSValue().get("iterator")).apply(this, new Object[0]);
        final JSValue jSValue = jSValueApply.get("next");
        return new Iterable() { // from class: com.koushikdutta.quack.b
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return this.a.a(jSValue, jSValueApply, cls);
            }
        };
    }

    public JSValue construct(Object... objArr) {
        return new JSValue(this.quack, quackify().construct(objArr));
    }

    public JSValue get(Object obj) {
        return new JSValue(this.quack, quackify().get(obj));
    }

    @Override // com.koushikdutta.quack.QuackJavaObject
    public Object getObject() {
        return this.value;
    }

    public boolean has(Object obj) {
        return quackify().has(obj);
    }

    public boolean isByteBuffer() {
        return this.value instanceof ByteBuffer;
    }

    public boolean isJavaScriptObject() {
        return this.value instanceof JavaScriptObject;
    }

    public boolean isNullOrUndefined() {
        return this.value == null;
    }

    public boolean isNumber() {
        return this.value instanceof Number;
    }

    public boolean isString() {
        return this.value instanceof String;
    }

    public boolean set(Object obj, Object obj2) {
        return quackify().set(obj, obj2);
    }

    public String toString() {
        Object obj = this.value;
        return obj == null ? "null" : obj.toString();
    }
}
