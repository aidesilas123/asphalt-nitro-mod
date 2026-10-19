package com.bytedance.sdk.component.b.a.a.a;

import com.bytedance.sdk.component.b.a.i;
import com.bytedance.sdk.component.b.a.p;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: compiled from: NetResponseBody.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends p {
    HttpURLConnection a;
    InputStream b;

    g(HttpURLConnection httpURLConnection) throws IOException {
        this.a = httpURLConnection;
        this.b = new e(httpURLConnection.getInputStream(), httpURLConnection);
    }

    @Override // com.bytedance.sdk.component.b.a.p
    public long a() {
        try {
            return this.a.getContentLength();
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.b.a.p
    public String b() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = stringBuffer.toString();
                    close();
                    return string;
                }
                stringBuffer.append(line + "\n");
            }
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.b.a.p
    public InputStream c() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.b.a.p, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.b.close();
            this.a.disconnect();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.b.a.p
    public byte[] d() {
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = this.b.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.component.b.a.p
    public i e() {
        if (this.a.getContentType() != null) {
            return i.a(this.a.getContentType());
        }
        return null;
    }
}
