package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.q;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Excluder implements q, Cloneable {
    public static final Excluder a = new Excluder();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4201e;
    private double b = -1.0d;
    private int c = 136;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4200d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<com.google.gson.a> f4202f = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<com.google.gson.a> f4203g = Collections.emptyList();

    private boolean g(Class<?> cls) {
        if (this.b != -1.0d && !p((com.google.gson.r.d) cls.getAnnotation(com.google.gson.r.d.class), (com.google.gson.r.e) cls.getAnnotation(com.google.gson.r.e.class))) {
            return true;
        }
        if (this.f4200d || !l(cls)) {
            return k(cls);
        }
        return true;
    }

    private boolean h(Class<?> cls, boolean z) {
        Iterator<com.google.gson.a> it = (z ? this.f4202f : this.f4203g).iterator();
        while (it.hasNext()) {
            if (it.next().b(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean k(Class<?> cls) {
        return (Enum.class.isAssignableFrom(cls) || m(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    private boolean l(Class<?> cls) {
        return cls.isMemberClass() && !m(cls);
    }

    private boolean m(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean n(com.google.gson.r.d dVar) {
        if (dVar != null) {
            return this.b >= dVar.value();
        }
        return true;
    }

    private boolean o(com.google.gson.r.e eVar) {
        if (eVar != null) {
            return this.b < eVar.value();
        }
        return true;
    }

    private boolean p(com.google.gson.r.d dVar, com.google.gson.r.e eVar) {
        return n(dVar) && o(eVar);
    }

    @Override // com.google.gson.q
    public <T> TypeAdapter<T> b(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        boolean zG = g(rawType);
        final boolean z = zG || h(rawType, true);
        final boolean z2 = zG || h(rawType, false);
        if (z || z2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> a;

                private TypeAdapter<T> e() {
                    TypeAdapter<T> typeAdapter = this.a;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.a = delegateAdapter;
                    return delegateAdapter;
                }

                @Override // com.google.gson.TypeAdapter
                public T b(JsonReader jsonReader) throws IOException {
                    if (!z2) {
                        return e().b(jsonReader);
                    }
                    jsonReader.skipValue();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void d(JsonWriter jsonWriter, T t) throws IOException {
                    if (z) {
                        jsonWriter.nullValue();
                    } else {
                        e().d(jsonWriter, t);
                    }
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public Excluder e() {
        Excluder excluderClone = clone();
        excluderClone.f4200d = false;
        return excluderClone;
    }

    public boolean f(Class<?> cls, boolean z) {
        return g(cls) || h(cls, z);
    }

    public boolean i(Field field, boolean z) {
        com.google.gson.r.a aVar;
        if ((this.c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.b != -1.0d && !p((com.google.gson.r.d) field.getAnnotation(com.google.gson.r.d.class), (com.google.gson.r.e) field.getAnnotation(com.google.gson.r.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f4201e && ((aVar = (com.google.gson.r.a) field.getAnnotation(com.google.gson.r.a.class)) == null || (!z ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f4200d && l(field.getType())) || k(field.getType())) {
            return true;
        }
        List<com.google.gson.a> list = z ? this.f4202f : this.f4203g;
        if (list.isEmpty()) {
            return false;
        }
        com.google.gson.b bVar = new com.google.gson.b(field);
        Iterator<com.google.gson.a> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().a(bVar)) {
                return true;
            }
        }
        return false;
    }

    public Excluder j() {
        Excluder excluderClone = clone();
        excluderClone.f4201e = true;
        return excluderClone;
    }

    public Excluder q(com.google.gson.a aVar, boolean z, boolean z2) {
        Excluder excluderClone = clone();
        if (z) {
            ArrayList arrayList = new ArrayList(this.f4202f);
            excluderClone.f4202f = arrayList;
            arrayList.add(aVar);
        }
        if (z2) {
            ArrayList arrayList2 = new ArrayList(this.f4203g);
            excluderClone.f4203g = arrayList2;
            arrayList2.add(aVar);
        }
        return excluderClone;
    }

    public Excluder r(int... iArr) {
        Excluder excluderClone = clone();
        excluderClone.c = 0;
        for (int i : iArr) {
            excluderClone.c = i | excluderClone.c;
        }
        return excluderClone;
    }

    public Excluder s(double d2) {
        Excluder excluderClone = clone();
        excluderClone.b = d2;
        return excluderClone;
    }
}
