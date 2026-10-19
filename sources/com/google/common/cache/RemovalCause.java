package com.google.common.cache;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class RemovalCause {
    public static final RemovalCause a = new a("EXPLICIT", 0);
    public static final RemovalCause b = new RemovalCause("REPLACED", 1) { // from class: com.google.common.cache.RemovalCause.b
        {
            a aVar = null;
        }
    };
    public static final RemovalCause c = new RemovalCause("COLLECTED", 2) { // from class: com.google.common.cache.RemovalCause.c
        {
            a aVar = null;
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final RemovalCause f3520d = new RemovalCause("EXPIRED", 3) { // from class: com.google.common.cache.RemovalCause.d
        {
            a aVar = null;
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RemovalCause f3521e = new RemovalCause("SIZE", 4) { // from class: com.google.common.cache.RemovalCause.e
        {
            a aVar = null;
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ RemovalCause[] f3522f = e();

    enum a extends RemovalCause {
        a(String str, int i) {
            super(str, i, null);
        }
    }

    private RemovalCause(String str, int i) {
    }

    /* synthetic */ RemovalCause(String str, int i, a aVar) {
        this(str, i);
    }

    private static /* synthetic */ RemovalCause[] e() {
        return new RemovalCause[]{a, b, c, f3520d, f3521e};
    }

    public static RemovalCause valueOf(String str) {
        return (RemovalCause) Enum.valueOf(RemovalCause.class, str);
    }

    public static RemovalCause[] values() {
        return (RemovalCause[]) f3522f.clone();
    }
}
