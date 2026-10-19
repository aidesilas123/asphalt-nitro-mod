package kotlin.reflect.jvm.internal.impl.storage;

/* JADX INFO: compiled from: SingleThreadValue.java */
/* JADX INFO: loaded from: classes5.dex */
class g<T> {
    private final T a;
    private final Thread b = Thread.currentThread();

    g(T t) {
        this.a = t;
    }

    public T a() {
        if (b()) {
            return this.a;
        }
        throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
    }

    public boolean b() {
        return this.b == Thread.currentThread();
    }
}
