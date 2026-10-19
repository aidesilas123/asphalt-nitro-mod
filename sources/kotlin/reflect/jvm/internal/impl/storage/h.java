package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: compiled from: StorageManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface h {
    <K, V> a<K, V> a();

    <T> e<T> b(Function0<? extends T> function0, T t);

    <T> e<T> c(Function0<? extends T> function0);

    <T> T d(Function0<? extends T> function0);

    <T> f<T> e(Function0<? extends T> function0);

    <T> e<T> f(Function0<? extends T> function0, Function1<? super Boolean, ? extends T> function1, Function1<? super T, v> function12);

    <K, V> c<K, V> g(Function1<? super K, ? extends V> function1);

    <K, V> b<K, V> h(Function1<? super K, ? extends V> function1);
}
