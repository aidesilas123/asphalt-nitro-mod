package io.didomi.iabtcf.decoder.utils;

import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public class BitSetIntIterable extends IntIterable {
    public static final BitSetIntIterable EMPTY = new BitSetIntIterable(new BitSet());
    private final BitSet bs;

    public static class Builder {
        private final BitSet bs;

        private Builder() {
            this(new BitSet());
        }

        private Builder(BitSetIntIterable bitSetIntIterable) {
            this(bitSetIntIterable.m1228clone().bs);
        }

        private Builder(BitSet bitSet) {
            this.bs = bitSet;
        }

        public Builder add(int i) {
            this.bs.set(i);
            return this;
        }

        public Builder add(Builder builder) {
            this.bs.or(builder.bs);
            return this;
        }

        public Builder add(BitSetIntIterable bitSetIntIterable) {
            this.bs.or(bitSetIntIterable.bs);
            return this;
        }

        public Builder add(IntIterable intIterable) {
            IntIterator intIterator = intIterable.intIterator();
            while (intIterator.hasNext()) {
                this.bs.set(intIterator.nextInt());
            }
            return this;
        }

        public BitSetIntIterable build() {
            return new BitSetIntIterable((BitSet) this.bs.clone());
        }

        public Builder clear() {
            this.bs.clear();
            return this;
        }

        public int max() {
            if (this.bs.isEmpty()) {
                return 0;
            }
            return this.bs.length() - 1;
        }
    }

    private BitSetIntIterable(BitSet bitSet) {
        this.bs = bitSet;
    }

    public static BitSetIntIterable from(IntIterable intIterable) {
        if (intIterable instanceof BitSetIntIterable) {
            return ((BitSetIntIterable) intIterable).m1228clone();
        }
        BitSet bitSet = new BitSet();
        IntIterator intIterator = intIterable.intIterator();
        while (intIterator.hasNext()) {
            bitSet.set(intIterator.nextInt());
        }
        return new BitSetIntIterable(bitSet);
    }

    public static BitSetIntIterable from(BitSet bitSet) {
        return new BitSetIntIterable((BitSet) bitSet.clone());
    }

    public static BitSetIntIterable from(Collection<Integer> collection) {
        BitSet bitSet = new BitSet();
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().intValue());
        }
        return new BitSetIntIterable(bitSet);
    }

    public static BitSetIntIterable from(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i : iArr) {
            bitSet.set(i);
        }
        return new BitSetIntIterable(bitSet);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static Builder newBuilder(BitSetIntIterable bitSetIntIterable) {
        return new Builder();
    }

    public static Builder newBuilder(IntIterable intIterable) {
        return new Builder();
    }

    public static Builder newBuilder(BitSet bitSet) {
        return new Builder();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitSetIntIterable m1228clone() {
        return new BitSetIntIterable((BitSet) this.bs.clone());
    }

    @Override // io.didomi.iabtcf.decoder.utils.IntIterable
    public boolean contains(int i) {
        if (i < 0) {
            return false;
        }
        return this.bs.get(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BitSetIntIterable bitSetIntIterable = (BitSetIntIterable) obj;
        BitSet bitSet = this.bs;
        return bitSet == null ? bitSetIntIterable.bs == null : bitSet.equals(bitSetIntIterable.bs);
    }

    public int hashCode() {
        BitSet bitSet = this.bs;
        return 31 + (bitSet == null ? 0 : bitSet.hashCode());
    }

    @Override // io.didomi.iabtcf.decoder.utils.IntIterable
    public IntIterator intIterator() {
        return new IntIterator() { // from class: io.didomi.iabtcf.decoder.utils.BitSetIntIterable.1
            int currentIndex = start();

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.currentIndex != -1;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Integer next() {
                return Integer.valueOf(nextInt());
            }

            @Override // io.didomi.iabtcf.decoder.utils.OfInt
            public int nextInt() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i = this.currentIndex;
                this.currentIndex = BitSetIntIterable.this.bs.nextSetBit(this.currentIndex + 1);
                return i;
            }

            public int start() {
                if (BitSetIntIterable.this.bs.isEmpty()) {
                    return -1;
                }
                return BitSetIntIterable.this.bs.nextSetBit(0);
            }
        };
    }

    public BitSet toBitSet() {
        return (BitSet) this.bs.clone();
    }

    public String toString() {
        return this.bs.toString();
    }
}
