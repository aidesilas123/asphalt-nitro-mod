package com.google.common.hash;

import com.google.common.primitives.Longs;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes3.dex */
final class LittleEndianByteArray {
    private static final b a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class JavaLittleEndianBytes implements b {
        public static final JavaLittleEndianBytes a = new a("INSTANCE", 0);
        private static final /* synthetic */ JavaLittleEndianBytes[] b = e();

        enum a extends JavaLittleEndianBytes {
            a(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.b
            public long a(byte[] bArr, int i) {
                return Longs.fromBytes(bArr[i + 7], bArr[i + 6], bArr[i + 5], bArr[i + 4], bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
            }
        }

        private JavaLittleEndianBytes(String str, int i) {
        }

        private static /* synthetic */ JavaLittleEndianBytes[] e() {
            return new JavaLittleEndianBytes[]{a};
        }

        public static JavaLittleEndianBytes valueOf(String str) {
            return (JavaLittleEndianBytes) Enum.valueOf(JavaLittleEndianBytes.class, str);
        }

        public static JavaLittleEndianBytes[] values() {
            return (JavaLittleEndianBytes[]) b.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class UnsafeByteArray implements b {
        private static final Unsafe c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f3881d;
        public static final UnsafeByteArray a = new a("UNSAFE_LITTLE_ENDIAN", 0);
        public static final UnsafeByteArray b = new b("UNSAFE_BIG_ENDIAN", 1);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ UnsafeByteArray[] f3882e = e();

        enum a extends UnsafeByteArray {
            a(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.b
            public long a(byte[] bArr, int i) {
                return UnsafeByteArray.c.getLong(bArr, ((long) i) + ((long) UnsafeByteArray.f3881d));
            }
        }

        enum b extends UnsafeByteArray {
            b(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.b
            public long a(byte[] bArr, int i) {
                return Long.reverseBytes(UnsafeByteArray.c.getLong(bArr, ((long) i) + ((long) UnsafeByteArray.f3881d)));
            }
        }

        class c implements PrivilegedExceptionAction<Unsafe> {
            c() {
            }

            @Override // java.security.PrivilegedExceptionAction
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafeH = h();
            c = unsafeH;
            f3881d = unsafeH.arrayBaseOffset(byte[].class);
            if (unsafeH.arrayIndexScale(byte[].class) != 1) {
                throw new AssertionError();
            }
        }

        private UnsafeByteArray(String str, int i) {
        }

        private static /* synthetic */ UnsafeByteArray[] e() {
            return new UnsafeByteArray[]{a, b};
        }

        private static Unsafe h() {
            try {
                try {
                    return Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                return (Unsafe) AccessController.doPrivileged(new c());
            }
        }

        public static UnsafeByteArray valueOf(String str) {
            return (UnsafeByteArray) Enum.valueOf(UnsafeByteArray.class, str);
        }

        public static UnsafeByteArray[] values() {
            return (UnsafeByteArray[]) f3882e.clone();
        }
    }

    private interface b {
        long a(byte[] bArr, int i);
    }

    static {
        b bVar = JavaLittleEndianBytes.a;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                bVar = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? UnsafeByteArray.a : UnsafeByteArray.b;
            }
        } catch (Throwable unused) {
        }
        a = bVar;
    }

    static int a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long b(byte[] bArr, int i) {
        return a.a(bArr, i);
    }

    static long c(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, 8);
        long j = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            j |= (((long) bArr[i + i3]) & 255) << (i3 * 8);
        }
        return j;
    }
}
