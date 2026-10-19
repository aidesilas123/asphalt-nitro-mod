package com.mbridge.msdk.foundation.same.net.f;

import android.os.SystemClock;
import com.mbridge.msdk.foundation.same.net.h;
import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.same.net.m;
import java.io.IOException;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: compiled from: BasicNetwork.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements h {
    private static final String a = "a";
    private final com.mbridge.msdk.foundation.same.net.stack.b b;
    private final com.mbridge.msdk.foundation.same.net.c c;

    public a(com.mbridge.msdk.foundation.same.net.stack.b bVar, com.mbridge.msdk.foundation.same.net.c cVar) {
        this.b = bVar;
        this.c = cVar;
    }

    private void a(j<?> jVar, com.mbridge.msdk.foundation.same.net.b.a aVar, long j) throws com.mbridge.msdk.foundation.same.net.b.a {
        if (jVar == null || aVar == null) {
            throw new com.mbridge.msdk.foundation.same.net.b.a(4, null);
        }
        boolean z = false;
        try {
            m mVarN = jVar.n();
            if (mVarN != null) {
                long jF = mVarN.f();
                if (mVarN.a(aVar) && j < jF) {
                    z = true;
                }
            }
        } catch (Exception unused) {
        }
        if (!z) {
            throw aVar;
        }
        this.c.e(jVar);
    }

    @Override // com.mbridge.msdk.foundation.same.net.h
    public final c a(j<?> jVar) throws com.mbridge.msdk.foundation.same.net.b.a {
        String str;
        String str2;
        String str3;
        b bVarPerformRequest;
        byte[] bArrA;
        long jElapsedRealtime;
        Object obj;
        int iA;
        byte[] bArrA2;
        b bVarPerformRequest2;
        int iA2;
        if (jVar == null) {
            return null;
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        m mVarN = jVar.n();
        String str4 = "SocketTimeoutException ex= ";
        String str5 = "perform-discard-cancelled";
        if ((mVarN != null ? mVarN.a() : 0) <= 0) {
            if (jVar.d()) {
                jVar.a("perform-discard-cancelled");
                this.c.b(jVar);
                throw new com.mbridge.msdk.foundation.same.net.b.a(-2, null);
            }
            try {
                try {
                    jVar.g();
                    bVarPerformRequest2 = this.b.performRequest(jVar);
                    try {
                        iA2 = bVarPerformRequest2.a();
                        bArrA2 = jVar.a(bVarPerformRequest2, this.c);
                    } catch (IOException e2) {
                        e = e2;
                        bArrA2 = null;
                    }
                } catch (IOException e3) {
                    e = e3;
                    bArrA2 = null;
                    bVarPerformRequest2 = null;
                }
                try {
                    SystemClock.elapsedRealtime();
                    if (iA2 < 200 || iA2 > 399) {
                        throw new IOException();
                    }
                    return new c(iA2, bArrA2, bVarPerformRequest2.b());
                } catch (IOException e4) {
                    e = e4;
                    SystemClock.elapsedRealtime();
                    String str6 = "IOException ex= " + e.getMessage();
                    if (bVarPerformRequest2 == null) {
                        throw new com.mbridge.msdk.foundation.same.net.b.a(14, null);
                    }
                    int iA3 = bVarPerformRequest2.a();
                    if (bArrA2 == null) {
                        throw new com.mbridge.msdk.foundation.same.net.b.a(15, null);
                    }
                    c cVar = new c(iA3, bArrA2, bVarPerformRequest2.b());
                    if (iA3 >= 400 && iA3 <= 499) {
                        throw new com.mbridge.msdk.foundation.same.net.b.a(6, cVar);
                    }
                    if (iA3 < 500 || iA3 > 599) {
                        throw new com.mbridge.msdk.foundation.same.net.b.a(2, cVar);
                    }
                    throw new com.mbridge.msdk.foundation.same.net.b.a(7, cVar);
                }
            } catch (ConnectException e5) {
                SystemClock.elapsedRealtime();
                String str7 = "ConnectException ex= " + e5.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(12, null);
            } catch (MalformedURLException e6) {
                SystemClock.elapsedRealtime();
                String str8 = "MalformedURLException ex= " + e6.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(4, null);
            } catch (SocketTimeoutException e7) {
                SystemClock.elapsedRealtime();
                String str9 = "SocketTimeoutException ex= " + e7.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(10, null);
            } catch (UnknownHostException e8) {
                SystemClock.elapsedRealtime();
                String str10 = "UnknownHostException ex= " + e8.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(9, null);
            } catch (SSLProtocolException e9) {
                SystemClock.elapsedRealtime();
                String str11 = "SSLProtocolException ex= " + e9.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(11, null);
            } catch (ConnectTimeoutException e10) {
                SystemClock.elapsedRealtime();
                String str12 = "ConnectTimeoutException ex= " + e10.getMessage();
                throw new com.mbridge.msdk.foundation.same.net.b.a(3, null);
            }
        }
        while (!jVar.d()) {
            try {
                try {
                    jVar.g();
                } catch (IOException e11) {
                    e = e11;
                    str2 = str5;
                    bVarPerformRequest = null;
                }
                try {
                    bVarPerformRequest = this.b.performRequest(jVar);
                    try {
                        iA = bVarPerformRequest.a();
                        try {
                            bArrA = jVar.a(bVarPerformRequest, this.c);
                            try {
                                SystemClock.elapsedRealtime();
                            } catch (IOException e12) {
                                e = e12;
                                str2 = str5;
                            }
                        } catch (ConnectException e13) {
                            e = e13;
                            str2 = str5;
                        } catch (MalformedURLException e14) {
                            e = e14;
                            str2 = str5;
                        } catch (SocketTimeoutException e15) {
                            e = e15;
                            str2 = str5;
                        } catch (UnknownHostException e16) {
                            e = e16;
                            str2 = str5;
                        } catch (SSLProtocolException e17) {
                            e = e17;
                            str2 = str5;
                        } catch (ConnectTimeoutException e18) {
                            e = e18;
                            str2 = str5;
                        }
                    } catch (IOException e19) {
                        e = e19;
                        str2 = str5;
                        bArrA = null;
                    }
                } catch (ConnectException e20) {
                    e = e20;
                    str2 = str5;
                    str = str4;
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str13 = "ConnectException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(12, null), jElapsedRealtime3);
                    str4 = str;
                    str5 = str2;
                } catch (MalformedURLException e21) {
                    e = e21;
                    str2 = str5;
                    str = str4;
                    long jElapsedRealtime4 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str14 = "MalformedURLException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(4, null), jElapsedRealtime4);
                    str4 = str;
                    str5 = str2;
                } catch (SocketTimeoutException e22) {
                    e = e22;
                    str2 = str5;
                    str3 = str4;
                    long jElapsedRealtime5 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    StringBuilder sb = new StringBuilder();
                    str4 = str3;
                    sb.append(str4);
                    sb.append(e.getMessage());
                    sb.toString();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(10, null), jElapsedRealtime5);
                    str5 = str2;
                } catch (UnknownHostException e23) {
                    e = e23;
                    str2 = str5;
                    str = str4;
                    long jElapsedRealtime6 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str15 = "UnknownHostException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(9, null), jElapsedRealtime6);
                    str4 = str;
                    str5 = str2;
                } catch (SSLProtocolException e24) {
                    e = e24;
                    str2 = str5;
                    str = str4;
                    long jElapsedRealtime7 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str16 = "SSLProtocolException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(11, null), jElapsedRealtime7);
                    str4 = str;
                    str5 = str2;
                } catch (ConnectTimeoutException e25) {
                    e = e25;
                    str2 = str5;
                    str = str4;
                    long jElapsedRealtime8 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str17 = "ConnectTimeoutException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(3, null), jElapsedRealtime8);
                    str4 = str;
                    str5 = str2;
                }
                try {
                    if (iA < 200 || iA > 399) {
                        throw new IOException();
                    }
                    return new c(iA, bArrA, bVarPerformRequest.b());
                } catch (ConnectException e26) {
                    e = e26;
                    str = str4;
                    long jElapsedRealtime32 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str132 = "ConnectException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(12, null), jElapsedRealtime32);
                    str4 = str;
                    str5 = str2;
                } catch (MalformedURLException e27) {
                    e = e27;
                    str = str4;
                    long jElapsedRealtime42 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str142 = "MalformedURLException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(4, null), jElapsedRealtime42);
                    str4 = str;
                    str5 = str2;
                } catch (SocketTimeoutException e28) {
                    e = e28;
                    str3 = str4;
                    long jElapsedRealtime52 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    StringBuilder sb2 = new StringBuilder();
                    str4 = str3;
                    sb2.append(str4);
                    sb2.append(e.getMessage());
                    sb2.toString();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(10, null), jElapsedRealtime52);
                    str5 = str2;
                } catch (UnknownHostException e29) {
                    e = e29;
                    str = str4;
                    long jElapsedRealtime62 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str152 = "UnknownHostException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(9, null), jElapsedRealtime62);
                    str4 = str;
                    str5 = str2;
                } catch (SSLProtocolException e30) {
                    e = e30;
                    str = str4;
                    long jElapsedRealtime72 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str162 = "SSLProtocolException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(11, null), jElapsedRealtime72);
                    str4 = str;
                    str5 = str2;
                } catch (ConnectTimeoutException e31) {
                    e = e31;
                    str = str4;
                    long jElapsedRealtime82 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    String str172 = "ConnectTimeoutException ex= " + e.getMessage();
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(3, null), jElapsedRealtime82);
                    str4 = str;
                    str5 = str2;
                } catch (IOException e32) {
                    e = e32;
                }
                jElapsedRealtime = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                str = str4;
                String str18 = "IOException ex= " + e.getMessage();
            } catch (ConnectException e33) {
                e = e33;
                str = str4;
                str2 = str5;
            } catch (MalformedURLException e34) {
                e = e34;
                str = str4;
                str2 = str5;
            } catch (SocketTimeoutException e35) {
                e = e35;
                str3 = str4;
                str2 = str5;
            } catch (UnknownHostException e36) {
                e = e36;
                str = str4;
                str2 = str5;
            } catch (SSLProtocolException e37) {
                e = e37;
                str = str4;
                str2 = str5;
            } catch (ConnectTimeoutException e38) {
                e = e38;
                str = str4;
                str2 = str5;
            }
            if (bVarPerformRequest == null) {
                a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(14, null), jElapsedRealtime);
            } else {
                int iA4 = bVarPerformRequest.a();
                if (bArrA != null) {
                    c cVar2 = new c(iA4, bArrA, bVarPerformRequest.b());
                    if (iA4 >= 400 && iA4 <= 499) {
                        a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(6, null), jElapsedRealtime);
                        obj = null;
                    } else {
                        if (iA4 >= 500 && iA4 <= 599) {
                            throw new com.mbridge.msdk.foundation.same.net.b.a(7, cVar2);
                        }
                        obj = null;
                        a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(2, null), jElapsedRealtime);
                    }
                    str4 = str;
                    str5 = str2;
                } else {
                    a(jVar, new com.mbridge.msdk.foundation.same.net.b.a(15, null), jElapsedRealtime);
                }
            }
            str4 = str;
            str5 = str2;
        }
        jVar.a(str5);
        this.c.b(jVar);
        throw new com.mbridge.msdk.foundation.same.net.b.a(-2, null);
    }
}
