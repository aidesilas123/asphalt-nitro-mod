package com.google.protobuf;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
abstract class AllocatedBuffer {

    class a extends AllocatedBuffer {
        final /* synthetic */ ByteBuffer val$buffer;

        a(ByteBuffer byteBuffer) {
            this.val$buffer = byteBuffer;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public byte[] array() {
            return this.val$buffer.array();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int arrayOffset() {
            return this.val$buffer.arrayOffset();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public boolean hasArray() {
            return this.val$buffer.hasArray();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public boolean hasNioBuffer() {
            return true;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int limit() {
            return this.val$buffer.limit();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public ByteBuffer nioBuffer() {
            return this.val$buffer;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int position() {
            return this.val$buffer.position();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public AllocatedBuffer position(int i) {
            this.val$buffer.position(i);
            return this;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int remaining() {
            return this.val$buffer.remaining();
        }
    }

    class b extends AllocatedBuffer {
        private int position;
        final /* synthetic */ byte[] val$bytes;
        final /* synthetic */ int val$length;
        final /* synthetic */ int val$offset;

        b(byte[] bArr, int i, int i2) {
            this.val$bytes = bArr;
            this.val$offset = i;
            this.val$length = i2;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public byte[] array() {
            return this.val$bytes;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int arrayOffset() {
            return this.val$offset;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public boolean hasArray() {
            return true;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public boolean hasNioBuffer() {
            return false;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int limit() {
            return this.val$length;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public ByteBuffer nioBuffer() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int position() {
            return this.position;
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public AllocatedBuffer position(int i) {
            if (i >= 0 && i <= this.val$length) {
                this.position = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid position: " + i);
        }

        @Override // com.google.protobuf.AllocatedBuffer
        public int remaining() {
            return this.val$length - this.position;
        }
    }

    AllocatedBuffer() {
    }

    public static AllocatedBuffer wrap(ByteBuffer byteBuffer) {
        Internal.checkNotNull(byteBuffer, "buffer");
        return new a(byteBuffer);
    }

    public static AllocatedBuffer wrap(byte[] bArr) {
        return wrapNoCheck(bArr, 0, bArr.length);
    }

    public static AllocatedBuffer wrap(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return wrapNoCheck(bArr, i, i2);
    }

    private static AllocatedBuffer wrapNoCheck(byte[] bArr, int i, int i2) {
        return new b(bArr, i, i2);
    }

    public abstract byte[] array();

    public abstract int arrayOffset();

    public abstract boolean hasArray();

    public abstract boolean hasNioBuffer();

    public abstract int limit();

    public abstract ByteBuffer nioBuffer();

    public abstract int position();

    public abstract AllocatedBuffer position(int i);

    public abstract int remaining();
}
