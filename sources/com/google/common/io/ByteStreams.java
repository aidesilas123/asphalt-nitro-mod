package com.google.common.io;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class ByteStreams {
    private static final OutputStream a = new a();

    class a extends OutputStream {
        a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            Preconditions.checkNotNull(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(bArr);
            Preconditions.checkPositionIndexes(i, i2 + i, bArr.length);
        }
    }

    private static class b implements com.google.common.io.b {
        final DataInput a;

        b(ByteArrayInputStream byteArrayInputStream) {
            this.a = new DataInputStream(byteArrayInputStream);
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            try {
                return this.a.readBoolean();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public byte readByte() {
            try {
                return this.a.readByte();
            } catch (EOFException e2) {
                throw new IllegalStateException(e2);
            } catch (IOException e3) {
                throw new AssertionError(e3);
            }
        }

        @Override // java.io.DataInput
        public char readChar() {
            try {
                return this.a.readChar();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public double readDouble() {
            try {
                return this.a.readDouble();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public float readFloat() {
            try {
                return this.a.readFloat();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) {
            try {
                this.a.readFully(bArr);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) {
            try {
                this.a.readFully(bArr, i, i2);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public int readInt() {
            try {
                return this.a.readInt();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public String readLine() {
            try {
                return this.a.readLine();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public long readLong() {
            try {
                return this.a.readLong();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.b, java.io.DataInput
        public short readShort() {
            try {
                return this.a.readShort();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public String readUTF() {
            try {
                return this.a.readUTF();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            try {
                return this.a.readUnsignedByte();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() {
            try {
                return this.a.readUnsignedShort();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // java.io.DataInput
        public int skipBytes(int i) {
            try {
                return this.a.skipBytes(i);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    private static class c implements com.google.common.io.c {
        final DataOutput a;
        final ByteArrayOutputStream b;

        c(ByteArrayOutputStream byteArrayOutputStream) {
            this.b = byteArrayOutputStream;
            this.a = new DataOutputStream(byteArrayOutputStream);
        }

        @Override // java.io.DataOutput
        public void write(int i) {
            try {
                this.a.write(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void write(byte[] bArr) {
            try {
                this.a.write(bArr);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void write(byte[] bArr, int i, int i2) {
            try {
                this.a.write(bArr, i, i2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeBoolean(boolean z) {
            try {
                this.a.writeBoolean(z);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeByte(int i) {
            try {
                this.a.writeByte(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeBytes(String str) {
            try {
                this.a.writeBytes(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeChar(int i) {
            try {
                this.a.writeChar(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeChars(String str) {
            try {
                this.a.writeChars(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeDouble(double d2) {
            try {
                this.a.writeDouble(d2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeFloat(float f2) {
            try {
                this.a.writeFloat(f2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeInt(int i) {
            try {
                this.a.writeInt(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeLong(long j) {
            try {
                this.a.writeLong(j);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeShort(int i) {
            try {
                this.a.writeShort(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // java.io.DataOutput
        public void writeUTF(String str) {
            try {
                this.a.writeUTF(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    private static final class d extends FilterInputStream {
        private long a;
        private long b;

        d(InputStream inputStream, long j) {
            super(inputStream);
            this.b = -1L;
            Preconditions.checkNotNull(inputStream);
            Preconditions.checkArgument(j >= 0, "limit must be non-negative");
            this.a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.b = this.a;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.a == 0) {
                return -1;
            }
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.a--;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.a;
            if (j == 0) {
                return -1;
            }
            int i3 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (i3 != -1) {
                this.a -= (long) i3;
            }
            return i3;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.b == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.a = this.b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(Math.min(j, this.a));
            this.a -= jSkip;
            return jSkip;
        }
    }

    private ByteStreams() {
    }

    private static byte[] a(Queue<byte[]> queue, int i) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] bArrRemove = queue.remove();
        if (bArrRemove.length == i) {
            return bArrRemove;
        }
        int length = i - bArrRemove.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArrRemove, i);
        while (length > 0) {
            byte[] bArrRemove2 = queue.remove();
            int iMin = Math.min(length, bArrRemove2.length);
            System.arraycopy(bArrRemove2, 0, bArrCopyOf, i - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    static byte[] b() {
        return new byte[8192];
    }

    private static long c(InputStream inputStream, long j) throws IOException {
        int iAvailable = inputStream.available();
        if (iAvailable == 0) {
            return 0L;
        }
        return inputStream.skip(Math.min(iAvailable, j));
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(outputStream);
        byte[] bArrB = b();
        long j = 0;
        while (true) {
            int i = inputStream.read(bArrB);
            if (i == -1) {
                return j;
            }
            outputStream.write(bArrB, 0, i);
            j += (long) i;
        }
    }

    public static long copy(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        Preconditions.checkNotNull(readableByteChannel);
        Preconditions.checkNotNull(writableByteChannel);
        long jWrite = 0;
        if (!(readableByteChannel instanceof FileChannel)) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(b());
            while (readableByteChannel.read(byteBufferWrap) != -1) {
                h.b(byteBufferWrap);
                while (byteBufferWrap.hasRemaining()) {
                    jWrite += (long) writableByteChannel.write(byteBufferWrap);
                }
                h.a(byteBufferWrap);
            }
            return jWrite;
        }
        FileChannel fileChannel = (FileChannel) readableByteChannel;
        long jPosition = fileChannel.position();
        long j = jPosition;
        while (true) {
            long jTransferTo = fileChannel.transferTo(j, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED, writableByteChannel);
            j += jTransferTo;
            fileChannel.position(j);
            if (jTransferTo <= 0 && j >= fileChannel.size()) {
                return j - jPosition;
            }
        }
    }

    static long d(InputStream inputStream, long j) throws IOException {
        byte[] bArr = null;
        long j2 = 0;
        while (j2 < j) {
            long j3 = j - j2;
            long jC = c(inputStream, j3);
            if (jC == 0) {
                int iMin = (int) Math.min(j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (bArr == null) {
                    bArr = new byte[iMin];
                }
                jC = inputStream.read(bArr, 0, iMin);
                if (jC == -1) {
                    break;
                }
            }
            j2 += jC;
        }
        return j2;
    }

    static byte[] e(InputStream inputStream, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "expectedSize (%s) must be non-negative", j);
        if (j > 2147483639) {
            StringBuilder sb = new StringBuilder(62);
            sb.append(j);
            sb.append(" bytes is too large to fit in a byte array");
            throw new OutOfMemoryError(sb.toString());
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            int i3 = i - i2;
            int i4 = inputStream.read(bArr, i3, i2);
            if (i4 == -1) {
                return Arrays.copyOf(bArr, i3);
            }
            i2 -= i4;
        }
        int i5 = inputStream.read();
        if (i5 == -1) {
            return bArr;
        }
        ArrayDeque arrayDeque = new ArrayDeque(22);
        arrayDeque.add(bArr);
        arrayDeque.add(new byte[]{(byte) i5});
        return f(inputStream, arrayDeque, i + 1);
    }

    public static long exhaust(InputStream inputStream) throws IOException {
        byte[] bArrB = b();
        long j = 0;
        while (true) {
            long j2 = inputStream.read(bArrB);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    private static byte[] f(InputStream inputStream, Queue<byte[]> queue, int i) throws IOException {
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(i) * 2));
        while (i < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i);
            byte[] bArr = new byte[iMin2];
            queue.add(bArr);
            int i2 = 0;
            while (i2 < iMin2) {
                int i3 = inputStream.read(bArr, i2, iMin2 - i2);
                if (i3 == -1) {
                    return a(queue, i);
                }
                i2 += i3;
                i += i3;
            }
            iMin = IntMath.saturatedMultiply(iMin, iMin < 4096 ? 4 : 2);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    public static InputStream limit(InputStream inputStream, long j) {
        return new d(inputStream, j);
    }

    public static com.google.common.io.b newDataInput(ByteArrayInputStream byteArrayInputStream) {
        return new b((ByteArrayInputStream) Preconditions.checkNotNull(byteArrayInputStream));
    }

    public static com.google.common.io.b newDataInput(byte[] bArr) {
        return newDataInput(new ByteArrayInputStream(bArr));
    }

    public static com.google.common.io.b newDataInput(byte[] bArr, int i) {
        Preconditions.checkPositionIndex(i, bArr.length);
        return newDataInput(new ByteArrayInputStream(bArr, i, bArr.length - i));
    }

    public static com.google.common.io.c newDataOutput() {
        return newDataOutput(new ByteArrayOutputStream());
    }

    public static com.google.common.io.c newDataOutput(int i) {
        if (i >= 0) {
            return newDataOutput(new ByteArrayOutputStream(i));
        }
        throw new IllegalArgumentException(String.format("Invalid size: %s", Integer.valueOf(i)));
    }

    public static com.google.common.io.c newDataOutput(ByteArrayOutputStream byteArrayOutputStream) {
        return new c((ByteArrayOutputStream) Preconditions.checkNotNull(byteArrayOutputStream));
    }

    public static OutputStream nullOutputStream() {
        return a;
    }

    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        int i3 = 0;
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i2)));
        }
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    public static <T> T readBytes(InputStream inputStream, com.google.common.io.d<T> dVar) throws IOException {
        int i;
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(dVar);
        byte[] bArrB = b();
        do {
            i = inputStream.read(bArrB);
            if (i == -1) {
                break;
            }
        } while (dVar.a(bArrB, 0, i));
        return dVar.getResult();
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = read(inputStream, bArr, i, i2);
        if (i3 == i2) {
            return;
        }
        StringBuilder sb = new StringBuilder(81);
        sb.append("reached end of stream after reading ");
        sb.append(i3);
        sb.append(" bytes; ");
        sb.append(i2);
        sb.append(" bytes expected");
        throw new EOFException(sb.toString());
    }

    public static void skipFully(InputStream inputStream, long j) throws IOException {
        long jD = d(inputStream, j);
        if (jD >= j) {
            return;
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append("reached end of stream after skipping ");
        sb.append(jD);
        sb.append(" bytes; ");
        sb.append(j);
        sb.append(" bytes expected");
        throw new EOFException(sb.toString());
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        return f(inputStream, new ArrayDeque(20), 0);
    }
}
