package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;

/* JADX INFO: compiled from: PropertyReference1.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class d0 extends g0 implements KProperty1 {
    public d0() {
    }

    public d0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.reflect.KProperty1
    public Object b(Object obj) {
        return ((KProperty1) getReflected()).b(obj);
    }

    @Override // kotlin.jvm.internal.l
    protected KCallable computeReflected() {
        return Reflection.property1(this);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty1.a getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }
}
