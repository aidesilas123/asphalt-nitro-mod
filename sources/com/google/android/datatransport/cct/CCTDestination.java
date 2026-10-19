package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.g;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class CCTDestination implements g {
    static final String a;
    static final String b;
    private static final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<Encoding> f2953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CCTDestination f2954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CCTDestination f2955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final String f2956g;

    @Nullable
    private final String h;

    static {
        String strA = d.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        a = strA;
        String strA2 = d.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        b = strA2;
        String strA3 = d.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        c = strA3;
        f2953d = Collections.unmodifiableSet(new HashSet(Arrays.asList(Encoding.of("proto"), Encoding.of("json"))));
        f2954e = new CCTDestination(strA, null);
        f2955f = new CCTDestination(strA2, strA3);
    }

    public CCTDestination(@NonNull String str, @Nullable String str2) {
        this.f2956g = str;
        this.h = str2;
    }

    @NonNull
    public static CCTDestination fromByteArray(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName(C.UTF8_NAME));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new CCTDestination(str2, str3);
    }

    @Override // com.google.android.datatransport.runtime.g
    public Set<Encoding> a() {
        return f2953d;
    }

    @Nullable
    public byte[] b() {
        String str = this.h;
        if (str == null && this.f2956g == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f2956g;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName(C.UTF8_NAME));
    }

    @Nullable
    public String c() {
        return this.h;
    }

    @NonNull
    public String d() {
        return this.f2956g;
    }

    @Override // com.google.android.datatransport.runtime.f
    @Nullable
    public byte[] getExtras() {
        return b();
    }

    @Override // com.google.android.datatransport.runtime.f
    @NonNull
    public String getName() {
        return "cct";
    }
}
