package com.kidoz.sdk.api.general.cache;

import android.content.ContentValues;
import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.json.b4;
import com.json.o2;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseDataRequest<T> {
    private static final int IO_BUFFER_SIZE = 4096;
    private ContentValues mContentValues;
    private String mUrl;

    public BaseDataRequest(String str) {
        this.mUrl = str;
        this.mContentValues = null;
    }

    public BaseDataRequest(String str, ContentValues contentValues) {
        this.mUrl = str;
        this.mContentValues = contentValues;
    }

    private String readStream(BufferedInputStream bufferedInputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            bArr = new byte[4096];
            byteArrayOutputStream = new ByteArrayOutputStream(bufferedInputStream.available());
        } catch (IOException unused) {
            byteArrayOutputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            int i = bufferedInputStream.read(bArr);
            while (i > 0) {
                byteArrayOutputStream.write(bArr, 0, i);
                i = bufferedInputStream.read(bArr);
            }
            String string = byteArrayOutputStream.toString();
            try {
                bufferedInputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException unused2) {
            }
            return string;
        } catch (IOException unused3) {
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused4) {
                    return null;
                }
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused5) {
                    throw th;
                }
            }
            if (byteArrayOutputStream2 != null) {
                byteArrayOutputStream2.close();
            }
            throw th;
        }
    }

    protected T executePrivate() {
        String strMakeGetConnection = makeGetConnection(this.mUrl, this.mContentValues);
        if (strMakeGetConnection != null) {
            return parseDataResult(strMakeGetConnection);
        }
        return null;
    }

    public T executeRequest() {
        return executePrivate();
    }

    public void executeRequestAsync(final DataRequestResult<T> dataRequestResult) {
        new CustomAsyncExecutor<Void, T>() { // from class: com.kidoz.sdk.api.general.cache.BaseDataRequest.1
            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public T executeAsync(Void r1) {
                return (T) BaseDataRequest.this.executeRequest();
            }

            @Override // com.kidoz.sdk.api.general.cache.CustomAsyncExecutor
            public void postExecute(T t) {
                DataRequestResult dataRequestResult2 = dataRequestResult;
                if (dataRequestResult2 != null) {
                    dataRequestResult2.onResult(t);
                }
            }
        }.execute(null);
    }

    protected String getUrl() {
        return this.mUrl;
    }

    protected String makeGetConnection(String str, ContentValues contentValues) {
        StringBuilder sb = new StringBuilder(str);
        if (contentValues != null && contentValues.size() > 0) {
            sb.append("?");
            Iterator<String> it = contentValues.keySet().iterator();
            if (it.hasNext()) {
                String next = it.next();
                sb.append(next);
                sb.append(o2.i.b);
                sb.append(Uri.encode(contentValues.getAsString(next)));
            }
            while (it.hasNext()) {
                String next2 = it.next();
                sb.append(o2.i.c);
                sb.append(next2);
                sb.append(o2.i.b);
                sb.append(Uri.encode(contentValues.getAsString(next2)));
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.toString()).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-length", "0");
            httpURLConnection.setChunkedStreamingMode(0);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setRequestProperty(b4.I, ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.connect();
            String stream = httpURLConnection.getResponseCode() == 200 ? readStream(new BufferedInputStream(httpURLConnection.getInputStream())) : null;
            httpURLConnection.disconnect();
            return stream;
        } catch (IOException unused) {
            return null;
        }
    }

    protected abstract T parseDataResult(String str);

    protected void setContentValues(ContentValues contentValues) {
        this.mContentValues = contentValues;
    }

    protected void setUrl(String str) {
        this.mUrl = str;
    }
}
