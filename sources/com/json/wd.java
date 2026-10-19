package com.json;

import android.text.TextUtils;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
class wd implements Callable<q3> {
    private final vd a;
    private final String b;
    private long c;

    wd(vd vdVar, String str, long j) {
        this.a = vdVar;
        this.b = str;
        this.c = j;
    }

    int a(byte[] bArr, String str) throws Exception {
        return IronSourceStorageUtils.saveFile(bArr, str);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public q3 call() {
        int i;
        int iB;
        if (this.c == 0) {
            this.c = 1L;
        }
        q3 q3VarB = null;
        for (int i2 = 0; i2 < this.c && ((iB = (q3VarB = b(this.a.e(), i2, this.a.a(), this.a.c())).b()) == 1008 || iB == 1009); i2++) {
        }
        if (q3VarB != null && q3VarB.a() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.b);
            String str = File.separator;
            sb.append(str);
            sb.append(this.a.b().getName());
            String string = sb.toString();
            String str2 = this.a.d() + str + p2.E + this.a.b().getName();
            try {
                if (a(q3VarB.a(), str2) == 0) {
                    q3VarB.a(1006);
                } else if (!c(str2, string)) {
                    q3VarB.a(1014);
                }
            } catch (FileNotFoundException unused) {
                i = 1018;
                q3VarB.a(i);
            } catch (Error e2) {
                if (!TextUtils.isEmpty(e2.getMessage())) {
                    Logger.i("FileWorkerThread", e2.getMessage());
                }
                i = 1019;
                q3VarB.a(i);
            } catch (Exception e3) {
                if (!TextUtils.isEmpty(e3.getMessage())) {
                    Logger.i("FileWorkerThread", e3.getMessage());
                }
                q3VarB.a(1009);
            }
        }
        return q3VarB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v0, types: [int] */
    q3 b(String str, int i, int i2, int i3) throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        InputStream inputStream2;
        q3 q3Var = new q3();
        if (TextUtils.isEmpty(str)) {
            q3Var.a(str);
            q3Var.a(1007);
            return q3Var;
        }
        ?? r2 = 0;
        InputStream inputStream3 = null;
        r2 = 0;
        HttpURLConnection httpURLConnection2 = null;
        HttpURLConnection httpURLConnection3 = null;
        int responseCode = 0;
        try {
            try {
                try {
                    try {
                        URL url = new URL(str);
                        url.toURI();
                        httpURLConnection = (HttpURLConnection) url.openConnection();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                }
                try {
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(i2);
                    httpURLConnection.setReadTimeout(i3);
                    httpURLConnection.connect();
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 400) {
                        Logger.i("FileWorkerThread", " RESPONSE CODE: " + responseCode + " URL: " + str + " ATTEMPT: " + i);
                        responseCode = 1011;
                    } else {
                        inputStream3 = httpURLConnection.getInputStream();
                        q3Var.a(d(inputStream3));
                    }
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                    httpURLConnection.disconnect();
                } catch (FileNotFoundException unused) {
                    i = 1018;
                    if (0 != 0) {
                        r2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                } catch (Error e2) {
                    e = e2;
                    inputStream2 = null;
                    httpURLConnection2 = httpURLConnection;
                    responseCode = 1019;
                    if (!TextUtils.isEmpty(e.getMessage())) {
                        Logger.i("FileWorkerThread", e.getMessage());
                    }
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (MalformedURLException unused2) {
                    i = 1004;
                    if (0 != 0) {
                        r2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                } catch (SocketTimeoutException unused3) {
                    i = 1008;
                    if (0 != 0) {
                        r2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                } catch (URISyntaxException unused4) {
                    i = 1010;
                    if (0 != 0) {
                        r2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                } catch (Exception e3) {
                    e = e3;
                    inputStream = null;
                    httpURLConnection3 = httpURLConnection;
                    if (!TextUtils.isEmpty(e.getMessage())) {
                        Logger.i("FileWorkerThread", e.getMessage());
                    }
                    i = 1009;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(i);
                    return q3Var;
                } catch (Throwable th3) {
                    th = th3;
                    if (r2 != 0) {
                        try {
                            r2.close();
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                            q3Var.a(str);
                            q3Var.a(0);
                            throw th;
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    q3Var.a(str);
                    q3Var.a(0);
                    throw th;
                }
            } catch (FileNotFoundException unused5) {
                httpURLConnection = null;
            } catch (Error e4) {
                e = e4;
                inputStream2 = null;
            } catch (MalformedURLException unused6) {
                httpURLConnection = null;
            } catch (SocketTimeoutException unused7) {
                httpURLConnection = null;
            } catch (URISyntaxException unused8) {
                httpURLConnection = null;
            } catch (Exception e5) {
                e = e5;
                inputStream = null;
            } catch (Throwable th5) {
                th = th5;
                httpURLConnection = null;
            }
            q3Var.a(str);
            q3Var.a(responseCode);
            return q3Var;
        } catch (Throwable th6) {
            th = th6;
            httpURLConnection = null;
            r2 = i2;
        }
    }

    boolean c(String str, String str2) throws Exception {
        return IronSourceStorageUtils.renameFile(str, str2);
    }

    byte[] d(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }
}
