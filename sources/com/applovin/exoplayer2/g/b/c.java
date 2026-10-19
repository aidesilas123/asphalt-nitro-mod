package com.applovin.exoplayer2.g.b;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private final ByteArrayOutputStream Jr;
    private final DataOutputStream Js;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.Jr = byteArrayOutputStream;
        this.Js = new DataOutputStream(byteArrayOutputStream);
    }

    private static void a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.Jr.reset();
        try {
            a(this.Js, aVar.Jm);
            String str = aVar.Jn;
            if (str == null) {
                str = "";
            }
            a(this.Js, str);
            this.Js.writeLong(aVar.Jo);
            this.Js.writeLong(aVar.Jp);
            this.Js.write(aVar.Jq);
            this.Js.flush();
            return this.Jr.toByteArray();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
