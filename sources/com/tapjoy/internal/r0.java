package com.tapjoy.internal;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 {
    public final File a;

    public r0(File file) {
        this.a = file;
    }

    public final void a() throws IOException {
        try {
            File file = this.a;
            String string = UUID.randomUUID().toString();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, y2.a);
                outputStreamWriter.write(string);
                outputStreamWriter.flush();
            } finally {
                l8.a(fileOutputStream);
            }
        } catch (IOException e2) {
            this.a.delete();
            throw e2;
        }
    }
}
