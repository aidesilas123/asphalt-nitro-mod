package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes3.dex */
final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {
    private final Gson a;
    private final TypeAdapter<T> b;
    private final Type c;

    TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.a = gson;
        this.b = typeAdapter;
        this.c = type;
    }

    private static Type e(Type type, Object obj) {
        return obj != null ? ((type instanceof Class) || (type instanceof TypeVariable)) ? obj.getClass() : type : type;
    }

    private static boolean f(TypeAdapter<?> typeAdapter) {
        TypeAdapter<?> typeAdapterE;
        while ((typeAdapter instanceof SerializationDelegatingTypeAdapter) && (typeAdapterE = ((SerializationDelegatingTypeAdapter) typeAdapter).e()) != typeAdapter) {
            typeAdapter = typeAdapterE;
        }
        return typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter;
    }

    @Override // com.google.gson.TypeAdapter
    public T b(JsonReader jsonReader) throws IOException {
        return this.b.b(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void d(JsonWriter jsonWriter, T t) throws IOException {
        TypeAdapter<T> adapter = this.b;
        Type typeE = e(this.c, t);
        if (typeE != this.c) {
            adapter = this.a.getAdapter(TypeToken.get(typeE));
            if ((adapter instanceof ReflectiveTypeAdapterFactory.Adapter) && !f(this.b)) {
                adapter = this.b;
            }
        }
        adapter.d(jsonWriter, t);
    }
}
