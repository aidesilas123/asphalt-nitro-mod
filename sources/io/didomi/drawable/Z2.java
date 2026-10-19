package io.didomi.drawable;

import android.os.Build;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.b4;
import com.json.mediationsdk.utils.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JE\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0016J!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u001a2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u001bJ\u001f\u0010\u0019\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001bJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0015\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u0012\u0010\u001eJ3\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u001fJ1\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\"¨\u0006#"}, d2 = {"Lio/didomi/sdk/Z2;", "", "Lio/didomi/sdk/F8;", "userAgentRepository", "<init>", "(Lio/didomi/sdk/F8;)V", "", "method", "urlString", "", "bytes", "Lio/didomi/sdk/b3;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "timeout", "", "ifModifiedSince", "", "a", "(Ljava/lang/String;Ljava/lang/String;[BLio/didomi/sdk/b3;IJ)V", "Ljava/net/URLConnection;", "connection", "(Ljava/net/URLConnection;[B)V", c.Y1, "(Lio/didomi/sdk/b3;Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/a3;", "(Lio/didomi/sdk/a3;Ljava/lang/String;)V", "Ljava/net/HttpURLConnection;", "Ljava/io/BufferedReader;", "(Ljava/net/HttpURLConnection;)Ljava/io/BufferedReader;", "(Ljava/lang/String;Lio/didomi/sdk/b3;IJ)V", AppLovinEventTypes.USER_VIEWED_CONTENT, "(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/b3;I)V", "Lio/didomi/sdk/F8;", "android_release"}, mv = {1, 8, 0})
public class Z2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final F8 userAgentRepository;

    public Z2(F8 userAgentRepository) {
        Intrinsics.checkNotNullParameter(userAgentRepository, "userAgentRepository");
        this.userAgentRepository = userAgentRepository;
    }

    private final BufferedReader a(HttpURLConnection connection) {
        BufferedReader bufferedReader;
        try {
            int responseCode = connection.getResponseCode();
            if (responseCode >= 400 || responseCode < 200) {
                InputStream errorStream = connection.getErrorStream();
                Intrinsics.checkNotNullExpressionValue(errorStream, "connection.errorStream");
                Reader inputStreamReader = new InputStreamReader(errorStream, Charsets.b);
                if (inputStreamReader instanceof BufferedReader) {
                    return (BufferedReader) inputStreamReader;
                }
                bufferedReader = new BufferedReader(inputStreamReader, 8192);
            } else {
                InputStream inputStream = connection.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "connection.inputStream");
                Reader inputStreamReader2 = new InputStreamReader(inputStream, Charsets.b);
                if (inputStreamReader2 instanceof BufferedReader) {
                    return (BufferedReader) inputStreamReader2;
                }
                bufferedReader = new BufferedReader(inputStreamReader2, 8192);
            }
            return bufferedReader;
        } catch (IOException e2) {
            Log.e("Error opening HTTP connection", e2);
            return null;
        }
    }

    public static /* synthetic */ void a(Z2 z2, String str, String str2, InterfaceC1720b3 interfaceC1720b3, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: doPostCall");
        }
        if ((i2 & 8) != 0) {
            i = 30000;
        }
        z2.a(str, str2, interfaceC1720b3, i);
    }

    static /* synthetic */ void a(Z2 z2, String str, String str2, byte[] bArr, InterfaceC1720b3 interfaceC1720b3, int i, long j, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: doCall");
        }
        z2.a(str, str2, bArr, interfaceC1720b3, (i2 & 16) != 0 ? 30000 : i, (i2 & 32) != 0 ? 0L : j);
    }

    private final void a(InterfaceC1710a3 listener, String response) {
        if (response != null) {
            try {
                if (StringsKt__StringsJVMKt.isBlank(response)) {
                    listener.a(null);
                } else {
                    listener.a(new JSONObject(response));
                }
            } catch (Exception e2) {
                Log.e("Cannot parse JSON error response", e2);
                listener.a(null);
            }
        } else {
            listener.a(null);
        }
    }

    private final void a(InterfaceC1720b3 listener, String response) {
        if (!(listener instanceof InterfaceC1730c3)) {
            if (listener instanceof InterfaceC1710a3) {
                a((InterfaceC1710a3) listener, response);
            }
        } else {
            InterfaceC1730c3 interfaceC1730c3 = (InterfaceC1730c3) listener;
            if (response == null) {
                response = "Unknown error";
            }
            interfaceC1730c3.b(response);
        }
    }

    private final void a(String method, String urlString, byte[] bytes, InterfaceC1720b3 listener, int timeout, long ifModifiedSince) {
        try {
            URLConnection uRLConnectionOpenConnection = new URL(urlString).openConnection();
            if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                Log.e$default("Invalid connection type : " + uRLConnectionOpenConnection, null, 2, null);
                a(listener, (String) null);
                return;
            }
            ((HttpURLConnection) uRLConnectionOpenConnection).setConnectTimeout(timeout);
            ((HttpURLConnection) uRLConnectionOpenConnection).setReadTimeout(timeout);
            ((HttpURLConnection) uRLConnectionOpenConnection).setRequestMethod(method);
            uRLConnectionOpenConnection.setRequestProperty("User-agent", this.userAgentRepository.a());
            uRLConnectionOpenConnection.setRequestProperty(b4.I, b4.J);
            if (ifModifiedSince > 0) {
                uRLConnectionOpenConnection.setRequestProperty("If-Modified-Since", C1917v0.a.a(ifModifiedSince));
            }
            if (Build.VERSION.SDK_INT < 21 && StringsKt__StringsJVMKt.startsWith$default(urlString, "https:", false, 2, null)) {
                HttpsURLConnection httpsURLConnection = uRLConnectionOpenConnection instanceof HttpsURLConnection ? (HttpsURLConnection) uRLConnectionOpenConnection : null;
                if (httpsURLConnection != null) {
                    httpsURLConnection.setSSLSocketFactory(new C1773g6());
                }
            }
            if (Intrinsics.areEqual(method, "POST") && bytes != null) {
                a(uRLConnectionOpenConnection, bytes);
            }
            BufferedReader bufferedReaderA = a((HttpURLConnection) uRLConnectionOpenConnection);
            if (bufferedReaderA == null) {
                a(listener, (String) null);
                return;
            }
            try {
                String text = TextStreamsKt.readText(bufferedReaderA);
                CloseableKt.closeFinally(bufferedReaderA, null);
                if (((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode() < 400 && ((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode() >= 200) {
                    b(listener, text);
                    return;
                }
                a(listener, text);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReaderA, th);
                    throw th2;
                }
            }
        } catch (MalformedURLException e2) {
            Log.e("URL is malformed", e2);
            a(listener, (String) null);
        } catch (IOException e3) {
            Log.e("Error opening HTTP connection", e3);
            a(listener, (String) null);
        } catch (Exception e4) {
            Log.e("Error sending the HTTP request", e4);
            a(listener, (String) null);
        }
    }

    private final void a(URLConnection connection, byte[] bytes) throws IOException {
        connection.setDoOutput(true);
        OutputStream outputStream = connection.getOutputStream();
        outputStream.write(bytes);
        outputStream.flush();
        outputStream.close();
    }

    private final void b(InterfaceC1710a3 listener, String response) {
        try {
            if (StringsKt__StringsJVMKt.isBlank(response)) {
                listener.b(new JSONObject());
            } else {
                listener.b(new JSONObject(response));
            }
        } catch (Exception e2) {
            Log.e("Cannot parse JSON response", e2);
            listener.b(new JSONObject());
        }
    }

    private final void b(InterfaceC1720b3 listener, String response) {
        if (listener instanceof InterfaceC1730c3) {
            ((InterfaceC1730c3) listener).a(response);
        } else if (listener instanceof InterfaceC1710a3) {
            b((InterfaceC1710a3) listener, response);
        }
    }

    public void a(String urlString, InterfaceC1720b3 listener, int timeout, long ifModifiedSince) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Intrinsics.checkNotNullParameter(listener, "listener");
        a("GET", urlString, null, listener, timeout, ifModifiedSince);
    }

    public void a(String urlString, String content, InterfaceC1720b3 listener, int timeout) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(listener, "listener");
        byte[] bytes = content.getBytes(Charsets.b);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        a(this, "POST", urlString, bytes, listener, timeout, 0L, 32, null);
    }
}
