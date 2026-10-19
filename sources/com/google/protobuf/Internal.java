package com.google.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Internal {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final ByteBuffer EMPTY_BYTE_BUFFER;
    public static final CodedInputStream EMPTY_CODED_INPUT_STREAM;
    static final Charset US_ASCII = Charset.forName(C.ASCII_NAME);
    static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    public static class MapAdapter<K, V, RealValue> extends AbstractMap<K, V> {
        private final Map<K, RealValue> realMap;
        private final b<RealValue, V> valueConverter;

        /* JADX INFO: Add missing generic type declarations: [T] */
        class a<T> implements b<Integer, T> {
            final /* synthetic */ d val$enumMap;
            final /* synthetic */ c val$unrecognizedValue;

            a(d dVar, c cVar) {
                this.val$enumMap = dVar;
                this.val$unrecognizedValue = cVar;
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Integer; */
            @Override // com.google.protobuf.Internal.MapAdapter.b
            public Integer doBackward(c cVar) {
                return Integer.valueOf(cVar.getNumber());
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Integer;)TT; */
            @Override // com.google.protobuf.Internal.MapAdapter.b
            public c doForward(Integer num) {
                c cVarFindValueByNumber = this.val$enumMap.findValueByNumber(num.intValue());
                return cVarFindValueByNumber == null ? this.val$unrecognizedValue : cVarFindValueByNumber;
            }
        }

        public interface b<A, B> {
            A doBackward(B b);

            B doForward(A a);
        }

        private class c implements Map.Entry<K, V> {
            private final Map.Entry<K, RealValue> realEntry;

            public c(Map.Entry<K, RealValue> entry) {
                this.realEntry = entry;
            }

            @Override // java.util.Map.Entry
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                return (obj instanceof Map.Entry) && getKey().equals(((Map.Entry) obj).getKey()) && getValue().equals(getValue());
            }

            @Override // java.util.Map.Entry
            public K getKey() {
                return this.realEntry.getKey();
            }

            @Override // java.util.Map.Entry
            public V getValue() {
                return (V) MapAdapter.this.valueConverter.doForward(this.realEntry.getValue());
            }

            @Override // java.util.Map.Entry
            public int hashCode() {
                return this.realEntry.hashCode();
            }

            @Override // java.util.Map.Entry
            public V setValue(V v) {
                RealValue value = this.realEntry.setValue((RealValue) MapAdapter.this.valueConverter.doBackward(v));
                if (value == null) {
                    return null;
                }
                return (V) MapAdapter.this.valueConverter.doForward(value);
            }
        }

        private class d implements Iterator<Map.Entry<K, V>> {
            private final Iterator<Map.Entry<K, RealValue>> realIterator;

            public d(Iterator<Map.Entry<K, RealValue>> it) {
                this.realIterator = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.realIterator.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return new c(this.realIterator.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.realIterator.remove();
            }
        }

        private class e extends AbstractSet<Map.Entry<K, V>> {
            private final Set<Map.Entry<K, RealValue>> realSet;

            public e(Set<Map.Entry<K, RealValue>> set) {
                this.realSet = set;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return new d(this.realSet.iterator());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return this.realSet.size();
            }
        }

        public MapAdapter(Map<K, RealValue> map, b<RealValue, V> bVar) {
            this.realMap = map;
            this.valueConverter = bVar;
        }

        public static <T extends c> b<Integer, T> newEnumConverter(d<T> dVar, T t) {
            return new a(dVar, t);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new e(this.realMap.entrySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            RealValue realvalue = this.realMap.get(obj);
            if (realvalue == null) {
                return null;
            }
            return this.valueConverter.doForward(realvalue);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            RealValue realvaluePut = this.realMap.put(k, this.valueConverter.doBackward(v));
            if (realvaluePut == null) {
                return null;
            }
            return this.valueConverter.doForward(realvaluePut);
        }
    }

    public interface a extends j<Boolean> {
        void addBoolean(boolean z);

        boolean getBoolean(int i);

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ boolean isModifiable();

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ void makeImmutable();

        @Override // 
        a mutableCopyWithCapacity(int i);

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        /* synthetic */ j<E> mutableCopyWithCapacity(int i);

        boolean setBoolean(int i, boolean z);
    }

    public interface b extends j<Double> {
        void addDouble(double d2);

        double getDouble(int i);

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ boolean isModifiable();

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ void makeImmutable();

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        b mutableCopyWithCapacity(int i);

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        /* synthetic */ j<E> mutableCopyWithCapacity(int i);

        double setDouble(int i, double d2);
    }

    public interface c {
        int getNumber();
    }

    public interface d<T extends c> {
        T findValueByNumber(int i);
    }

    public interface e {
        boolean isInRange(int i);
    }

    public interface f extends j<Float> {
        void addFloat(float f2);

        float getFloat(int i);

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ boolean isModifiable();

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ void makeImmutable();

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        f mutableCopyWithCapacity(int i);

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        /* synthetic */ j<E> mutableCopyWithCapacity(int i);

        float setFloat(int i, float f2);
    }

    public interface g extends j<Integer> {
        void addInt(int i);

        int getInt(int i);

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ boolean isModifiable();

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ void makeImmutable();

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        g mutableCopyWithCapacity(int i);

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        /* synthetic */ j<E> mutableCopyWithCapacity(int i);

        int setInt(int i, int i2);
    }

    public static class h<F, T> extends AbstractList<T> {
        private final a<F, T> converter;
        private final List<F> fromList;

        public interface a<F, T> {
            T convert(F f2);
        }

        public h(List<F> list, a<F, T> aVar) {
            this.fromList = list;
            this.converter = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.converter.convert(this.fromList.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    public interface i extends j<Long> {
        void addLong(long j);

        long getLong(int i);

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ boolean isModifiable();

        @Override // com.google.protobuf.Internal.j
        /* synthetic */ void makeImmutable();

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        i mutableCopyWithCapacity(int i);

        @Override // com.google.protobuf.Internal.j, com.google.protobuf.Internal.a
        /* synthetic */ j<E> mutableCopyWithCapacity(int i);

        long setLong(int i, long j);
    }

    public interface j<E> extends List<E>, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        j<E> mutableCopyWithCapacity(int i);
    }

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_BYTE_BUFFER = ByteBuffer.wrap(bArr);
        EMPTY_CODED_INPUT_STREAM = CodedInputStream.newInstance(bArr);
    }

    private Internal() {
    }

    public static byte[] byteArrayDefaultValue(String str) {
        return str.getBytes(ISO_8859_1);
    }

    public static ByteBuffer byteBufferDefaultValue(String str) {
        return ByteBuffer.wrap(byteArrayDefaultValue(str));
    }

    public static ByteString bytesDefaultValue(String str) {
        return ByteString.copyFrom(str.getBytes(ISO_8859_1));
    }

    static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    static <T> T checkNotNull(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static ByteBuffer copyByteBuffer(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.clear();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferDuplicate.capacity());
        byteBufferAllocate.put(byteBufferDuplicate);
        byteBufferAllocate.clear();
        return byteBufferAllocate;
    }

    public static boolean equals(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer.capacity() != byteBuffer2.capacity()) {
            return false;
        }
        return byteBuffer.duplicate().clear().equals(byteBuffer2.duplicate().clear());
    }

    public static boolean equalsByteBuffer(List<ByteBuffer> list, List<ByteBuffer> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!equalsByteBuffer(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static <T extends q0> T getDefaultInstance(Class<T> cls) {
        try {
            java.lang.reflect.Method method = cls.getMethod("getDefaultInstance", new Class[0]);
            return (T) method.invoke(method, new Object[0]);
        } catch (Exception e2) {
            throw new RuntimeException("Failed to get default instance for " + cls, e2);
        }
    }

    public static int hashBoolean(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int hashCode(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + hashCode(it.next());
        }
        return iHashCode;
    }

    public static int hashCode(byte[] bArr) {
        return hashCode(bArr, 0, bArr.length);
    }

    static int hashCode(byte[] bArr, int i2, int i3) {
        int iPartialHash = partialHash(i3, bArr, i2, i3);
        if (iPartialHash == 0) {
            return 1;
        }
        return iPartialHash;
    }

    public static int hashCodeByteBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int iPartialHash = partialHash(byteBuffer.capacity(), byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
            if (iPartialHash == 0) {
                return 1;
            }
            return iPartialHash;
        }
        int iCapacity = byteBuffer.capacity() <= 4096 ? byteBuffer.capacity() : 4096;
        byte[] bArr = new byte[iCapacity];
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.clear();
        int iCapacity2 = byteBuffer.capacity();
        while (byteBufferDuplicate.remaining() > 0) {
            int iRemaining = byteBufferDuplicate.remaining() <= iCapacity ? byteBufferDuplicate.remaining() : iCapacity;
            byteBufferDuplicate.get(bArr, 0, iRemaining);
            iCapacity2 = partialHash(iCapacity2, bArr, 0, iRemaining);
        }
        if (iCapacity2 == 0) {
            return 1;
        }
        return iCapacity2;
    }

    public static int hashCodeByteBuffer(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it = list.iterator();
        int iHashCodeByteBuffer = 1;
        while (it.hasNext()) {
            iHashCodeByteBuffer = (iHashCodeByteBuffer * 31) + hashCodeByteBuffer(it.next());
        }
        return iHashCodeByteBuffer;
    }

    public static int hashEnum(c cVar) {
        return cVar.getNumber();
    }

    public static int hashEnumList(List<? extends c> list) {
        Iterator<? extends c> it = list.iterator();
        int iHashEnum = 1;
        while (it.hasNext()) {
            iHashEnum = (iHashEnum * 31) + hashEnum(it.next());
        }
        return iHashEnum;
    }

    public static int hashLong(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static boolean isValidUtf8(ByteString byteString) {
        return byteString.isValidUtf8();
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return c2.isValidUtf8(bArr);
    }

    static Object mergeMessage(Object obj, Object obj2) {
        return ((q0) obj).toBuilder().mergeFrom((q0) obj2).buildPartial();
    }

    static int partialHash(int i2, byte[] bArr, int i3, int i4) {
        for (int i5 = i3; i5 < i3 + i4; i5++) {
            i2 = (i2 * 31) + bArr[i5];
        }
        return i2;
    }

    public static String stringDefaultValue(String str) {
        return new String(str.getBytes(ISO_8859_1), UTF_8);
    }

    public static byte[] toByteArray(String str) {
        return str.getBytes(UTF_8);
    }

    public static String toStringUtf8(byte[] bArr) {
        return new String(bArr, UTF_8);
    }
}
