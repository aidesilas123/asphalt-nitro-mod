package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: renamed from: kotlinx.coroutines.internal.l, reason: from Kotlin metadata */
/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/MainDispatcherLoader;", "", "()V", "FAST_SERVICE_LOADER_ENABLED", "", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "loadMainDispatcher", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class MainDispatcherLoader {
    public static final MainDispatcherLoader a;
    private static final boolean b;
    public static final MainCoroutineDispatcher c;

    static {
        MainDispatcherLoader mainDispatcherLoader = new MainDispatcherLoader();
        a = mainDispatcherLoader;
        b = SystemPropsKt.systemProp("kotlinx.coroutines.fast.service.loader", true);
        c = mainDispatcherLoader.a();
    }

    private MainDispatcherLoader() {
    }

    private final MainCoroutineDispatcher a() {
        Object next;
        MainCoroutineDispatcher mainCoroutineDispatcherTryCreateDispatcher;
        try {
            List<MainDispatcherFactory> listC = b ? FastServiceLoader.a.c() : SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.asSequence(defpackage.a.b()));
            Iterator<T> it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            return (mainDispatcherFactory == null || (mainCoroutineDispatcherTryCreateDispatcher = MainDispatchersKt.tryCreateDispatcher(mainDispatcherFactory, listC)) == null) ? MainDispatchersKt.b(null, null, 3, null) : mainCoroutineDispatcherTryCreateDispatcher;
        } catch (Throwable th) {
            return MainDispatchersKt.b(th, null, 2, null);
        }
    }
}
