package com.google.common.net;

import com.google.common.base.Preconditions;
import java.net.InetAddress;
import java.text.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public final class HostSpecifier {
    private final String a;

    private HostSpecifier(String str) {
        this.a = str;
    }

    public static HostSpecifier from(String str) throws ParseException {
        try {
            return fromValid(str);
        } catch (IllegalArgumentException e2) {
            String strValueOf = String.valueOf(str);
            ParseException parseException = new ParseException(strValueOf.length() != 0 ? "Invalid host specifier: ".concat(strValueOf) : new String("Invalid host specifier: "), 0);
            parseException.initCause(e2);
            throw parseException;
        }
    }

    public static HostSpecifier fromValid(String str) {
        HostAndPort hostAndPortFromString = HostAndPort.fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.e());
        String strC = hostAndPortFromString.c();
        InetAddress inetAddressForString = null;
        try {
            inetAddressForString = InetAddresses.forString(strC);
        } catch (IllegalArgumentException unused) {
        }
        if (inetAddressForString != null) {
            return new HostSpecifier(InetAddresses.toUriString(inetAddressForString));
        }
        InternetDomainName internetDomainNameFrom = InternetDomainName.from(strC);
        if (internetDomainNameFrom.b()) {
            return new HostSpecifier(internetDomainNameFrom.toString());
        }
        String strValueOf = String.valueOf(strC);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Domain name does not have a recognized public suffix: ".concat(strValueOf) : new String("Domain name does not have a recognized public suffix: "));
    }

    public static boolean isValid(String str) {
        try {
            fromValid(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostSpecifier) {
            return this.a.equals(((HostSpecifier) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
