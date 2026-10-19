package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.g;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Streams;
import com.google.gson.k;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
    private final n<T> a;
    private final f<T> b;
    final Gson c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TypeToken<T> f4216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q f4217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TreeTypeAdapter<T>.b f4218f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4219g;
    private volatile TypeAdapter<T> h;

    private static final class SingleTypeFactory implements q {
        private final TypeToken<?> a;
        private final boolean b;
        private final Class<?> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final n<?> f4220d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final f<?> f4221e;

        SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            n<?> nVar = obj instanceof n ? (n) obj : null;
            this.f4220d = nVar;
            f<?> fVar = obj instanceof f ? (f) obj : null;
            this.f4221e = fVar;
            C$Gson$Preconditions.checkArgument((nVar == null && fVar == null) ? false : true);
            this.a = typeToken;
            this.b = z;
            this.c = cls;
        }

        @Override // com.google.gson.q
        public <T> TypeAdapter<T> b(Gson gson, TypeToken<T> typeToken) {
            TypeToken<?> typeToken2 = this.a;
            if (typeToken2 != null ? typeToken2.equals(typeToken) || (this.b && this.a.getType() == typeToken.getRawType()) : this.c.isAssignableFrom(typeToken.getRawType())) {
                return new TreeTypeAdapter(this.f4220d, this.f4221e, gson, typeToken, this);
            }
            return null;
        }
    }

    private final class b implements m, e {
        private b() {
        }

        @Override // com.google.gson.e
        public <R> R a(g gVar, Type type) throws k {
            return (R) TreeTypeAdapter.this.c.fromJson(gVar, type);
        }
    }

    public TreeTypeAdapter(n<T> nVar, f<T> fVar, Gson gson, TypeToken<T> typeToken, q qVar) {
        this(nVar, fVar, gson, typeToken, qVar, true);
    }

    public TreeTypeAdapter(n<T> nVar, f<T> fVar, Gson gson, TypeToken<T> typeToken, q qVar, boolean z) {
        this.f4218f = new b();
        this.a = nVar;
        this.b = fVar;
        this.c = gson;
        this.f4216d = typeToken;
        this.f4217e = qVar;
        this.f4219g = z;
    }

    private TypeAdapter<T> f() {
        TypeAdapter<T> typeAdapter = this.h;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> delegateAdapter = this.c.getDelegateAdapter(this.f4217e, this.f4216d);
        this.h = delegateAdapter;
        return delegateAdapter;
    }

    public static q newFactory(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, false, null);
    }

    public static q newFactoryWithMatchRawType(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    public static q newTypeHierarchyFactory(Class<?> cls, Object obj) {
        return new SingleTypeFactory(obj, null, false, cls);
    }

    @Override // com.google.gson.TypeAdapter
    public T b(JsonReader jsonReader) throws IOException {
        if (this.b == null) {
            return f().b(jsonReader);
        }
        g gVar = Streams.parse(jsonReader);
        if (this.f4219g && gVar.i()) {
            return null;
        }
        return this.b.deserialize(gVar, this.f4216d.getType(), this.f4218f);
    }

    @Override // com.google.gson.TypeAdapter
    public void d(JsonWriter jsonWriter, T t) throws IOException {
        n<T> nVar = this.a;
        if (nVar == null) {
            f().d(jsonWriter, t);
        } else if (this.f4219g && t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(nVar.serialize(t, this.f4216d.getType(), this.f4218f), jsonWriter);
        }
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public TypeAdapter<T> e() {
        return this.a != null ? this : f();
    }
}
