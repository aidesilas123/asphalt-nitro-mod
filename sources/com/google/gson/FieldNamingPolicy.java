package com.google.gson;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class FieldNamingPolicy implements FieldNamingStrategy {
    public static final FieldNamingPolicy a;
    public static final FieldNamingPolicy b;
    public static final FieldNamingPolicy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FieldNamingPolicy f4192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldNamingPolicy f4193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldNamingPolicy f4194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final FieldNamingPolicy f4195g;
    private static final /* synthetic */ FieldNamingPolicy[] h;

    enum a extends FieldNamingPolicy {
        a(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        a = aVar;
        FieldNamingPolicy fieldNamingPolicy = new FieldNamingPolicy("UPPER_CAMEL_CASE", 1) { // from class: com.google.gson.FieldNamingPolicy.b
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.b(field.getName());
            }
        };
        b = fieldNamingPolicy;
        FieldNamingPolicy fieldNamingPolicy2 = new FieldNamingPolicy("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: com.google.gson.FieldNamingPolicy.c
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.b(FieldNamingPolicy.a(field.getName(), ' '));
            }
        };
        c = fieldNamingPolicy2;
        FieldNamingPolicy fieldNamingPolicy3 = new FieldNamingPolicy("UPPER_CASE_WITH_UNDERSCORES", 3) { // from class: com.google.gson.FieldNamingPolicy.d
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.a(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        };
        f4192d = fieldNamingPolicy3;
        FieldNamingPolicy fieldNamingPolicy4 = new FieldNamingPolicy("LOWER_CASE_WITH_UNDERSCORES", 4) { // from class: com.google.gson.FieldNamingPolicy.e
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.a(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        };
        f4193e = fieldNamingPolicy4;
        FieldNamingPolicy fieldNamingPolicy5 = new FieldNamingPolicy("LOWER_CASE_WITH_DASHES", 5) { // from class: com.google.gson.FieldNamingPolicy.f
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.a(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        };
        f4194f = fieldNamingPolicy5;
        FieldNamingPolicy fieldNamingPolicy6 = new FieldNamingPolicy("LOWER_CASE_WITH_DOTS", 6) { // from class: com.google.gson.FieldNamingPolicy.g
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.FieldNamingStrategy
            public String translateName(Field field) {
                return FieldNamingPolicy.a(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        };
        f4195g = fieldNamingPolicy6;
        h = new FieldNamingPolicy[]{aVar, fieldNamingPolicy, fieldNamingPolicy2, fieldNamingPolicy3, fieldNamingPolicy4, fieldNamingPolicy5, fieldNamingPolicy6};
    }

    private FieldNamingPolicy(String str, int i) {
    }

    /* synthetic */ FieldNamingPolicy(String str, int i, a aVar) {
        this(str, i);
    }

    static String a(String str, char c2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    static String b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }

    public static FieldNamingPolicy valueOf(String str) {
        return (FieldNamingPolicy) Enum.valueOf(FieldNamingPolicy.class, str);
    }

    public static FieldNamingPolicy[] values() {
        return (FieldNamingPolicy[]) h.clone();
    }
}
