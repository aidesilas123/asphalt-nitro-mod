package com.google.common.reflect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.reflect.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;

/* JADX INFO: compiled from: TypeResolver.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d {
    private final a a;

    /* JADX INFO: compiled from: TypeResolver.java */
    private static class a {
        private final ImmutableMap<b, Type> a = ImmutableMap.of();

        /* JADX INFO: renamed from: com.google.common.reflect.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: TypeResolver.java */
        class C0271a extends a {
            final /* synthetic */ TypeVariable b;
            final /* synthetic */ a c;

            C0271a(a aVar, TypeVariable typeVariable, a aVar2) {
                this.b = typeVariable;
                this.c = aVar2;
            }

            @Override // com.google.common.reflect.d.a
            public Type b(TypeVariable<?> typeVariable, a aVar) {
                return typeVariable.getGenericDeclaration().equals(this.b.getGenericDeclaration()) ? typeVariable : this.c.b(typeVariable, aVar);
            }
        }

        a() {
        }

        final Type a(TypeVariable<?> typeVariable) {
            return b(typeVariable, new C0271a(this, typeVariable, this));
        }

        Type b(TypeVariable<?> typeVariable, a aVar) {
            Type type = this.a.get(new b(typeVariable));
            c cVar = null;
            if (type != null) {
                return new d(aVar, cVar).d(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] typeArrE = new d(aVar, cVar).e(bounds);
            return (Types.b.a && Arrays.equals(bounds, typeArrE)) ? typeVariable : Types.i(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrE);
        }
    }

    /* JADX INFO: compiled from: TypeResolver.java */
    static final class b {
        private final TypeVariable<?> a;

        b(TypeVariable<?> typeVariable) {
            this.a = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        private boolean a(TypeVariable<?> typeVariable) {
            return this.a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.a.getName().equals(typeVariable.getName());
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return a(((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.a.getGenericDeclaration(), this.a.getName());
        }

        public String toString() {
            return this.a.toString();
        }
    }

    public d() {
        this.a = new a();
    }

    private d(a aVar) {
        this.a = aVar;
    }

    /* synthetic */ d(a aVar, c cVar) {
        this(aVar);
    }

    private Type b(GenericArrayType genericArrayType) {
        return Types.h(d(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType c(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.k(ownerType == null ? null : d(ownerType), (Class) d(parameterizedType.getRawType()), e(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] e(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = d(typeArr[i]);
        }
        return typeArr2;
    }

    private WildcardType f(WildcardType wildcardType) {
        return new Types.f(e(wildcardType.getLowerBounds()), e(wildcardType.getUpperBounds()));
    }

    public Type d(Type type) {
        Preconditions.checkNotNull(type);
        return type instanceof TypeVariable ? this.a.a((TypeVariable) type) : type instanceof ParameterizedType ? c((ParameterizedType) type) : type instanceof GenericArrayType ? b((GenericArrayType) type) : type instanceof WildcardType ? f((WildcardType) type) : type;
    }
}
