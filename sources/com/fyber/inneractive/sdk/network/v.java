package com.fyber.inneractive.sdk.network;

import android.content.Context;
import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.util.IAlog;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class v<ResultData> {
    public final Context a;
    public com.fyber.inneractive.sdk.cache.a<ResultData> b;
    public SharedPreferences c;

    public static class a extends Exception {
    }

    public v(Context context, com.fyber.inneractive.sdk.cache.a<ResultData> aVar) {
        this.a = context;
        this.b = aVar;
    }

    public final String a(String str) throws Throwable {
        FileInputStream fileInputStreamOpenFileInput;
        IAlog.a("reading local file: %s", str);
        FileInputStream fileInputStream = null;
        str = null;
        str = null;
        String str2 = null;
        try {
            fileInputStreamOpenFileInput = this.a.openFileInput(str);
            try {
                try {
                    byte[] bArr = new byte[fileInputStreamOpenFileInput.available()];
                    fileInputStreamOpenFileInput.read(bArr);
                    String str3 = new String(bArr, C.UTF8_NAME);
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (Exception e2) {
                        IAlog.e("Failed closing local file: %s", e2.getMessage());
                    }
                    str2 = str3;
                } catch (Exception e3) {
                    e = e3;
                    if (e instanceof FileNotFoundException) {
                        throw new FileNotFoundException();
                    }
                    IAlog.a("Failed reading local file: %s", e.getMessage());
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (Exception e4) {
                            IAlog.e("Failed closing local file: %s", e4.getMessage());
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStreamOpenFileInput;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        IAlog.e("Failed closing local file: %s", e5.getMessage());
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            fileInputStreamOpenFileInput = null;
        } catch (Throwable th2) {
            th = th2;
        }
        IAlog.a("local file %s read successfully", str);
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public boolean a(String str, String str2) {
        boolean z;
        int i = 1;
        i = 1;
        i = 1;
        IAlog.a("caching file %s", str);
        FileOutputStream fileOutputStreamOpenFileOutput = null;
        try {
            try {
                fileOutputStreamOpenFileOutput = this.a.openFileOutput(str, 0);
                fileOutputStreamOpenFileOutput.write(str2.getBytes());
            } catch (Throwable th) {
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Exception e2) {
                        Object[] objArr = new Object[i];
                        objArr[0] = e2.getMessage();
                        IAlog.e("Failed closing cache file: %s", objArr);
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
        try {
            IAlog.a("File cached successfully", new Object[0]);
            try {
                fileOutputStreamOpenFileOutput.close();
            } catch (Exception e4) {
                IAlog.e("Failed closing cache file: %s", e4.getMessage());
            }
        } catch (Exception e5) {
            e = e5;
            z = true;
            IAlog.e("Failed caching file: %s", e.getMessage());
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (Exception e6) {
                    IAlog.e("Failed closing cache file: %s", e6.getMessage());
                }
            }
            i = z;
        }
        return i;
    }
}
