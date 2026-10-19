package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcfs extends zzgk implements zzhn {
    private static final Pattern zzb = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference zzc = new AtomicReference();
    private final SSLSocketFactory zzd;
    private final int zze;
    private final int zzf;
    private final String zzg;
    private final zzhm zzh;
    private zzgv zzi;
    private HttpURLConnection zzj;
    private InputStream zzk;
    private boolean zzl;
    private int zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private int zzr;
    private final Set zzs;

    zzcfs(String str, zzhs zzhsVar, int i, int i2, int i3) {
        super(true);
        this.zzd = new zzcfr(this);
        this.zzs = new HashSet();
        zzef.zzc(str);
        this.zzg = str;
        this.zzh = new zzhm();
        this.zze = i;
        this.zzf = i2;
        this.zzr = i3;
        if (zzhsVar != null) {
            zzf(zzhsVar);
        }
    }

    private final void zzn() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                zzcbn.zzh("Unexpected error while disconnecting", e2);
            }
            this.zzj = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077 A[Catch: IOException -> 0x008e, TryCatch #0 {IOException -> 0x008e, blocks: (B:2:0x0000, B:21:0x0056, B:23:0x005e, B:26:0x0069, B:27:0x006f, B:29:0x0077, B:32:0x007e, B:33:0x0083, B:34:0x0084, B:5:0x000b, B:7:0x0016, B:8:0x001a, B:10:0x0022, B:13:0x0038, B:14:0x0042, B:15:0x0047, B:16:0x0048, B:17:0x004d, B:18:0x004e), top: B:39:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084 A[Catch: IOException -> 0x008e, TRY_LEAVE, TryCatch #0 {IOException -> 0x008e, blocks: (B:2:0x0000, B:21:0x0056, B:23:0x005e, B:26:0x0069, B:27:0x006f, B:29:0x0077, B:32:0x007e, B:33:0x0083, B:34:0x0084, B:5:0x000b, B:7:0x0016, B:8:0x001a, B:10:0x0022, B:13:0x0038, B:14:0x0042, B:15:0x0047, B:16:0x0048, B:17:0x004d, B:18:0x004e), top: B:39:0x0000 }] */
    @Override // com.google.android.gms.internal.ads.zzt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(byte[] r9, int r10, int r11) throws com.google.android.gms.internal.ads.zzhj {
        /*
            r8 = this;
            long r0 = r8.zzp     // Catch: java.io.IOException -> L8e
            long r2 = r8.zzn     // Catch: java.io.IOException -> L8e
            r4 = 0
            r5 = -1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 != 0) goto Lb
            goto L53
        Lb:
            java.util.concurrent.atomic.AtomicReference r0 = com.google.android.gms.internal.ads.zzcfs.zzc     // Catch: java.io.IOException -> L8e
            r1 = 0
            java.lang.Object r0 = r0.getAndSet(r1)     // Catch: java.io.IOException -> L8e
            byte[] r0 = (byte[]) r0     // Catch: java.io.IOException -> L8e
            if (r0 != 0) goto L1a
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L8e
        L1a:
            long r1 = r8.zzp     // Catch: java.io.IOException -> L8e
            long r6 = r8.zzn     // Catch: java.io.IOException -> L8e
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 == 0) goto L4e
            int r3 = r0.length     // Catch: java.io.IOException -> L8e
            long r6 = r6 - r1
            long r1 = (long) r3     // Catch: java.io.IOException -> L8e
            long r1 = java.lang.Math.min(r6, r1)     // Catch: java.io.IOException -> L8e
            int r2 = (int) r1     // Catch: java.io.IOException -> L8e
            java.io.InputStream r1 = r8.zzk     // Catch: java.io.IOException -> L8e
            int r1 = r1.read(r0, r4, r2)     // Catch: java.io.IOException -> L8e
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.io.IOException -> L8e
            if (r2 != 0) goto L48
            if (r1 == r5) goto L42
            long r2 = r8.zzp     // Catch: java.io.IOException -> L8e
            long r6 = (long) r1     // Catch: java.io.IOException -> L8e
            long r2 = r2 + r6
            r8.zzp = r2     // Catch: java.io.IOException -> L8e
            r8.zzg(r1)     // Catch: java.io.IOException -> L8e
            goto L1a
        L42:
            java.io.EOFException r9 = new java.io.EOFException     // Catch: java.io.IOException -> L8e
            r9.<init>()     // Catch: java.io.IOException -> L8e
            throw r9     // Catch: java.io.IOException -> L8e
        L48:
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.io.IOException -> L8e
            r9.<init>()     // Catch: java.io.IOException -> L8e
            throw r9     // Catch: java.io.IOException -> L8e
        L4e:
            java.util.concurrent.atomic.AtomicReference r1 = com.google.android.gms.internal.ads.zzcfs.zzc     // Catch: java.io.IOException -> L8e
            r1.set(r0)     // Catch: java.io.IOException -> L8e
        L53:
            if (r11 != 0) goto L56
            goto L8d
        L56:
            long r0 = r8.zzo     // Catch: java.io.IOException -> L8e
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L6f
            long r6 = r8.zzq     // Catch: java.io.IOException -> L8e
            long r0 = r0 - r6
            r6 = 0
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 != 0) goto L69
        L67:
            r4 = -1
            goto L8d
        L69:
            long r6 = (long) r11     // Catch: java.io.IOException -> L8e
            long r0 = java.lang.Math.min(r6, r0)     // Catch: java.io.IOException -> L8e
            int r11 = (int) r0     // Catch: java.io.IOException -> L8e
        L6f:
            java.io.InputStream r0 = r8.zzk     // Catch: java.io.IOException -> L8e
            int r4 = r0.read(r9, r10, r11)     // Catch: java.io.IOException -> L8e
            if (r4 != r5) goto L84
            long r9 = r8.zzo     // Catch: java.io.IOException -> L8e
            int r11 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r11 != 0) goto L7e
            goto L67
        L7e:
            java.io.EOFException r9 = new java.io.EOFException     // Catch: java.io.IOException -> L8e
            r9.<init>()     // Catch: java.io.IOException -> L8e
            throw r9     // Catch: java.io.IOException -> L8e
        L84:
            long r9 = r8.zzq     // Catch: java.io.IOException -> L8e
            long r0 = (long) r4     // Catch: java.io.IOException -> L8e
            long r9 = r9 + r0
            r8.zzq = r9     // Catch: java.io.IOException -> L8e
            r8.zzg(r4)     // Catch: java.io.IOException -> L8e
        L8d:
            return r4
        L8e:
            r9 = move-exception
            com.google.android.gms.internal.ads.zzhj r10 = new com.google.android.gms.internal.ads.zzhj
            com.google.android.gms.internal.ads.zzgv r11 = r8.zzi
            r0 = 2000(0x7d0, float:2.803E-42)
            r1 = 2
            r10.<init>(r9, r11, r0, r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfs.zza(byte[], int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0271 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b7 A[Catch: IOException -> 0x0290, TryCatch #2 {IOException -> 0x0290, blocks: (B:3:0x000e, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:9:0x003b, B:10:0x0053, B:12:0x0059, B:19:0x007d, B:21:0x0097, B:22:0x00a9, B:23:0x00ae, B:25:0x00b7, B:26:0x00be, B:39:0x00e6, B:93:0x0235, B:95:0x0240, B:97:0x0251, B:100:0x025a, B:101:0x0269, B:103:0x0271, B:104:0x0278, B:105:0x0279, B:106:0x028f), top: B:114:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0240 A[Catch: IOException -> 0x0290, TryCatch #2 {IOException -> 0x0290, blocks: (B:3:0x000e, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:9:0x003b, B:10:0x0053, B:12:0x0059, B:19:0x007d, B:21:0x0097, B:22:0x00a9, B:23:0x00ae, B:25:0x00b7, B:26:0x00be, B:39:0x00e6, B:93:0x0235, B:95:0x0240, B:97:0x0251, B:100:0x025a, B:101:0x0269, B:103:0x0271, B:104:0x0278, B:105:0x0279, B:106:0x028f), top: B:114:0x000e }] */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzb(com.google.android.gms.internal.ads.zzgv r21) throws com.google.android.gms.internal.ads.zzhj {
        /*
            Method dump skipped, instruction units count: 685
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfs.zzb(com.google.android.gms.internal.ads.zzgv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e A[Catch: Exception -> 0x0067, all -> 0x008d, TRY_LEAVE, TryCatch #0 {Exception -> 0x0067, blocks: (B:15:0x001f, B:17:0x0027, B:23:0x0036, B:25:0x0046, B:27:0x004e), top: B:45:0x001f }] */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzd() throws com.google.android.gms.internal.ads.zzhj {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r9.zzk     // Catch: java.lang.Throwable -> L8d
            if (r2 == 0) goto L79
            java.net.HttpURLConnection r2 = r9.zzj     // Catch: java.lang.Throwable -> L8d
            long r3 = r9.zzo     // Catch: java.lang.Throwable -> L8d
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L11
            goto L14
        L11:
            long r7 = r9.zzq     // Catch: java.lang.Throwable -> L8d
            long r3 = r3 - r7
        L14:
            int r7 = com.google.android.gms.internal.ads.zzfs.zza     // Catch: java.lang.Throwable -> L8d
            r8 = 19
            if (r7 == r8) goto L1f
            r8 = 20
            if (r7 == r8) goto L1f
            goto L67
        L1f:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L2f
            int r3 = r2.read()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            r4 = -1
            if (r3 == r4) goto L67
            goto L36
        L2f:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 > 0) goto L36
            goto L67
        L36:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            if (r4 != 0) goto L4e
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            if (r3 == 0) goto L67
        L4e:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L8d
        L67:
            java.io.InputStream r2 = r9.zzk     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8d
            r2.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8d
            goto L79
        L6d:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzhj r3 = new com.google.android.gms.internal.ads.zzhj     // Catch: java.lang.Throwable -> L8d
            com.google.android.gms.internal.ads.zzgv r4 = r9.zzi     // Catch: java.lang.Throwable -> L8d
            r5 = 2000(0x7d0, float:2.803E-42)
            r6 = 3
            r3.<init>(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L8d
            throw r3     // Catch: java.lang.Throwable -> L8d
        L79:
            r9.zzk = r0
            r9.zzn()
            boolean r0 = r9.zzl
            if (r0 == 0) goto L87
            r9.zzl = r1
            r9.zzh()
        L87:
            java.util.Set r0 = r9.zzs
            r0.clear()
            return
        L8d:
            r2 = move-exception
            r9.zzk = r0
            r9.zzn()
            boolean r0 = r9.zzl
            if (r0 == 0) goto L9c
            r9.zzl = r1
            r9.zzh()
        L9c:
            java.util.Set r0 = r9.zzs
            r0.clear()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfs.zzd():void");
    }

    @Override // com.google.android.gms.internal.ads.zzgk, com.google.android.gms.internal.ads.zzgq
    @Nullable
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    final void zzm(int i) {
        this.zzr = i;
        for (Socket socket : this.zzs) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzr);
                } catch (SocketException e2) {
                    zzcbn.zzk("Failed to update receive buffer size.", e2);
                }
            }
        }
    }
}
