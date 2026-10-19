package com.tapjoy.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.net.ContentHandler;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public final class i9 extends ContentHandler {
    public static final i9 a = new i9();

    @Override // java.net.ContentHandler
    public final Object getContent(URLConnection uRLConnection) throws IOException {
        Bitmap bitmapDecodeStream;
        InputStream inputStream = uRLConnection.getInputStream();
        int i = 1;
        while (true) {
            try {
                try {
                    bitmapDecodeStream = inputStream instanceof u9 ? BitmapFactory.decodeStream(inputStream) : BitmapFactory.decodeStream(new u9(inputStream));
                } catch (OutOfMemoryError e2) {
                    if (i >= 10) {
                        throw e2;
                    }
                    try {
                        System.gc();
                        i++;
                    } catch (OutOfMemoryError unused) {
                        bitmapDecodeStream = null;
                        return bitmapDecodeStream;
                    }
                    bitmapDecodeStream = null;
                }
            } finally {
                inputStream.close();
            }
        }
    }
}
