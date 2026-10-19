package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
final class SortedLists {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class KeyAbsentBehavior {
        public static final KeyAbsentBehavior a = new a("NEXT_LOWER", 0);
        public static final KeyAbsentBehavior b = new b("NEXT_HIGHER", 1);
        public static final KeyAbsentBehavior c = new c("INVERTED_INSERTION_INDEX", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ KeyAbsentBehavior[] f3704d = e();

        enum a extends KeyAbsentBehavior {
            a(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            int f(int i) {
                return i - 1;
            }
        }

        enum b extends KeyAbsentBehavior {
            b(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int f(int i) {
                return i;
            }
        }

        enum c extends KeyAbsentBehavior {
            c(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int f(int i) {
                return ~i;
            }
        }

        private KeyAbsentBehavior(String str, int i) {
        }

        private static /* synthetic */ KeyAbsentBehavior[] e() {
            return new KeyAbsentBehavior[]{a, b, c};
        }

        public static KeyAbsentBehavior valueOf(String str) {
            return (KeyAbsentBehavior) Enum.valueOf(KeyAbsentBehavior.class, str);
        }

        public static KeyAbsentBehavior[] values() {
            return (KeyAbsentBehavior[]) f3704d.clone();
        }

        abstract int f(int i);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class KeyPresentBehavior {
        public static final KeyPresentBehavior a = new a("ANY_PRESENT", 0);
        public static final KeyPresentBehavior b = new b("LAST_PRESENT", 1);
        public static final KeyPresentBehavior c = new c("FIRST_PRESENT", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final KeyPresentBehavior f3705d = new d("FIRST_AFTER", 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final KeyPresentBehavior f3706e = new e("LAST_BEFORE", 4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ KeyPresentBehavior[] f3707f = e();

        enum a extends KeyPresentBehavior {
            a(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i) {
                return i;
            }
        }

        enum b extends KeyPresentBehavior {
            b(String str, int i) {
                super(str, i);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i2), e2) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        }

        enum c extends KeyPresentBehavior {
            c(String str, int i) {
                super(str, i);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (comparator.compare(list.get(i3), e2) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        }

        enum d extends KeyPresentBehavior {
            d(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i) {
                return KeyPresentBehavior.b.f(comparator, e2, list, i) + 1;
            }
        }

        enum e extends KeyPresentBehavior {
            e(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i) {
                return KeyPresentBehavior.c.f(comparator, e2, list, i) - 1;
            }
        }

        private KeyPresentBehavior(String str, int i) {
        }

        private static /* synthetic */ KeyPresentBehavior[] e() {
            return new KeyPresentBehavior[]{a, b, c, f3705d, f3706e};
        }

        public static KeyPresentBehavior valueOf(String str) {
            return (KeyPresentBehavior) Enum.valueOf(KeyPresentBehavior.class, str);
        }

        public static KeyPresentBehavior[] values() {
            return (KeyPresentBehavior[]) f3707f.clone();
        }

        abstract <E> int f(Comparator<? super E> comparator, E e2, List<? extends E> list, int i);
    }

    private SortedLists() {
    }

    public static <E, K extends Comparable> int binarySearch(List<E> list, com.google.common.base.f<? super E, K> fVar, K k, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        Preconditions.checkNotNull(k);
        return binarySearch(list, fVar, k, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    public static <E, K> int binarySearch(List<E> list, com.google.common.base.f<? super E, K> fVar, K k, Comparator<? super K> comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return binarySearch((List<? extends K>) Lists.transform(list, fVar), k, comparator, keyPresentBehavior, keyAbsentBehavior);
    }

    public static <E extends Comparable> int binarySearch(List<? extends E> list, E e2, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        Preconditions.checkNotNull(e2);
        return binarySearch(list, e2, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    public static <E> int binarySearch(List<? extends E> list, E e2, Comparator<? super E> comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(keyPresentBehavior);
        Preconditions.checkNotNull(keyAbsentBehavior);
        if (!(list instanceof RandomAccess)) {
            list = Lists.newArrayList(list);
        }
        int i = 0;
        int size = list.size() - 1;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            int iCompare = comparator.compare(e2, list.get(i2));
            if (iCompare < 0) {
                size = i2 - 1;
            } else {
                if (iCompare <= 0) {
                    return i + keyPresentBehavior.f(comparator, e2, list.subList(i, size + 1), i2 - i);
                }
                i = i2 + 1;
            }
        }
        return keyAbsentBehavior.f(i);
    }
}
