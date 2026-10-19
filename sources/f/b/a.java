package f.b;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a implements g.a.a.a {
    private final lzma.sdk.lzma.a a;

    public a(lzma.sdk.lzma.a aVar) {
        this.a = aVar;
    }

    @Override // g.a.a.a
    public void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[5];
        if (inputStream.read(bArr) != 5) {
            throw new IOException("LZMA file has no header!");
        }
        if (!this.a.c(bArr)) {
            throw new IOException("Decoder properties cannot be set!");
        }
        long j = 0;
        for (int i = 0; i < 8; i++) {
            int i2 = inputStream.read();
            if (i2 < 0) {
                throw new IOException("Can't read stream size");
            }
            j |= ((long) i2) << (i * 8);
        }
        if (!this.a.a(inputStream, outputStream, j)) {
            throw new IOException("Decoding unsuccessful!");
        }
    }
}
