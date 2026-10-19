package com.google.common.cache;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.common.cache.LocalCache$EntryFactory, still in use, count: 1, list:
  (r0v0 com.google.common.cache.LocalCache$EntryFactory) from 0x0058: FILLED_NEW_ARRAY 
  (r0v0 com.google.common.cache.LocalCache$EntryFactory)
  (r1v1 com.google.common.cache.LocalCache$EntryFactory)
  (r3v1 com.google.common.cache.LocalCache$EntryFactory)
  (r5v1 com.google.common.cache.LocalCache$EntryFactory)
  (r7v1 com.google.common.cache.LocalCache$EntryFactory)
  (r9v1 com.google.common.cache.LocalCache$EntryFactory)
  (r11v1 com.google.common.cache.LocalCache$EntryFactory)
  (r13v1 com.google.common.cache.LocalCache$EntryFactory)
 A[WRAPPED] elemType: com.google.common.cache.LocalCache$EntryFactory
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
abstract class LocalCache$EntryFactory {
    STRONG { // from class: com.google.common.cache.LocalCache$EntryFactory.a
    },
    STRONG_ACCESS { // from class: com.google.common.cache.LocalCache$EntryFactory.b
    },
    STRONG_WRITE { // from class: com.google.common.cache.LocalCache$EntryFactory.c
    },
    STRONG_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache$EntryFactory.d
    },
    WEAK { // from class: com.google.common.cache.LocalCache$EntryFactory.e
    },
    WEAK_ACCESS { // from class: com.google.common.cache.LocalCache$EntryFactory.f
    },
    WEAK_WRITE { // from class: com.google.common.cache.LocalCache$EntryFactory.g
    },
    WEAK_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache$EntryFactory.h
    };

    static final LocalCache$EntryFactory[] i = {new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.a
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.b
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.c
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.d
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.e
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.f
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.g
    }, new LocalCache$EntryFactory() { // from class: com.google.common.cache.LocalCache$EntryFactory.h
    }};

    static {
    }

    private LocalCache$EntryFactory() {
    }

    /* synthetic */ LocalCache$EntryFactory(com.google.common.cache.e eVar) {
        this(str, i);
    }

    public static LocalCache$EntryFactory valueOf(String str) {
        return (LocalCache$EntryFactory) Enum.valueOf(LocalCache$EntryFactory.class, str);
    }

    public static LocalCache$EntryFactory[] values() {
        return (LocalCache$EntryFactory[]) j.clone();
    }
}
