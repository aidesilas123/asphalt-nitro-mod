package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class LongSerializationPolicy {
    public static final LongSerializationPolicy a;
    public static final LongSerializationPolicy b;
    private static final /* synthetic */ LongSerializationPolicy[] c;

    enum a extends LongSerializationPolicy {
        a(String str, int i) {
            super(str, i, null);
        }
    }

    static {
        a aVar = new a("DEFAULT", 0);
        a = aVar;
        LongSerializationPolicy longSerializationPolicy = new LongSerializationPolicy("STRING", 1) { // from class: com.google.gson.LongSerializationPolicy.b
            {
                a aVar2 = null;
            }
        };
        b = longSerializationPolicy;
        c = new LongSerializationPolicy[]{aVar, longSerializationPolicy};
    }

    private LongSerializationPolicy(String str, int i) {
    }

    /* synthetic */ LongSerializationPolicy(String str, int i, a aVar) {
        this(str, i);
    }

    public static LongSerializationPolicy valueOf(String str) {
        return (LongSerializationPolicy) Enum.valueOf(LongSerializationPolicy.class, str);
    }

    public static LongSerializationPolicy[] values() {
        return (LongSerializationPolicy[]) c.clone();
    }
}
