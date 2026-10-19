package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.c;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.datatransport.cct.internal.LogResponse;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.h;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.retries.Retries;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.json.b4;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: CctTransportBackend.java */
/* JADX INFO: loaded from: classes2.dex */
final class c implements h {
    private final DataEncoder a;
    private final ConnectivityManager b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final URL f2957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f2958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f2959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f2960g;

    /* JADX INFO: compiled from: CctTransportBackend.java */
    static final class a {
        final URL a;
        final BatchedLogRequest b;

        @Nullable
        final String c;

        a(URL url, BatchedLogRequest batchedLogRequest, @Nullable String str) {
            this.a = url;
            this.b = batchedLogRequest;
            this.c = str;
        }

        a a(URL url) {
            return new a(url, this.b, this.c);
        }
    }

    /* JADX INFO: compiled from: CctTransportBackend.java */
    static final class b {
        final int a;

        @Nullable
        final URL b;
        final long c;

        b(int i, @Nullable URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        this(context, aVar, aVar2, 40000);
    }

    c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, int i) {
        this.a = BatchedLogRequest.createDataEncoder();
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f2957d = m(CCTDestination.a);
        this.f2958e = aVar2;
        this.f2959f = aVar;
        this.f2960g = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b c(a aVar) throws IOException {
        Logging.d("CctTransportBackend", "Making request to: %s", aVar.a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f2960g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, String.format("datatransport/%s android/", "3.1.2"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty(b4.I, b4.J);
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.a.a(aVar.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Logging.i("CctTransportBackend", "Status Code: " + responseCode);
                    Logging.i("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField(b4.I));
                    Logging.i("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamL = l(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, LogResponse.fromJson(new BufferedReader(new InputStreamReader(inputStreamL))).b());
                            if (inputStreamL != null) {
                                inputStreamL.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } finally {
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } finally {
                }
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (EncodingException e2) {
            e = e2;
            Logging.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e3) {
            e = e3;
            Logging.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e4) {
            e = e4;
            Logging.e("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e5) {
            e = e5;
            Logging.e("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static int d(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.e();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.e();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int e(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.e() : networkInfo.getType();
    }

    private static int f(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            Logging.e("CctTransportBackend", "Unable to find version code for package", e2);
            return -1;
        }
    }

    private BatchedLogRequest g(BackendRequest backendRequest) {
        LogEvent.a aVarProtoBuilder;
        HashMap map = new HashMap();
        for (EventInternal eventInternal : backendRequest.a()) {
            String strI = eventInternal.i();
            if (map.containsKey(strI)) {
                ((List) map.get(strI)).add(eventInternal);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                map.put(strI, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            LogRequest.a aVarB = LogRequest.builder().f(QosTier.DEFAULT).g(this.f2959f.a()).h(this.f2958e.a()).b(ClientInfo.builder().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(AndroidClientInfo.builder().m(Integer.valueOf(eventInternal2.f("sdk-version"))).j(eventInternal2.a("model")).f(eventInternal2.a("hardware")).d(eventInternal2.a("device")).l(eventInternal2.a(AppLovinEventTypes.USER_VIEWED_PRODUCT)).k(eventInternal2.a("os-uild")).h(eventInternal2.a("manufacturer")).e(eventInternal2.a("fingerprint")).c(eventInternal2.a("country")).g(eventInternal2.a("locale")).i(eventInternal2.a("mcc_mnc")).b(eventInternal2.a("application_build")).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                com.google.android.datatransport.runtime.h hVarD = eventInternal3.d();
                Encoding encodingB = hVarD.b();
                if (encodingB.equals(Encoding.of("proto"))) {
                    aVarProtoBuilder = LogEvent.protoBuilder(hVarD.a());
                } else if (encodingB.equals(Encoding.of("json"))) {
                    aVarProtoBuilder = LogEvent.jsonBuilder(new String(hVarD.a(), Charset.forName(C.UTF8_NAME)));
                } else {
                    Logging.w("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", encodingB);
                }
                aVarProtoBuilder.c(eventInternal3.e()).d(eventInternal3.j()).h(eventInternal3.g("tz-offset")).e(NetworkConnectionInfo.builder().c(NetworkConnectionInfo.NetworkType.forNumber(eventInternal3.f("net-type"))).b(NetworkConnectionInfo.MobileSubtype.forNumber(eventInternal3.f("mobile-subtype"))).a());
                if (eventInternal3.c() != null) {
                    aVarProtoBuilder.b(eventInternal3.c());
                }
                arrayList3.add(aVarProtoBuilder.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return BatchedLogRequest.create(arrayList2);
    }

    private static TelephonyManager h(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    @VisibleForTesting
    static long i() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    static /* synthetic */ a k(a aVar, b bVar) {
        URL url = bVar.b;
        if (url == null) {
            return null;
        }
        Logging.d("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.b);
    }

    private static InputStream l(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL m(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException("Invalid url: " + str, e2);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public EventInternal a(EventInternal eventInternal) {
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        return eventInternal.k().a("sdk-version", Build.VERSION.SDK_INT).c("model", Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", i()).a("net-type", e(activeNetworkInfo)).a("mobile-subtype", d(activeNetworkInfo)).c("country", Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", h(this.c).getSimOperator()).c("application_build", Integer.toString(f(this.c))).d();
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public BackendResponse b(BackendRequest backendRequest) {
        BatchedLogRequest batchedLogRequestG = g(backendRequest);
        URL urlM = this.f2957d;
        if (backendRequest.b() != null) {
            try {
                CCTDestination cCTDestinationFromByteArray = CCTDestination.fromByteArray(backendRequest.b());
                strC = cCTDestinationFromByteArray.c() != null ? cCTDestinationFromByteArray.c() : null;
                if (cCTDestinationFromByteArray.d() != null) {
                    urlM = m(cCTDestinationFromByteArray.d());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.fatalError();
            }
        }
        try {
            b bVar = (b) Retries.retry(5, new a(urlM, batchedLogRequestG, strC), new com.google.android.datatransport.runtime.retries.a() { // from class: com.google.android.datatransport.cct.b
                @Override // com.google.android.datatransport.runtime.retries.a
                public final Object apply(Object obj) {
                    return this.a.c((c.a) obj);
                }
            }, new com.google.android.datatransport.runtime.retries.b() { // from class: com.google.android.datatransport.cct.a
                @Override // com.google.android.datatransport.runtime.retries.b
                public final Object a(Object obj, Object obj2) {
                    return c.k((c.a) obj, (c.b) obj2);
                }
            });
            int i = bVar.a;
            if (i == 200) {
                return BackendResponse.ok(bVar.c);
            }
            if (i < 500 && i != 404) {
                return i == 400 ? BackendResponse.invalidPayload() : BackendResponse.fatalError();
            }
            return BackendResponse.transientError();
        } catch (IOException e2) {
            Logging.e("CctTransportBackend", "Could not make request to the backend", e2);
            return BackendResponse.transientError();
        }
    }
}
