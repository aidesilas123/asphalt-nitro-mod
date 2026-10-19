package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhd extends zzgk implements zzhn {
    private final boolean zzb;
    private final int zzc;
    private final int zzd;

    @Nullable
    private final String zze;

    @Nullable
    private final zzhm zzf;
    private final zzhm zzg;

    @Nullable
    private zzgv zzh;

    @Nullable
    private HttpURLConnection zzi;

    @Nullable
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;

    @Deprecated
    public zzhd() {
        this(null, 8000, 8000, false, null, null, false);
    }

    private zzhd(@Nullable String str, int i, int i2, boolean z, @Nullable zzhm zzhmVar, @Nullable zzftz zzftzVar, boolean z2) {
        super(true);
        this.zze = str;
        this.zzc = i;
        this.zzd = i2;
        this.zzb = z;
        this.zzf = zzhmVar;
        this.zzg = new zzhm();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.net.HttpURLConnection zzk(java.net.URL r3, int r4, @androidx.annotation.Nullable byte[] r5, long r6, long r8, boolean r10, boolean r11, java.util.Map r12) throws java.io.IOException {
        /*
            r2 = this;
            java.net.URLConnection r3 = r3.openConnection()
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3
            int r4 = r2.zzc
            r3.setConnectTimeout(r4)
            int r4 = r2.zzd
            r3.setReadTimeout(r4)
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            com.google.android.gms.internal.ads.zzhm r5 = r2.zzf
            java.util.Map r5 = r5.zza()
            r4.putAll(r5)
            com.google.android.gms.internal.ads.zzhm r5 = r2.zzg
            java.util.Map r5 = r5.zza()
            r4.putAll(r5)
            r4.putAll(r12)
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L32:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4e
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r12 = r5.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r5 = r5.getValue()
            java.lang.String r5 = (java.lang.String) r5
            r3.setRequestProperty(r12, r5)
            goto L32
        L4e:
            r4 = 0
            r0 = -1
            int r12 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r12 != 0) goto L5d
            int r6 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r6 != 0) goto L5c
            r4 = 0
            goto L7c
        L5c:
            r6 = r4
        L5d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "bytes="
            r4.append(r5)
            r4.append(r6)
            java.lang.String r5 = "-"
            r4.append(r5)
            int r5 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r5 == 0) goto L78
            long r6 = r6 + r8
            long r6 = r6 + r0
            r4.append(r6)
        L78:
            java.lang.String r4 = r4.toString()
        L7c:
            if (r4 == 0) goto L83
            java.lang.String r5 = "Range"
            r3.setRequestProperty(r5, r4)
        L83:
            java.lang.String r4 = r2.zze
            if (r4 == 0) goto L8c
            java.lang.String r5 = "User-Agent"
            r3.setRequestProperty(r5, r4)
        L8c:
            r4 = 1
            if (r4 == r10) goto L92
            java.lang.String r4 = "identity"
            goto L94
        L92:
            java.lang.String r4 = "gzip"
        L94:
            java.lang.String r5 = "Accept-Encoding"
            r3.setRequestProperty(r5, r4)
            r3.setInstanceFollowRedirects(r11)
            r4 = 0
            r3.setDoOutput(r4)
            int r4 = com.google.android.gms.internal.ads.zzgv.zzj
            java.lang.String r4 = "GET"
            r3.setRequestMethod(r4)
            r3.connect()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhd.zzk(java.net.URL, int, byte[], long, long, boolean, boolean, java.util.Map):java.net.HttpURLConnection");
    }

    private final URL zzl(URL url, @Nullable String str, zzgv zzgvVar) throws zzhj {
        if (str == null) {
            throw new zzhj("Null location redirect", zzgvVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new zzhj("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), zzgvVar, 2001, 1);
            }
            if (this.zzb || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new zzhj("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", zzgvVar, 2001, 1);
        } catch (MalformedURLException e2) {
            throw new zzhj(e2, zzgvVar, 2001, 1);
        }
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                zzez.zzd("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzt
    public final int zza(byte[] bArr, int i, int i2) throws zzhj {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.zzm;
            if (j != -1) {
                long j2 = j - this.zzn;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.zzj;
            int i3 = zzfs.zza;
            int i4 = inputStream.read(bArr, i, i2);
            if (i4 == -1) {
                return -1;
            }
            this.zzn += (long) i4;
            zzg(i4);
            return i4;
        } catch (IOException e2) {
            zzgv zzgvVar = this.zzh;
            int i5 = zzfs.zza;
            throw zzhj.zza(e2, zzgvVar, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzb(com.google.android.gms.internal.ads.zzgv r27) throws com.google.android.gms.internal.ads.zzhj {
        /*
            Method dump skipped, instruction units count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhd.zzb(com.google.android.gms.internal.ads.zzgv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[Catch: Exception -> 0x0069, all -> 0x008a, TRY_LEAVE, TryCatch #0 {Exception -> 0x0069, blocks: (B:15:0x001e, B:17:0x0026, B:23:0x0035, B:25:0x0045, B:27:0x004d, B:29:0x0058), top: B:45:0x001e }] */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzd() throws com.google.android.gms.internal.ads.zzhj {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r10.zzj     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto L7b
            long r3 = r10.zzm     // Catch: java.lang.Throwable -> L8a
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L10
            r3 = r5
            goto L13
        L10:
            long r7 = r10.zzn     // Catch: java.lang.Throwable -> L8a
            long r3 = r3 - r7
        L13:
            java.net.HttpURLConnection r7 = r10.zzi     // Catch: java.lang.Throwable -> L8a
            if (r7 == 0) goto L69
            int r8 = com.google.android.gms.internal.ads.zzfs.zza     // Catch: java.lang.Throwable -> L8a
            r9 = 20
            if (r8 <= r9) goto L1e
            goto L69
        L1e:
            java.io.InputStream r7 = r7.getInputStream()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 != 0) goto L2e
            int r3 = r7.read()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r4 = -1
            if (r3 == r4) goto L69
            goto L35
        L2e:
            r5 = 2048(0x800, double:1.012E-320)
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 > 0) goto L35
            goto L69
        L35:
            java.lang.Class r3 = r7.getClass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r4.equals(r3)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            if (r4 != 0) goto L4d
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r4.equals(r3)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            if (r3 == 0) goto L69
        L4d:
            java.lang.Class r3 = r7.getClass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.util.Objects.requireNonNull(r3)
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
            r3.invoke(r7, r4)     // Catch: java.lang.Exception -> L69 java.lang.Throwable -> L8a
        L69:
            r2.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8a
            goto L7b
        L6d:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzhj r3 = new com.google.android.gms.internal.ads.zzhj     // Catch: java.lang.Throwable -> L8a
            com.google.android.gms.internal.ads.zzgv r4 = r10.zzh     // Catch: java.lang.Throwable -> L8a
            int r5 = com.google.android.gms.internal.ads.zzfs.zza     // Catch: java.lang.Throwable -> L8a
            r5 = 2000(0x7d0, float:2.803E-42)
            r6 = 3
            r3.<init>(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L8a
            throw r3     // Catch: java.lang.Throwable -> L8a
        L7b:
            r10.zzj = r0
            r10.zzm()
            boolean r0 = r10.zzk
            if (r0 == 0) goto L89
            r10.zzk = r1
            r10.zzh()
        L89:
            return
        L8a:
            r2 = move-exception
            r10.zzj = r0
            r10.zzm()
            boolean r0 = r10.zzk
            if (r0 == 0) goto L99
            r10.zzk = r1
            r10.zzh()
        L99:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhd.zzd():void");
    }

    @Override // com.google.android.gms.internal.ads.zzgk, com.google.android.gms.internal.ads.zzgq
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzi;
        return httpURLConnection == null ? zzfwx.zzd() : new zzhb(httpURLConnection.getHeaderFields());
    }
}
