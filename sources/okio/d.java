package okio;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: BufferedSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface d extends w, WritableByteChannel {
    long D(y yVar) throws IOException;

    d P(ByteString byteString) throws IOException;

    d emit() throws IOException;

    d emitCompleteSegments() throws IOException;

    @Override // okio.w, java.io.Flushable
    void flush() throws IOException;

    d write(byte[] bArr) throws IOException;

    d write(byte[] bArr, int i, int i2) throws IOException;

    d writeByte(int i) throws IOException;

    d writeDecimalLong(long j) throws IOException;

    d writeHexadecimalUnsignedLong(long j) throws IOException;

    d writeInt(int i) throws IOException;

    d writeShort(int i) throws IOException;

    d writeUtf8(String str) throws IOException;

    Buffer y();
}
