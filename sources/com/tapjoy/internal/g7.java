package com.tapjoy.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g7 {
    public static String a(File file) {
        Charset charset = y2.a;
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, charset);
            StringBuilder sb = new StringBuilder();
            CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
            while (true) {
                int i = inputStreamReader.read(charBufferAllocate);
                if (i == -1) {
                    return sb.toString();
                }
                charBufferAllocate.flip();
                sb.append((CharSequence) charBufferAllocate, 0, i);
            }
        } finally {
            l8.a(fileInputStream);
        }
    }
}
