package com.hyprmx.android.sdk.utility;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class u0 {
    public static final Charset a = Charset.forName(C.ASCII_NAME);

    static {
        Charset.forName(C.UTF8_NAME);
    }

    public static void a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
        if (file.delete()) {
            return;
        }
        throw new IOException("failed to delete directory file: " + file);
    }
}
