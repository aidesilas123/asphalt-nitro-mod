package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.google.common.base.k;
import com.google.common.collect.ImmutableSet;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TypeToken<T> extends com.google.common.reflect.b<T> implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;
    private final Type a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class TypeFilter implements k<TypeToken<?>> {
        public static final TypeFilter a = new a("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);
        public static final TypeFilter b = new b("INTERFACE_ONLY", 1);
        private static final /* synthetic */ TypeFilter[] c = e();

        enum a extends TypeFilter {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).a instanceof TypeVariable) || (((TypeToken) typeToken).a instanceof WildcardType)) ? false : true;
            }
        }

        enum b extends TypeFilter {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.e().isInterface();
            }
        }

        private TypeFilter(String str, int i) {
        }

        /* synthetic */ TypeFilter(String str, int i, e eVar) {
            this(str, i);
        }

        private static /* synthetic */ TypeFilter[] e() {
            return new TypeFilter[]{a, b};
        }

        public static TypeFilter valueOf(String str) {
            return (TypeFilter) Enum.valueOf(TypeFilter.class, str);
        }

        public static TypeFilter[] values() {
            return (TypeFilter[]) c.clone();
        }
    }

    class a extends f {
        final /* synthetic */ ImmutableSet.a b;

        a(TypeToken typeToken, ImmutableSet.a aVar) {
            this.b = aVar;
        }

        @Override // com.google.common.reflect.f
        void b(Class<?> cls) {
            this.b.a(cls);
        }

        @Override // com.google.common.reflect.f
        void c(GenericArrayType genericArrayType) {
            this.b.a(Types.g(TypeToken.of(genericArrayType.getGenericComponentType()).e()));
        }

        @Override // com.google.common.reflect.f
        void d(ParameterizedType parameterizedType) {
            this.b.a((Class) parameterizedType.getRawType());
        }

        @Override // com.google.common.reflect.f
        void e(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.f
        void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    private static final class b<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        b(Type type) {
            super(type, null);
        }
    }

    protected TypeToken() {
        Type typeC = c();
        this.a = typeC;
        Preconditions.checkState(!(typeC instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", typeC);
    }

    private TypeToken(Type type) {
        this.a = (Type) Preconditions.checkNotNull(type);
    }

    /* synthetic */ TypeToken(Type type, e eVar) {
        this(type);
    }

    private ImmutableSet<Class<? super T>> f() {
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        new a(this, aVarBuilder).a(this.a);
        return aVarBuilder.n();
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new b(cls);
    }

    public static TypeToken<?> of(Type type) {
        return new b(type);
    }

    public final Class<? super T> e() {
        return f().iterator().next();
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.a.equals(((TypeToken) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return Types.p(this.a);
    }

    protected Object writeReplace() {
        return of(new d().d(this.a));
    }
}
