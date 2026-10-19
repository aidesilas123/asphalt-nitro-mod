package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ToNumberPolicy implements p {
    public static final ToNumberPolicy a;
    public static final ToNumberPolicy b;
    public static final ToNumberPolicy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ToNumberPolicy f4198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ ToNumberPolicy[] f4199e;

    enum a extends ToNumberPolicy {
        a(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.gson.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Double a(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.nextDouble());
        }
    }

    static {
        a aVar = new a("DOUBLE", 0);
        a = aVar;
        ToNumberPolicy toNumberPolicy = new ToNumberPolicy("LAZILY_PARSED_NUMBER", 1) { // from class: com.google.gson.ToNumberPolicy.b
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.p
            public Number a(JsonReader jsonReader) throws IOException {
                return new com.google.gson.internal.c(jsonReader.nextString());
            }
        };
        b = toNumberPolicy;
        ToNumberPolicy toNumberPolicy2 = new ToNumberPolicy("LONG_OR_DOUBLE", 2) { // from class: com.google.gson.ToNumberPolicy.c
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.p
            public Number a(JsonReader jsonReader) throws IOException, k {
                String strNextString = jsonReader.nextString();
                try {
                    try {
                        return Long.valueOf(Long.parseLong(strNextString));
                    } catch (NumberFormatException e2) {
                        throw new k("Cannot parse " + strNextString + "; at path " + jsonReader.getPreviousPath(), e2);
                    }
                } catch (NumberFormatException unused) {
                    Double dValueOf = Double.valueOf(strNextString);
                    if ((!dValueOf.isInfinite() && !dValueOf.isNaN()) || jsonReader.isLenient()) {
                        return dValueOf;
                    }
                    throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + jsonReader.getPreviousPath());
                }
            }
        };
        c = toNumberPolicy2;
        ToNumberPolicy toNumberPolicy3 = new ToNumberPolicy("BIG_DECIMAL", 3) { // from class: com.google.gson.ToNumberPolicy.d
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.p
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public BigDecimal a(JsonReader jsonReader) throws IOException {
                String strNextString = jsonReader.nextString();
                try {
                    return new BigDecimal(strNextString);
                } catch (NumberFormatException e2) {
                    throw new k("Cannot parse " + strNextString + "; at path " + jsonReader.getPreviousPath(), e2);
                }
            }
        };
        f4198d = toNumberPolicy3;
        f4199e = new ToNumberPolicy[]{aVar, toNumberPolicy, toNumberPolicy2, toNumberPolicy3};
    }

    private ToNumberPolicy(String str, int i) {
    }

    /* synthetic */ ToNumberPolicy(String str, int i, a aVar) {
        this(str, i);
    }

    public static ToNumberPolicy valueOf(String str) {
        return (ToNumberPolicy) Enum.valueOf(ToNumberPolicy.class, str);
    }

    public static ToNumberPolicy[] values() {
        return (ToNumberPolicy[]) f4199e.clone();
    }
}
