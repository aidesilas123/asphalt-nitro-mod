package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.f;
import com.google.gson.n;
import com.google.gson.q;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements q {
    private final com.google.gson.internal.a a;

    public JsonAdapterAnnotationTypeAdapterFactory(com.google.gson.internal.a aVar) {
        this.a = aVar;
    }

    TypeAdapter<?> a(com.google.gson.internal.a aVar, Gson gson, TypeToken<?> typeToken, com.google.gson.r.b bVar) {
        TypeAdapter<?> treeTypeAdapter;
        Object objA = aVar.b(TypeToken.get((Class) bVar.value())).a();
        boolean zNullSafe = bVar.nullSafe();
        if (objA instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) objA;
        } else if (objA instanceof q) {
            treeTypeAdapter = ((q) objA).b(gson, typeToken);
        } else {
            boolean z = objA instanceof n;
            if (!z && !(objA instanceof f)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objA.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            treeTypeAdapter = new TreeTypeAdapter<>(z ? (n) objA : null, objA instanceof f ? (f) objA : null, gson, typeToken, null, zNullSafe);
            zNullSafe = false;
        }
        return (treeTypeAdapter == null || !zNullSafe) ? treeTypeAdapter : treeTypeAdapter.a();
    }

    @Override // com.google.gson.q
    public <T> TypeAdapter<T> b(Gson gson, TypeToken<T> typeToken) {
        com.google.gson.r.b bVar = (com.google.gson.r.b) typeToken.getRawType().getAnnotation(com.google.gson.r.b.class);
        if (bVar == null) {
            return null;
        }
        return (TypeAdapter<T>) a(this.a, gson, typeToken, bVar);
    }
}
