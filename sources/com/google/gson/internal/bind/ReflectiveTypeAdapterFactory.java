package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.h;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.e;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.k;
import com.google.gson.o;
import com.google.gson.q;
import com.google.gson.r.c;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ReflectiveTypeAdapterFactory implements q {
    private final com.google.gson.internal.a a;
    private final FieldNamingStrategy b;
    private final Excluder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f4208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<ReflectionAccessFilter> f4209e;

    public static abstract class Adapter<T, A> extends TypeAdapter<T> {
        final Map<String, b> a;

        Adapter(Map<String, b> map) {
            this.a = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            A aE = e();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    b bVar = this.a.get(jsonReader.nextName());
                    if (bVar == null || !bVar.f4215e) {
                        jsonReader.skipValue();
                    } else {
                        g(aE, jsonReader, bVar);
                    }
                }
                jsonReader.endObject();
                return f(aE);
            } catch (IllegalAccessException e2) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e2);
            } catch (IllegalStateException e3) {
                throw new o(e3);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void d(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<b> it = this.a.values().iterator();
                while (it.hasNext()) {
                    it.next().c(jsonWriter, t);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e2) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e2);
            }
        }

        abstract A e();

        abstract T f(A a);

        abstract void g(A a, JsonReader jsonReader, b bVar) throws IllegalAccessException, IOException;
    }

    private static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        private final e<T> b;

        FieldReflectionAdapter(e<T> eVar, Map<String, b> map) {
            super(map);
            this.b = eVar;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        T e() {
            return this.b.a();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        T f(T t) {
            return t;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        void g(T t, JsonReader jsonReader, b bVar) throws IllegalAccessException, IOException {
            bVar.b(jsonReader, t);
        }
    }

    private static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        static final Map<Class<?>, Object> b = j();
        private final Constructor<T> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object[] f4210d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Map<String, Integer> f4211e;

        RecordAdapter(Class<T> cls, Map<String, b> map, boolean z) {
            super(map);
            this.f4211e = new HashMap();
            Constructor<T> canonicalRecordConstructor = ReflectionHelper.getCanonicalRecordConstructor(cls);
            this.c = canonicalRecordConstructor;
            if (z) {
                ReflectiveTypeAdapterFactory.c(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = ReflectionHelper.getRecordComponentNames(cls);
            for (int i = 0; i < recordComponentNames.length; i++) {
                this.f4211e.put(recordComponentNames[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.c.getParameterTypes();
            this.f4210d = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.f4210d[i2] = b.get(parameterTypes[i2]);
            }
        }

        private static Map<Class<?>, Object> j() {
            HashMap map = new HashMap();
            map.put(Byte.TYPE, (byte) 0);
            map.put(Short.TYPE, (short) 0);
            map.put(Integer.TYPE, 0);
            map.put(Long.TYPE, 0L);
            map.put(Float.TYPE, Float.valueOf(0.0f));
            map.put(Double.TYPE, Double.valueOf(0.0d));
            map.put(Character.TYPE, (char) 0);
            map.put(Boolean.TYPE, Boolean.FALSE);
            return map;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Object[] e() {
            return (Object[]) this.f4210d.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public T f(Object[] objArr) {
            try {
                return this.c.newInstance(objArr);
            } catch (IllegalAccessException e2) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e2);
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.c) + "' with args " + Arrays.toString(objArr), e);
            } catch (InstantiationException e4) {
                e = e4;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.c) + "' with args " + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.c) + "' with args " + Arrays.toString(objArr), e5.getCause());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void g(Object[] objArr, JsonReader jsonReader, b bVar) throws IOException {
            Integer num = this.f4211e.get(bVar.c);
            if (num != null) {
                bVar.a(jsonReader, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + ReflectionHelper.constructorToString(this.c) + "' for field with name '" + bVar.c + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
    }

    class a extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f4212f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Method f4213g;
        final /* synthetic */ boolean h;
        final /* synthetic */ TypeAdapter i;
        final /* synthetic */ Gson j;
        final /* synthetic */ TypeToken k;
        final /* synthetic */ boolean l;
        final /* synthetic */ boolean m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Field field, boolean z, boolean z2, boolean z3, Method method, boolean z4, TypeAdapter typeAdapter, Gson gson, TypeToken typeToken, boolean z5, boolean z6) {
            super(str, field, z, z2);
            this.f4212f = z3;
            this.f4213g = method;
            this.h = z4;
            this.i = typeAdapter;
            this.j = gson;
            this.k = typeToken;
            this.l = z5;
            this.m = z6;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void a(JsonReader jsonReader, int i, Object[] objArr) throws IOException, k {
            Object objB = this.i.b(jsonReader);
            if (objB != null || !this.l) {
                objArr[i] = objB;
                return;
            }
            throw new k("null is not allowed as value for record component '" + this.c + "' of primitive type; at path " + jsonReader.getPath());
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void b(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
            Object objB = this.i.b(jsonReader);
            if (objB == null && this.l) {
                return;
            }
            if (this.f4212f) {
                ReflectiveTypeAdapterFactory.c(obj, this.b);
            } else if (this.m) {
                throw new h("Cannot set value of 'static final' " + ReflectionHelper.getAccessibleObjectDescription(this.b, false));
            }
            this.b.set(obj, objB);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void c(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
            Object objInvoke;
            if (this.f4214d) {
                if (this.f4212f) {
                    Method method = this.f4213g;
                    if (method == null) {
                        ReflectiveTypeAdapterFactory.c(obj, this.b);
                    } else {
                        ReflectiveTypeAdapterFactory.c(obj, method);
                    }
                }
                Method method2 = this.f4213g;
                if (method2 != null) {
                    try {
                        objInvoke = method2.invoke(obj, new Object[0]);
                    } catch (InvocationTargetException e2) {
                        throw new h("Accessor " + ReflectionHelper.getAccessibleObjectDescription(this.f4213g, false) + " threw exception", e2.getCause());
                    }
                } else {
                    objInvoke = this.b.get(obj);
                }
                if (objInvoke == obj) {
                    return;
                }
                jsonWriter.name(this.a);
                (this.h ? this.i : new TypeAdapterRuntimeTypeWrapper(this.j, this.i, this.k.getType())).d(jsonWriter, objInvoke);
            }
        }
    }

    static abstract class b {
        final String a;
        final Field b;
        final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f4214d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f4215e;

        protected b(String str, Field field, boolean z, boolean z2) {
            this.a = str;
            this.b = field;
            this.c = field.getName();
            this.f4214d = z;
            this.f4215e = z2;
        }

        abstract void a(JsonReader jsonReader, int i, Object[] objArr) throws IOException, k;

        abstract void b(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        abstract void c(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;
    }

    public ReflectiveTypeAdapterFactory(com.google.gson.internal.a aVar, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<ReflectionAccessFilter> list) {
        this.a = aVar;
        this.b = fieldNamingStrategy;
        this.c = excluder;
        this.f4208d = jsonAdapterAnnotationTypeAdapterFactory;
        this.f4209e = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <M extends AccessibleObject & Member> void c(Object obj, M m) {
        if (Modifier.isStatic(m.getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.canAccess(m, obj)) {
            return;
        }
        throw new h(ReflectionHelper.getAccessibleObjectDescription(m, true) + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    private b d(Gson gson, Field field, Method method, String str, TypeToken<?> typeToken, boolean z, boolean z2, boolean z3) {
        boolean zIsPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        int modifiers = field.getModifiers();
        boolean z4 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
        com.google.gson.r.b bVar = (com.google.gson.r.b) field.getAnnotation(com.google.gson.r.b.class);
        TypeAdapter<?> typeAdapterA = bVar != null ? this.f4208d.a(this.a, gson, typeToken, bVar) : null;
        return new a(str, field, z, z2, z3, method, typeAdapterA != null, typeAdapterA == null ? gson.getAdapter(typeToken) : typeAdapterA, gson, typeToken, zIsPrimitive, z4);
    }

    private Map<String, b> e(Gson gson, TypeToken<?> typeToken, Class<?> cls, boolean z, boolean z2) {
        boolean z3;
        Method method;
        int i;
        int i2;
        ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        TypeToken<?> typeToken2 = typeToken;
        boolean z4 = z;
        Class<?> rawType = cls;
        while (rawType != Object.class) {
            Field[] declaredFields = rawType.getDeclaredFields();
            boolean z5 = true;
            boolean z6 = false;
            if (rawType != cls && declaredFields.length > 0) {
                ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(reflectiveTypeAdapterFactory.f4209e, rawType);
                if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
                    throw new h("ReflectionAccessFilter does not permit using reflection for " + rawType + " (supertype of " + cls + "). Register a TypeAdapter for this type or adjust the access filter.");
                }
                z4 = filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE;
            }
            boolean z7 = z4;
            int length = declaredFields.length;
            int i3 = 0;
            while (i3 < length) {
                Field field = declaredFields[i3];
                boolean zG = reflectiveTypeAdapterFactory.g(field, z5);
                boolean zG2 = reflectiveTypeAdapterFactory.g(field, z6);
                if (zG || zG2) {
                    b bVar = null;
                    if (!z2) {
                        z3 = zG2;
                        method = null;
                    } else if (Modifier.isStatic(field.getModifiers())) {
                        method = null;
                        z3 = false;
                    } else {
                        Method accessor = ReflectionHelper.getAccessor(rawType, field);
                        if (!z7) {
                            ReflectionHelper.makeAccessible(accessor);
                        }
                        if (accessor.getAnnotation(c.class) != null && field.getAnnotation(c.class) == null) {
                            throw new h("@SerializedName on " + ReflectionHelper.getAccessibleObjectDescription(accessor, z6) + " is not supported");
                        }
                        z3 = zG2;
                        method = accessor;
                    }
                    if (!z7 && method == null) {
                        ReflectionHelper.makeAccessible(field);
                    }
                    Type typeResolve = C$Gson$Types.resolve(typeToken2.getType(), rawType, field.getGenericType());
                    List<String> listF = reflectiveTypeAdapterFactory.f(field);
                    int size = listF.size();
                    int i4 = 0;
                    while (i4 < size) {
                        String str = listF.get(i4);
                        boolean z8 = i4 != 0 ? false : zG;
                        int i5 = i4;
                        b bVar2 = bVar;
                        int i6 = size;
                        List<String> list = listF;
                        Field field2 = field;
                        int i7 = i3;
                        int i8 = length;
                        bVar = bVar2 == null ? (b) linkedHashMap.put(str, d(gson, field, method, str, TypeToken.get(typeResolve), z8, z3, z7)) : bVar2;
                        i4 = i5 + 1;
                        zG = z8;
                        i3 = i7;
                        size = i6;
                        listF = list;
                        field = field2;
                        length = i8;
                    }
                    b bVar3 = bVar;
                    Field field3 = field;
                    i = i3;
                    i2 = length;
                    if (bVar3 != null) {
                        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + bVar3.a + "'; conflict is caused by fields " + ReflectionHelper.fieldToString(bVar3.b) + " and " + ReflectionHelper.fieldToString(field3));
                    }
                } else {
                    i = i3;
                    i2 = length;
                }
                i3 = i + 1;
                length = i2;
                z6 = false;
                z5 = true;
                reflectiveTypeAdapterFactory = this;
            }
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = typeToken2.getRawType();
            reflectiveTypeAdapterFactory = this;
            z4 = z7;
        }
        return linkedHashMap;
    }

    private List<String> f(Field field) {
        c cVar = (c) field.getAnnotation(c.class);
        if (cVar == null) {
            return Collections.singletonList(this.b.translateName(field));
        }
        String strValue = cVar.value();
        String[] strArrAlternate = cVar.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        Collections.addAll(arrayList, strArrAlternate);
        return arrayList;
    }

    private boolean g(Field field, boolean z) {
        return (this.c.f(field.getType(), z) || this.c.i(field, z)) ? false : true;
    }

    @Override // com.google.gson.q
    public <T> TypeAdapter<T> b(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.f4209e, rawType);
        if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
            boolean z = filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE;
            return ReflectionHelper.isRecord(rawType) ? new RecordAdapter(rawType, e(gson, typeToken, rawType, z, true), z) : new FieldReflectionAdapter(this.a.b(typeToken), e(gson, typeToken, rawType, z, false));
        }
        throw new h("ReflectionAccessFilter does not permit using reflection for " + rawType + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
