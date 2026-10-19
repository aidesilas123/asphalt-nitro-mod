package androidx.datastore.core;

import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: compiled from: DataMigration.kt */
/* JADX INFO: loaded from: classes.dex */
public interface DataMigration<T> {
    Object cleanUp(Continuation<? super v> continuation);

    Object migrate(T t, Continuation<? super T> continuation);

    Object shouldMigrate(T t, Continuation<? super Boolean> continuation);
}
